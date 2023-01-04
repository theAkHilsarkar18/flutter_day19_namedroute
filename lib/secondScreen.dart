import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {



  //
  //
  //Color code
  Color c1 = Color(0Xff362706);
  Color c2 = Colors.black;
  Color c3 = Color(0xffACB992);
  Color c4 = Color(0XffE9E5D6);

  //
  //
  // Icon camera effect
  double borderEffect1 = 10;
  double borderEffect2 = 15;
  double bordeWidth1 = 1;
  double borderWidth2 = 2;

  //



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: c3,
          leading: Container(
              alignment: Alignment.center,
              height: 40,
              width: 40,
              child: Image.asset(
                "assets/images/logo1.png",
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              )),
          centerTitle: true,
          title: Text("apple",
              style: TextStyle(
                  color: Colors.black, letterSpacing: 4, fontSize: 23,fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 10),
              child: Icon(Icons.arrow_back,color: Colors.black,)
            )
          ],
        ),
        backgroundColor: c3,
        body: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15),
              //   border: Border.all(
              //     color: Colors.grey,style: BorderStyle.solid,width: 1,
              //   ),
              // ),
              child: Icon(Icons.arrow_back,size: 40,color: Color(0xff362706) ),
            ),
          ],
        ),
      ),
    );
  }
}
