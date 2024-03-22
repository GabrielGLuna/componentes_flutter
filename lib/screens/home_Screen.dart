import 'package:flutter/material.dart';

import 'package:practica_3/screens/data_screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/infinite_list_screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notifications_screen.dart';
import 'package:practica_3/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _InputsscreenState();
}

//clase que contiene todos los datos que queremos pasar


class _InputsscreenState extends State<HomeScreen> {
  TextEditingController nombreController = TextEditingController();
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0; //para los Radios Botton
  bool selectedCheckBoxOption1 = false;
  bool selectedCheckBoxOption2 = false;
  bool selectedCheckBoxOption3 = false;
  List screens =[
    const HomeScreen(),
    DataScreen(inputData: InputData( // Aquí se pasa un objeto InputData al crear DataScreen
    nombre: '',
    gustaFlutter: false,
    sliderValue: 0.0,
    radioOption: 0,
    checkBoxOption1: false,
    checkBoxOption2: false,
    checkBoxOption3: false,
    )),
    const NotificationScreen(),
    const ImagesScreen(),
  ];

  openScreen(int index){
    setState(() {
      MaterialPageRoute ruta= MaterialPageRoute(builder: (context)=> const HomeScreen());
      switch(index){
        case 0:ruta = MaterialPageRoute(builder: (context)=> const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
            builder: (context) => DataScreen(inputData: InputData( // Aquí se proporciona el parámetro inputData
              nombre: '',
              gustaFlutter: false,
              sliderValue: 0.0,
              radioOption: 0,
              checkBoxOption1: false,
              checkBoxOption2: false,
              checkBoxOption3: false,
            )),
          );
          break;
        case 2:ruta = MaterialPageRoute(builder: (context)=> const NotificationScreen());
          break;
        case 3:ruta =MaterialPageRoute(builder: (context)=> const ImagesScreen());
          break;
    }
      selectedIndex = index;
      Navigator.push(
        context, 
        ruta
        );
    });
  }


 @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
        
      ),
        body: ListView(
          children: [
            const Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child:const Icon(Icons.input_sharp),),
              title:Text('Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              subtitle: Text('Mostrar diferentes widgets para entradas de flutter ',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              //trailing: const CircularProgressIndicator(
                //value : 0.7
               // strokeWidth: 2.5,
                //color: Color.fromARGB(255, 28, 238, 28), 
                //backgroundColor: Colors.black,
              //),
              trailing:IconTheme(
               data: AppTheme.lightTheme.iconTheme,
               child: const Icon(Icons.arrow_drop_down_circle,)),
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const Inputsscreen();
                });
                Navigator.push(context, ruta1);
              },
            ),
            const Divider(color: Color.fromARGB(255, 47, 69, 195),),
             ListTile(
              leading:IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.list_sharp,)),
              title:Text('ListViews.builder ',
              style: AppTheme.lightTheme.textTheme.headlineLarge),
              subtitle:  Text('Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing:IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.arrow_drop_down_circle,)),
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListState();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(color: Color.fromARGB(255, 22, 98, 61)),
            ListTile(
              leading:IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.notification_add,)),
              title:Text('Notificaciones ',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              subtitle: Text('crear notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              //trailing:IconTheme(
              //  data: AppTheme.lightTheme.iconTheme,
              // child: const Icon(Icons.arrow_drop_down_circle,)),
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
            const  Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.image),),
                title: Text(
                  'Imagenes',
                  style: AppTheme.lightTheme.textTheme.headlineLarge,
                ),
                trailing: IconTheme(data: AppTheme.lightTheme.iconTheme,child:const Icon(Icons.arrow_circle_right) ),
                onTap: () {
                final ruta4 = MaterialPageRoute(builder: (context){
                  return const ImagesScreen();
                });
                Navigator.push(context, ruta4);
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex : selectedIndex,
        backgroundColor: const Color.fromARGB(255, 16, 255, 255),
        unselectedItemColor: AppTheme.mainColor,
        onTap: (index) => openScreen(index),
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color.fromARGB(221, 2, 0, 0),), label: "Inicio",),
          BottomNavigationBarItem(icon: Icon(Icons.data_object,color: Colors.black87,), label: "data"),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add_outlined, color: Colors.black87,), label: "Noti"),
          BottomNavigationBarItem(icon: Icon(Icons.image_search_outlined, color: Colors.black87,), label: "Imgs"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app, color: Colors.black87,), label: "Salida",)
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.headlineSmall,
      ),
      );
  }
}