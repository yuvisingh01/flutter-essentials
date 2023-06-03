import 'package:flutter/material.dart';
import 'package:flutter_essentials/drawer.dart';


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
            child: nameCard(myText: myText, nameController: _nameController),
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
      drawer: MyDrawer(child: ListView()),
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

class nameCard extends StatelessWidget {
  const nameCard({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
