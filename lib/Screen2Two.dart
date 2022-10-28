import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenTwo extends StatelessWidget {
  String image;
  String name;
  String classs;

  ScreenTwo({
    required this.name,
    required this.image,
    required this.classs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:const Text('Screen two '),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(height: 360, width: 500, child: Image.asset(image)),
            Text(name, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.blueAccent ),),
            Text(classs, style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.red ),),
            const SizedBox(height: 15,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                
                 
                  ),
                
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back to Screen 1"))
          ],
        ));
  }
}