import 'package:exapp/zarbasic.dart';
import 'package:exapp/zikirmatik.dart';
import 'package:flutter/material.dart';
import 'package:exapp/zar.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC2C2),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){},
                child: Text('KİŞİSEL PÖRTFÖY UYGULAMAMA HOŞGELDİNİZ....',
                style: TextStyle(
                  color: Colors.black
                ),
                )),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Zikirmatik(),
              ));
            }, child:
            Text('Sayaç uygulamasına git',
              style: TextStyle(
                  color: Colors.pinkAccent),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Zar(),
              ));
            }, child:
            Text('Zar uygulamasına git',
              style: TextStyle(
                color: Colors.pinkAccent
              )),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Zarbasic(),
              ));
            }, child:
            Text('Zar(basic) uygulamasına git',
              style: TextStyle(
                color:Colors.pinkAccent
              ),
            )),
          ],
        )
      )
    );
  }
}
