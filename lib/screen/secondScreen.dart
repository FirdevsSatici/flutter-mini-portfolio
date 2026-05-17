import 'package:exapp/screen/thirdScreen.dart';
import 'package:exapp/screen/homeScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Container(
          width: 200,
          height:200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all( color:Colors.black,width: 10),

          ),
          child:
          Image.asset('assets/pictures/meem1.jpg',height:200,width:200),
        ),
            TextButton(onPressed:(){
              Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>ThirdScreen()
              ),
              );
            },
                child:
                const Text('Diğer Ekran'))
        ]
        )
      )
    );
  }
}
