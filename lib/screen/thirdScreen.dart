import 'package:flutter/material.dart';
import 'package:exapp/screen/fourthScreen.dart';

class ThirdScreen extends StatelessWidget { //widgetin ilk harfi büyük olur
  const ThirdScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
      decoration: BoxDecoration(
        // color: Colors.black,
          borderRadius: BorderRadius.circular(5),
          border: BoxBorder.all(color: Colors.white70, width: 5),
          gradient: LinearGradient(colors:[
            Colors.teal.shade50,
            Colors.teal.shade100,
            Colors.teal.shade200,
            Colors.cyan.shade200,
            Colors.blue.shade300,
            Colors.blue.shade200,
            Colors.blue.shade100
          ],
              begin: Alignment.topLeft, end: Alignment.bottomRight )
      ),
      alignment: Alignment.center,
      width: 100,
      height: 100,
      // color: Colors.greenAccent, box decarotaiondaki color ile burada color aynı anda olamaz
      child:
      Text('Mrb',
        style:
        TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 25),),
    ),


                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>FourthScreen()
                  ),
                  );
                },
                    child: Text('diğer ekran'))
              ]
    )
    )
    );


  }
}
