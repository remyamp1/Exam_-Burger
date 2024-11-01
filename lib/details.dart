import 'package:exam_project/database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Details extends StatelessWidget {

final String imagepath;
final String name;
 final String price;
Details({required this.imagepath,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Center(
        child: Text("Details"), ),
        actions: [
          Icon(Icons.favorite,color: Colors.red,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: 
              Image(image:AssetImage(imagepath))),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(name,style: TextStyle(fontSize: 15,color: Colors.black),),
                  Spacer(),
                  Text(price,style: TextStyle(color: Colors.red),)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                ],
              ),
              SizedBox(height: 20,),
Text('Ingredients',style: TextStyle(fontSize: 10,color: Colors.black),),
SizedBox(height: 10),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children:List.generate(4, (index){
    return  Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(Database.MyList1[index]['image']),
          ),
          SizedBox(width: 10),
        ],
      );
  })),
),

SizedBox(height: 15),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text('Description',style: TextStyle(fontSize: 15,color: Colors.black),),
),
SizedBox(height: 10),
Text('This beef burger uses 100% quality beef with\nsliced tomatones,cucumbers,vegtables and\noions...',),
SizedBox(width: 2,),
Text('Read More',style: TextStyle(color: Colors.red),),
SizedBox(height: 15),
Row(
  
  children: [
    Container(
      height: 30,
      width: 50,
      
    ),
    ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
     child: Center(child: Text('Add To Cart'),))
  ],
)
          
                
                
              
           ] 
          ),
        ),
      ),
    );
  }
}