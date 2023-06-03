import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, required ListView child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
// DrawerHeader(
//   child: Text('Hi I am a drawer.'),
//   decoration: BoxDecoration(color: Colors.purple),
// ),
            UserAccountsDrawerHeader(
              accountName: Text("Yuvraj Singh"),
              accountEmail: Text('dev.yuvi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/coolme.jpg'),
                ),
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Yuvraj Singh"),
                subtitle: Text('Developer'),
                trailing: Icon(Icons.edit),
                onTap: (){},
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text('dev.yuvi@gmail.com'),
                trailing: Icon(Icons.edit),
            ),
        ],
      ),
    );
  }
}

