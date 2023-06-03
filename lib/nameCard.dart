import 'package:flutter/material.dart';



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