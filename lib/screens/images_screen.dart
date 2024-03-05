import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
              width: 350,
              child:  Image(
                image: AssetImage('assets/imgs/darth.jpg'),
                ),
                      ),
            ],
          ),
              imageCard(),
        
      
      ],
      )
    );
  }
  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: 
      const SizedBox(
              width: 200,
              child: Image(image: AssetImage('assets/imgs/eilipuma.jpg'))),
    );
  }
}