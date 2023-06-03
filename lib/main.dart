import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch:Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText="Change My Name";
  TextEditingController _nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                   'assets/images/coding.jpg',
                  ),
                  SizedBox(
                      height: 20
                  ),
                  Text(
                    myText,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(

                        ),
                        hintText: "Enter your text",
                        labelText: "Name",
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Container(
      //     padding: const EdgeInsets.all(8),
      //     width: 100,
      //     height: 100,
      //     alignment: Alignment.center,
      //     // clipBehavior: Clip.antiAlias,
      //     decoration: BoxDecoration(
      //       color: Colors.red,
      //       shape: BoxShape.rectangle,
      //       borderRadius: BorderRadius.circular(10),
      //       gradient: LinearGradient(colors: [
      //             Colors.pink,
      //             Colors.yellow,
      //           ]),
      //       boxShadow:[
      //         BoxShadow(
      //           color: Colors.grey,
      //           // blurRadius: 10,
      //         ),
      //       ]),
      //     child: Text(
      //       'I am a box',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //           fontSize: 20,
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText=_nameController.text;
          setState(() {

          });
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
