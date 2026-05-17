import 'dart:math';
import 'package:flutter/material.dart';

class Zar extends StatefulWidget {
  const Zar({super.key});

  @override
  State<Zar> createState() => _ZarState();
}

class _ZarState extends State<Zar> {


  var intValue=1;

  void randomZar(){
    intValue = Random().nextInt(6);
    intValue++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC2C2),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
                    GestureDetector(
                      onTap: () => randomZar(),
                      child: Container(
                        width: 600,
                        height: 600,
                        decoration: BoxDecoration(
                            shape:BoxShape.rectangle,
                            image: DecorationImage(image: AssetImage('assets/pictures/zar-$intValue.png'),

                            )
                        ),
                      ),
                    ),
            ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            }, child:
            Text('Anasayfaya geri dön',
            style: TextStyle(
              color: Colors.pinkAccent
            ),))
              ],
            )
      )
    );
  }

}
