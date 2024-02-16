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
          children: [
           ListTile(
            leading: const Icon(Icons.sports_soccer_rounded, color: Colors.indigo,),
            title: Text('Pumas va a ser campeon',
            style:  Theme.of(context).textTheme.headlineLarge),
            subtitle: const Text('Dejenme soñar 🥹'),
            trailing: const Icon(Icons.arrow_circle_right),
           ),
           const Divider(
            color: Colors.black,
           ),
          const ListTile(
            leading: Icon(Icons.sports_baseball, color: Colors.green,),
            title: Text('Pericos va a ser campeon'),
            subtitle: Text('Ya lo son de hecho'),
            trailing: Icon(Icons.arrow_circle_right),
           ),
          const Divider(
            color: Colors.black,
           ),
           const ListTile(
            leading: Icon(Icons.sports_score_sharp, color: Colors.red,),
            title: Text('Sergio Perez va a ser campeon'),
            subtitle: Text('RUN RUN'),
            trailing: Icon(Icons.arrow_circle_right),
           ),

          ],
        ),
      );
  }
}