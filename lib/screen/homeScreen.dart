import 'package:flutter/material.dart';

import 'thirdScreen.dart';
import 'secondScreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttonlar',
          style:
          TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,// eğer bunu kaldırırsak hepsi birbirine yaklaşır.
          children: [
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent),
              child:
              const Text('BANA TIKLA',
                style:TextStyle(
                    fontWeight:FontWeight.bold,
                    color:Colors.black
                ),
              ),
            ),
            IconButton(onPressed: (){},
                style: IconButton.styleFrom(backgroundColor: Colors.black),
                icon: Icon(Icons.ac_unit_outlined, color: Colors.white,size:50)),
            GridView.count(
                shrinkWrap: true, // GridView'un ekranda sadece kendi boyutu kadar yer kaplamasını sağlar
                crossAxisCount: 3, // Yan yana kaç sütun olacağını söyleriz (Biz 3 istedik)
                crossAxisSpacing: 10, // Kutuların yataydaki boşluğu
                mainAxisSpacing: 10
            ),
            SizedBox(
              width: 100,
              height:100,
              child: Card(
                color: Colors.limeAccent,
                elevation: 100,
                surfaceTintColor: Colors.cyanAccent,
                shadowColor: Colors.black,
                child: Align(
                    alignment: Alignment.center,
                    child: Text('mrbb')
                ),
              ),
            ),


            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(),
              ));
            },
                child:
                const Text('ikinci ekrana git'))
          ],
        ),
      ),
    );
  }
}
