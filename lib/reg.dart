import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            TextField(decoration: InputDecoration
            (border: OutlineInputBorder(),label: Text("Fullname")),),
            SizedBox(height: 25),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("Emali")),),
               SizedBox(height: 25),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("Password")),),
               SizedBox(height: 25),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("Confirmpassword")),),
               SizedBox(height: 25),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("PhoneNO")),),
               SizedBox(height: 50),
            SizedBox(height: 40,
            width: 250,
              child: ElevatedButton(onPressed: (){
                       
               }, child: Text("Create an account")),
            ),
           
          
          ],
        ),
      ),
    );
  }
}