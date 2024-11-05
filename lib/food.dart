import 'package:flutter/material.dart';
class DetailsExample extends StatefulWidget {
  const DetailsExample({super.key});

  @override
  State<DetailsExample> createState() => _DetailsExampleState();
}

class _DetailsExampleState extends State<DetailsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: 540,
              width: double.infinity,
                     decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60)
            )
                     ),
                     child: Padding(padding: const EdgeInsets.symmetric(
                      horizontal: 15,vertical: 15
                     ),
                     child:  Column(
                       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                        shape: BoxShape.circle,image: DecorationImage(image:
                        AssetImage("assets/images/pizza.jpeg"),fit: BoxFit.cover),
                                        ),
                                       ),
                                       
                    ),
                    
                  ),
            
                  
                ],
              ),
    SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Avocada Salad",style: TextStyle(fontSize: 15,color: Colors.black),),
          ),
      
          Row(
            children: [
              Text("15.00",style: TextStyle(color: Colors.green,fontSize: 15),),
              Spacer(),
              SizedBox(
                height: 40,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),color: Colors.green
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("-",style: TextStyle(fontSize:20,color:  Colors.white,),),
                         SizedBox(width: 5,),
                        Text("1",style: TextStyle(fontSize: 20,color: Colors.white),),
                        SizedBox(width: 5,),
                        Text("+",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                  ),
                ))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.star,color: Colors.yellow,),
              Text("4.5"),
              Spacer(),
               Icon(Icons.add_location,color: Colors.red,),
              Text("100 Kcal"),
              Spacer(),
               Icon(Icons.punch_clock_rounded,color: Colors.yellow,),
              Text("20min"),
              
            ],
          ),
          SizedBox(height: 20),
          Text("About Food",style: TextStyle(fontSize: 20,color: Colors.black),),
          Text("Lorem ipsum dotor sit amet,consectetur\nadipiscing elit,Et cursus tortor metus\nsuspendisse sed...Read More,"),
      SizedBox(height: 40),
      SizedBox(
        height: 50,
        width: 320,
        child: ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
            )),
         child: Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 15),)),
      )
            ],
          ),
          ),
          
                     
            ),
          ),
      
         
        ],
      ),
    );
  }
}