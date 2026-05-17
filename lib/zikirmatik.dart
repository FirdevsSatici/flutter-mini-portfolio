import 'package:flutter/material.dart';

class Zikirmatik extends StatefulWidget {
  const Zikirmatik({super.key});


  @override
  State<Zikirmatik> createState() => _ZikirmatikState();
}

class _ZikirmatikState extends State<Zikirmatik> {
  int count = 0;

  void increaseCount(){
    count++;
    setState((){});
  }
  void resetCount(){
    count=0;
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFFC2C2),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children:[
            Stack(
                children:[
              Image.asset('assets/pictures/sayac.png',width:400),
              Positioned(
                top: 62,
                left: 170,
                child: Text(count.toString(),
                  style: TextStyle(fontSize: 100,color: Colors.white),
                ),
              ),
                  Positioned(
                    top: 334,
                    left:49,
                    child: GestureDetector(
                      onTap: ()=> increaseCount(),
                      child: Container(
                        width: 198,
                        height:198,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 272,
                    left:284,
                    child: GestureDetector(
                      onTap: () => resetCount(),
                      child: Container(
                        width:85,
                        height:85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  )
            ]
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child:
            Text('Anasayfaya geri dön',
            style: TextStyle(
              color: Colors.pinkAccent
            ))
            )


          ]
        )
      )
    );
  }
}
