import 'package:flutter/material.dart';
import 'package:flutter_day19_namedroute/modelDart.dart';

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
  //quantity inc/dec
  int i=1;
  ///
  /// like option effect
  int e = 0;

  @override
  Widget build(BuildContext context) {
    ModelDart m1 = ModalRoute.of(context)!.settings.arguments as ModelDart;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: c3,
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          },
              child: Icon(Icons.arrow_back, color: Colors.black, size: 30)),
          centerTitle: true,
          title: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            child: Image.asset(
              "assets/images/logo1.png",
              fit: BoxFit.cover,
              height: 30,
              width: 30,
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.all(10),child: Text("iOS",style: TextStyle(color: c2,fontSize: 20))),
          ],
        ),
        backgroundColor: c3,
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 600,
                width: 450,
                decoration: BoxDecoration(
                    //color: Colors.yellow,
                    ),
                child: Image.asset("${m1.iPath}"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.favorite),
                            backgroundColor: c3),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(padding: EdgeInsets.only(left: 20,right: 20),child: Text("${m1.iDetail}")),
                    SizedBox(
                      height: 10,
                    ),
                    //
                    //quantity
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 5, right: 5),
                        child: Text(
                          "Quantity",
                          style: TextStyle(letterSpacing: 1, fontSize: 18),
                        ),
                      ),
                    ),
                    //
                    //increment/decreament
                    //background container
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 5),
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: c4,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap : (){
                                 setState(() {
                                   if(i>1)
                                   {
                                     i--;
                                   }
                                 });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        style: BorderStyle.solid,
                                        color: c3,
                                        width: 1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Text("${i}"),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if(i<9)
                                    {
                                      i++;
                                    }
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: c3,
                                    border: Border.all(
                                        style: BorderStyle.solid,
                                        color: c3,
                                        width: 1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.add),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: c4,
                              ),
                              child: Text("${m1.iPrice}",
                                  style: TextStyle(color: c1, fontSize: 22)),
                            ),
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: c3,
                                ),
                                child: Text("Add to cart",
                                    style: TextStyle(fontSize: 18, color: c1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
