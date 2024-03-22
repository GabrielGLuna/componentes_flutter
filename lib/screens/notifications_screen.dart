import 'package:flutter/material.dart';

import 'package:practica_3/screens/data_screen.dart';
import 'package:practica_3/screens/home_Screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/theme/app_theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _InputsscreenState();
}

//clase que contiene todos los datos que queremos pasar


class _InputsscreenState extends State<NotificationScreen> {
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
        title: const Text('Notifications'),
        
      ),
        body: const Center(),
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