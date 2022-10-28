import 'package:flutter/material.dart';

import 'Screen2Two.dart';

 

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String menuItem = '';
  String myImage = 'images/jj.png';
  String  myName = "Abdurahman mohamud Ahmed ";
  String myClass = 'CA197';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text('Screen One 1'),
          actions: <Widget>[
            
            PopupMenuButton(
               
                onSelected: ( item) {
                  setState(() {
                    menuItem = item.toString();
                    
                  });
                },
                itemBuilder: (BuildContext context) =>[
                      const PopupMenuItem(
                        value: '2016',
                        child: Text('2016 '),
                      ),
                        const PopupMenuItem(
                        value: '2018',
                        child: Text('2018 '),
                      ),
                       const PopupMenuItem(
                        value: '2019',
                        child: Text('2019 '),
                      ),
                    ]),
          ],
        ),
        body: Column(
          children: [
           Container(height: 380, width: 500, child: Image.asset(myImage)),
            Text(
               myName,
              style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.blueAccent ),
            ),
            Text(
              myClass,
              style:  const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.red ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ScreenTwo(
                                image: myImage,
                                name:  myName,
                                classs: myClass,
                              )));
                },
                child: const Text("Goo to Screen 1"))
          ],
        ));
  }
}