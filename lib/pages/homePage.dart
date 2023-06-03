import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_essentials/drawer.dart';
import 'package:http/http.dart'as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  // var myText="Change My Name";
  // TextEditingController _nameController=TextEditingController();

  var url="https://jsonplaceholder.typicode.com/users";
  var data;
  // get http => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async{
    var res = await http.get(Uri.parse(url));
    data=jsonDecode(res.body);
    setState(() {

    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: data!=null?ListView.builder(
        itemBuilder: (context,index){
          return ListTile(
            title: Text(data[index]["name"]),
            subtitle: Text(data[index]['username']),
            trailing: Text(data[index]['website']),
            leading: Text("ID:${data[index]["id"]}"),
          );
        },
        itemCount:data.length,
      ):Center(
        child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(child: ListView()),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // myText=_nameController.text;
          // setState(() {
          //
          // });
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

