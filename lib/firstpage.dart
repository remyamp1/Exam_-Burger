import 'package:exam_project/database.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delicious food ready to \n delivered for you',
            style: TextStyle(fontSize: 20,color: Colors.black),),
            SizedBox(height: 10),
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text('Search')
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                 child: Text('Burger')),
                 SizedBox(width: 6),
                 ElevatedButton(onPressed: (){}, child: Text('Pizza')),
                 SizedBox(width: 6),
                 ElevatedButton(onPressed: (){}, child: Text('Soups')),
              ],
            ),
            SizedBox(height: 10),
            Text('Most Popular',style: TextStyle(fontSize: 15),),
             SizedBox(height: 20),
            Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 2),
            itemCount: 4,
             itemBuilder: (context,index){
        return Container(
          height: 400,
          width: double.infinity,
          color: const Color.fromARGB(255, 219, 218, 218),
          child: Column(
            children: [
        Container(
          height: 50,
          width: 50,
         color: Colors.red,
        ),
        SizedBox(height: 10,),
        Text(Database.MyList[index]['name']),
         Text(Database.MyList[index]['name1']),
         SizedBox(height: 5),
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(Database.MyList[index]['price']),
                Spacer(),
                Icon(Icons.add,color: Colors.red,)
              ],
            ),
          ),
            ],
          ),
          
        );
            }))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined)),
        BottomNavigationBarItem(icon: Icon(Icons.notifications)),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
      ],
      )
    );
  }
}