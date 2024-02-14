import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const[
           ListTile(
            leading: Icon(Icons.sports_soccer_rounded, color: Colors.indigo,),
            title: Text('Pumas va a ser campeon',
            style: TextStyle(color: Colors.blueAccent),),
            subtitle: Text('Dejenme soñar 🥹'),
            trailing: Icon(Icons.arrow_circle_right),
           ),
           Divider(
            color: Colors.black,
           ),
           ListTile(
            leading: Icon(Icons.sports_baseball, color: Colors.green,),
            title: Text('Pericos va a ser campeon',
            style: TextStyle(color: Colors.greenAccent),),
            subtitle: Text('Ya lo son de hecho'),
            trailing: Icon(Icons.arrow_circle_right),
           ),
           Divider(
            color: Colors.black,
           ),
           ListTile(
            leading: Icon(Icons.sports_score_sharp, color: Colors.red,),
            title: Text('Sergio Perez va a ser campeon',
            style: TextStyle(color: Colors.orange),),
            subtitle: Text('RUN RUN'),
            trailing: Icon(Icons.arrow_circle_right),
           ),

          ],
        ),
      );
  }
}