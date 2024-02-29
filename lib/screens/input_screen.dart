import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';


class Inputsscreen extends StatefulWidget {
  const Inputsscreen({super.key});
  

  @override
  State<Inputsscreen> createState() => _InputsscreenState();
}

class _InputsscreenState extends State<Inputsscreen> {
  bool valueSwitch = false;
  double valueSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entradas')),
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            Text('Inputs/Entradas',style:AppTheme.lightTheme.textTheme.headlineLarge),
            entradaTexto(),
            entradaSwitch(),
            entradasSlider(),
            const ElevatedButton(
             onPressed: null,
             child: Text('Guardar',), 
             )
        ],
      ),
      )
    );
  }

  TextField entradaTexto() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Ecribe tu nombre',
              labelStyle: AppTheme.lightTheme.textTheme.headlineLarge
            ),
          );
  }
  Row entradaSwitch(){
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value:valueSwitch,
          onChanged: (value){
            setState(() {
            valueSwitch = value;
            print('estado del switch: $valueSwitch');
            });
          }, 
        )

      ],
    );
  }

  Column entradasSlider(){
    return Column(
      children: [
      Text('¿Que tanto te gusta flutter?',
      style: AppTheme.lightTheme.textTheme.headlineLarge,),
      Slider(min:0.0, 
      max:10.0,
      value: valueSlider,
      activeColor: AppTheme.mainColor,
      thumbColor: AppTheme.accent,
      divisions: 10,
      label: '${valueSlider.round()}',
       onChanged:(value){
        setState(() {
          valueSlider = value;
          print(valueSlider);
        });
      })
      
      ],
    );
  }
}