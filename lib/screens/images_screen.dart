import 'package:flutter/material.dart';
import 'package:practica_3/screens/data_screen.dart';
import 'package:practica_3/screens/home_Screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notifications_screen.dart';
import 'package:practica_3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}
// ignore: unused_element
class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 0; // Movido aquí para ser un campo de clase

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Imagenes',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      ),
      body: ListView(children: <Widget>[
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
              width: 150,
              child:  Image(
                image: AssetImage('assets/imgs/darth.jpg'),
                ),
                      ),
            ],
          ),
              SizedBox(
                width: 350,
                child: imageCard()),
              imageWeb(),
        
      
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
  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(10),
      elevation: 10,
      child: 
      SizedBox(
              width: 100,
              
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child:
                Column(
                children: [
                  const Image(image: AssetImage('assets/imgs/eilipuma.jpg')),
                  Container(
                    width: 100,
                    height: 20,
                    padding:const  EdgeInsets.all(10),
                    child:  Text('Pumaaas', style: AppTheme.lightTheme.textTheme.headlineSmall),
                  )
                ],
              ))
              ),
    );
  }
  
  Stack imageWeb() {
    return  Stack(
      children: <Widget>[
      const Center(
        child: CircularProgressIndicator(),
        
      
      ),
      Center(
        child: SizedBox(
          height: 350,
          width: 300,
          child:
           FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
           image: 'data:image/jpeg;base64,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')),
      ),
      //Image.network
    ]);
  }
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
  
}