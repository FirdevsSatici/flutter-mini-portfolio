import 'package:exapp/screen/fifthScreen.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration:BoxDecoration(
                    gradient: RadialGradient(colors: [
                      Colors.pink.shade50,
                      Colors.pink.shade100,
                      Colors.pink.shade200,
                      Colors.pink.shade300,
                      Colors.pink.shade400,
                      Colors.pink.shade400,
                      Colors.pink.shade300,
                      Colors.pink.shade200,
                      Colors.pink.shade100,
                      Colors.pink.shade50,
                    ]
                    ),
                    shape: BoxShape.circle
                )
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>FifthScreen()
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
