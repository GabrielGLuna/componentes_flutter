import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('Componentes de flutter',
         style: Theme.of(context).textTheme.headlineLarge),
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
           ListTile(
            leading: const Icon(Icons.list_alt_rounded, color: Colors.green,),
            title: Text('ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge),
            subtitle: const Text('Scroll infinito'),
            trailing: const Icon(Icons.arrow_circle_right),
           ),
          const Divider(
            color: Colors.black,
           ),
           ListTile(
            leading: const Icon(Icons.sports_score_sharp, color: Colors.red,),
            title: Text('Sergio Perez va a ser campeon',
             style: Theme.of(context).textTheme.headlineLarge),
            subtitle: const Text('RUN RUN'),
            trailing: const Icon(Icons.arrow_circle_right),
           ),

          ],
        ),
      );
  }
}