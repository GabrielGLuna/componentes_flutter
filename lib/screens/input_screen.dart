import 'package:flutter/material.dart';
import 'package:practica_3/screens/home_Screen.dart';
import 'package:practica_3/theme/app_theme.dart';


class Inputsscreen extends StatefulWidget {
  const Inputsscreen({super.key});
  

  @override
  State<Inputsscreen> createState() => _InputsscreenState();
}

class _InputsscreenState extends State<Inputsscreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0;
  int selectedRadioOption = 0; //Para los Radiobutton
  int selectedIndex = 0;
  
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
            entradasRadio(),
            Text('Que usas para correr tus apps de Flutter? ', style: AppTheme.lightTheme.textTheme.headlineLarge,),
            entradasCheck(),
            const ElevatedButton(
             onPressed: null,
             child: Text('Guardar',), 
             )
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Color.fromARGB(255, 149, 36, 184),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppTheme.backColor,),
              label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.data_array_rounded, color: AppTheme.backColor,),
                label: "Datos",
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app, color: AppTheme.backColor,),
              label: "Salir",)
          ],
          unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
          ),

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
 Column entradasRadio(){
    return Column(
      children: <Widget>[
        Text('¿Que prefieres usar para desarrollo movil?', style: AppTheme.lightTheme.textTheme.headlineLarge,),
        ListTile(
          title: Text('Kotlin', style: AppTheme.lightTheme.textTheme.headlineMedium,),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1, 
              groupValue:selectedRadioOption ,
              onChanged: (value){
              setState(() {
                selectedRadioOption = value!;
              });
            },),
          ),
        ),
        ListTile(
          title: Text('flutter', style: AppTheme.lightTheme.textTheme.headlineMedium,),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2, 
              groupValue:selectedRadioOption ,
              onChanged: (value){
              setState(() {
                selectedRadioOption = value!;
                print('Opcion Seleccionada : $selectedRadioOption');
              });
            },),
          ),
        ),

      ],
    );
 }
 
  entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
       Text('Navegador', style: AppTheme.lightTheme.textTheme.bodySmall,),
       Checkbox(value: isChecked1, onChanged: (value){
        setState(() {
          isChecked1 = value!;
          print('Valor de Navegador: $isChecked1');
        });
       }),
       Text('Emulador', style: AppTheme.lightTheme.textTheme.bodySmall,),
        Checkbox(value: isChecked2, onChanged: (value){
        setState(() {
          isChecked2 = value!;
          print('Valor de Emulador: $isChecked2');
        });
       }),
       Text('Smartphone', style: AppTheme.lightTheme.textTheme.bodySmall,),
        Checkbox(value: isChecked3, onChanged: (value){
        setState(() {
          isChecked3 = value!;
          print('Valor de Smartphone: $isChecked3');
        });
       }),
      ],
    );
  }}