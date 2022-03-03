import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                      'https://instagram.fgig4-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p640x640/233783147_1433711726999278_8034442138237863999_n.jpg?_nc_ht=instagram.fgig4-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=20dJzTCw964AX_yudzt&edm=AP_V10EBAAAA&ccb=7-4&oh=00_AT-bYAs0SNh8d7LAIso0j98fv-_51D58GVmm55eqTqnq5A&oe=61E5F346&_nc_sid=4f375e'),
                ),
                accountName: (Text('Bernardo')),
                accountEmail: Text('Bernardo_quintanilha@hotmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('inicio'),
              subtitle: Text('tela de inicio'),
              onTap: () {
                print("home");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('finalizar sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("counter"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(scrollDirection: Axis.vertical,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("counter $counter"),
              Container(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                ],
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
