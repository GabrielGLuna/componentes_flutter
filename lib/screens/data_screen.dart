import 'package:flutter/material.dart';
import 'package:practica_3/screens/home_Screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/infinite_list_screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notifications_screen.dart';
import 'package:practica_3/theme/app_theme.dart';



class DataScreen extends StatefulWidget {
  final InputData inputData;

  const DataScreen({Key? key, required this.inputData}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  

  int selectedIndex = 0;
  List screens =const [
    HomeScreen(),
    InfiniteListState(),
    NotificationScreen(),
    ImagesScreen(),
  ];

openScreen(int index){
    setState(() {
      MaterialPageRoute ruta= MaterialPageRoute(builder: (context)=> const HomeScreen());
      switch(index){
        case 0:ruta = MaterialPageRoute(builder: (context)=> const HomeScreen());
          break;
        case 1:ruta =MaterialPageRoute(builder: (context)=> const InfiniteListState());
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Datos recibidos:', style: AppTheme.lightTheme.textTheme.headlineLarge,),
            Text(
            widget.inputData.toString(),
            style: AppTheme.lightTheme.textTheme.labelLarge
           ), // Muestra los datos recibidos
          ],
        ),
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
        unselectedLabelStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}