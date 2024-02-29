import 'package:flutter/material.dart';
import 'package:practica_3/screens/infinite_list_screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notifications_screen.dart';
import 'package:practica_3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Color.fromARGB(255, 149, 36, 184),
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppTheme.backColor,),
              label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.data_array_rounded, color: AppTheme.backColor,),
                label: "Datos",
                ),
            BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app, color: AppTheme.backColor,),
              label: "Salir",)
          ],
          unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
      );
  }
}