import 'package:flutter/material.dart';
class ResPages extends StatefulWidget {
  const ResPages({super.key});

  @override
  State<ResPages> createState() => _ResPagesState();
}

class _ResPagesState extends State<ResPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("UserName")),),
               SizedBox(height: 30),
            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),label: Text("Password")),),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}