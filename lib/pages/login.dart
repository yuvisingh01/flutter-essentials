import 'package:flutter/material.dart';

import 'package:flutter_essentials/pages/homePage.dart';


class LoginPage extends StatefulWidget {

  static const String routeName="/login";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey=GlobalKey<FormState>();

  final _userNameController=new TextEditingController();

  final _passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
            Image.asset(
              'assets/images/coding.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller:_userNameController ,
                            keyboardType: TextInputType.emailAddress,
                            validator:(s){} ,
                            decoration: InputDecoration(
                                hintText: "Enter Email",
                                labelText: "Username"
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller:_passwordController ,
                            keyboardType: TextInputType.text,
                            validator:(s){} ,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),
                          ),
                          ElevatedButton(
                            onPressed:(){
                              // formKey.currentState.validate();
                              // Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
                              Navigator.pushNamed(context, HomePage.routeName);
                            },
                            child: Text(
                              "Login",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
