import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('Componentes de flutter',
         style: AppTheme.lightTheme.textTheme.headlineLarge),
      ),
        body: ListView(
          children: [
           ListTile(
            leading: const  Icon(Icons.flag, color: AppTheme.coloricon),
            title: Text('Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge),
            subtitle: Text('Diferentes widgets para entradas de flutter', style: AppTheme.lightTheme.textTheme.bodySmall,),
            trailing: const Icon(Icons.arrow_circle_right),
           ),
           const Divider(
            color: Colors.black,
           ),
           ListTile(
            leading: const Icon(Icons.list_alt_rounded, color: AppTheme.coloricon),
            title: Text('ListView.builder',
            style: Theme.of(context).textTheme.headlineLarge),
            subtitle:  Text('Scroll infinito', style: AppTheme.lightTheme.textTheme.bodySmall,),
            trailing: const Icon(Icons.arrow_circle_right),
           ),
          const Divider(
            color: Colors.black,
           ),
           ListTile(
            leading: const Icon(Icons.sports_score_sharp, color: Colors.red,),
            title: Text('Sergio Perez va a ser campeon',
             style: Theme.of(context).textTheme.headlineLarge),
            subtitle:  Text('RUN RUN', style: Theme.of(context).textTheme.bodySmall,),
            trailing: const Icon(Icons.arrow_circle_right),
           ),

          ],
        ),
      );
  }
}