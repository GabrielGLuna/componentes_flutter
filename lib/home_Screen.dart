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
            leading: const Icon(Icons.flag, color: Colors.indigo),
            title: Text('Entradas',
            style: Theme.of(context).textTheme.headlineLarge),
            subtitle: const Text('Diferentes widgets para entradas de flutter'),
            trailing: const Icon(Icons.arrow_circle_right),
           ),
           const Divider(
            color: Colors.black,
           ),
          const ListTile(
            leading: Icon(Icons.list_alt_rounded, color: Colors.green,),
            title: Text('ListView.builder',),
            subtitle: Text('Scroll infinito'),
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