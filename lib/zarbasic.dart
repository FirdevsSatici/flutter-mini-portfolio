import 'package:flutter/material.dart';
import 'dart:math';

class Zarbasic extends StatefulWidget {
  const Zarbasic({super.key});

  @override
  State<Zarbasic> createState() => _ZarbasicState();
}

class _ZarbasicState extends State<Zarbasic> {

  var intValue=1;

  void randomZar() {
    intValue = Random().nextInt(6);
    intValue++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              GestureDetector(
                onTap: randomZar,
                child: Container(
                  width: 600,
                  height:600,
                  decoration:BoxDecoration(
                    shape:BoxShape.rectangle,
                    image:DecorationImage(image: AssetImage('assets/pictures/zar_$intValue.png'))
                  )
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child:
              Text('Anasayfaya geri dön',
              style: TextStyle(
                color: Colors.pinkAccent
              ),))

          ]
        )
      )
    );
  }
}
