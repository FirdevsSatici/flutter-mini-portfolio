import 'package:exapp/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin:EdgeInsets.symmetric(horizontal: 210, vertical:30) ,
        // width:100,
        // height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow:[ BoxShadow(
                color: Colors.purple.shade200,
                blurRadius: 25,
                spreadRadius: 2,
                offset: Offset(3, 3)
            )]
        ),
        child:
        Text('fstc',
          style:
          TextStyle(
            color:Colors.purpleAccent.shade200,
            fontSize:25,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>Homescreen()
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
