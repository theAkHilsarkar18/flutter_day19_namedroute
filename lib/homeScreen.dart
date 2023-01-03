import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  color: Colors.black, letterSpacing: 4, fontSize: 23)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 10),
              child: Text("iOS",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        backgroundColor: c3,
        body: Column(
          children: [
            //Text("Explore Product",style: TextStyle(color: c1,fontSize: 24,letterSpacing: 2),),
            //
            //
            // Textfield for explore product
            //row1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //
                //
                // container for search box
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: c4,
                  ),
                  child: TextField(
                    cursorColor: c2,
                    style: TextStyle(color: c2, letterSpacing: 2),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText: "search",
                      hintStyle:
                          TextStyle(color: Colors.grey, letterSpacing: 2),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            width: 2,
                            color: c2,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: c2, style: BorderStyle.solid, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: c2, style: BorderStyle.solid, width: 2),
                      ),
                    ),
                  ),
                ),
                //
                //
                //Container of camera icon
                InkWell(
                  onTap: () {
                    setState(() {
                      borderEffect1 = borderEffect2;
                      bordeWidth1 = borderWidth2;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: c4,
                      borderRadius: BorderRadius.circular(borderEffect1),
                      border: Border.all(
                          color: c2,
                          width: bordeWidth1,
                          style: BorderStyle.solid),
                    ),
                    child: Icon(Icons.camera_alt_outlined, color: c2, size: 30),
                  ),
                ),
              ],
            ),
            //
            //
            //
            //Product list / card list
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 20,
                    ),
                    Text("Cards",
                        style: TextStyle(
                            color: c2,
                            letterSpacing: 2,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("List",
                        style: TextStyle(
                            color: c2, letterSpacing: 2, fontSize: 15)),
                  ],
                ),

                // product list horizontal scroll
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 380,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: c4,
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/iphone13.png",
                                  fit: BoxFit.cover, height: 250, width: 200),
                              Text("\$ 120.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 2),
                                    child: Text(
                                      "iPhone13",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                  )),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, bottom: 2),
                                  child: Image.asset(
                                      "assets/images/rating4.png",
                                      fit: BoxFit.fill,
                                      height: 12,
                                      width: 75),
                                ),
                              ),

                              Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 2),
                                        child: Text(
                                          "See all details",
                                        ),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                             top: 10, bottom: 2),
                                        child: Icon(Icons.navigate_next),
                                      )),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 380,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: c4,
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/a4.png",
                                  fit: BoxFit.cover, height: 250, width: 200),
                              Text("\$ 30.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 2),
                                    child: Text(
                                      "AirPods",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                  )),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, bottom: 2),
                                  child: Image.asset(
                                      "assets/images/rating4.png",
                                      fit: BoxFit.fill,
                                      height: 12,
                                      width: 75),
                                ),
                              ),

                              Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 2),
                                        child: Text(
                                          "See all details",
                                        ),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 2),
                                        child: Icon(Icons.navigate_next),
                                      )),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 380,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: c4,
                          ),
                          child: Column(
                            children: [
                              Image.asset("assets/images/watch3.png",
                                  fit: BoxFit.cover, height: 250, width: 200),
                              Text("\$ 60.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 2),
                                    child: Text(
                                      "iWatch",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                  )),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, bottom: 2),
                                  child: Image.asset(
                                      "assets/images/rating4.png",
                                      fit: BoxFit.fill,
                                      height: 12,
                                      width: 75),
                                ),
                              ),

                              Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 2),
                                        child: Text(
                                          "See all details",
                                        ),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 2),
                                        child: Icon(Icons.navigate_next),
                                      )),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          height: 380,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: c4,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              Image.asset("assets/images/ipad4.png",
                                  fit: BoxFit.cover, height: 190, width: 200),
                              SizedBox(height: 20,),
                              Text("\$ 60.00",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 2),
                                    child: Text(
                                      "iWatch",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                  )),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, bottom: 2),
                                  child: Image.asset(
                                      "assets/images/rating4.png",
                                      fit: BoxFit.fill,
                                      height: 12,
                                      width: 75),
                                ),
                              ),

                              Row(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10, bottom: 2),
                                        child: Text(
                                          "See all details",
                                        ),
                                      )),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 2),
                                        child: Icon(Icons.navigate_next),
                                      )),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
