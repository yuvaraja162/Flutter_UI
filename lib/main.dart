import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Color.fromARGB(255, 39, 149, 239),
          height: 300,
        ),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0),
          child: Column(
            children: [
              Container(
                //height: 64,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("\$22,650.51",
                            style: TextStyle(
                              fontSize: 32,
                              fontFamily: "OpenSans",
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Account Value",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        // Divider(
                        //   height: 10.0,
                        //   color: Colors.white,
                        // )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // height: ,
                          height: 30.0,
                          //width: 5,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "0.97 %",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_up_outlined,
                                color: Colors.white38,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(

                              // color: Color.fromARGB(255, 56, 99, 134),
                              color: Color.fromARGB(255, 1, 85, 154),
                              borderRadius: BorderRadius.circular(20)),
                        ),

                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Since last Purchase",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "OpenSans",
                            color: Colors.white,
                          ),
                        ),
                        // Divider(
                        //   color: Colors.black,
                        // )
                        SizedBox(
                          height: 20.0,
                        )
                      ],
                    ),
                  ],
                ),

                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                //height: 64,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cash Balance",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "OpenSans",
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "\$384.87",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: "OpenSans",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),

                        // Divider(
                        //   height: 10.0,
                        //   color: Colors.white,
                        // )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Metal Holdings",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "OpenSans",
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "\$22,265.64",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "OpenSans",
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Divider(
                        //   color: Colors.black,
                        // )
                        SizedBox(
                          height: 25.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //height: 100,
                //color: Colors.white,
                //height: 64,
                child: Column(
                  children: [
                    // Icon(Icons.gite_outlined)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // padding: EdgeInsets.all(),

                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 236, 229, 169),
                                  borderRadius: BorderRadius.circular(50)),

                              // onPressed: () {},
                              child: Icon(
                                Icons.card_giftcard,
                                size: 20,
                                color: Color.fromARGB(255, 215, 202, 82),
                              ),
                            ),
                            // Icon(
                            //   Icons.card_giftcard,
                            //   size: 40,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gold",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: "OpenSans",
                                    color: Color.fromARGB(255, 215, 202, 82),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "11.050 oz",
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "OpenSans",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )

                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$22,265.64",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "0.97 %",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Color.fromARGB(255, 194, 193, 193),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Metal Price",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$1,999.00",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),

                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Change",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "-0.4 %",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Color.fromARGB(255, 134, 35, 28),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                            SizedBox(
                              height: 10.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  // border: Border(
                  //   cenetr: BorderSide(color: Color.fromARGB(255, 237, 235, 235)),
                  // ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //height: 100,
                //color: Colors.white,
                //height: 64,
                child: Column(
                  children: [
                    // Icon(Icons.gite_outlined)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // padding: EdgeInsets.all(),

                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 207, 207, 204),
                                  borderRadius: BorderRadius.circular(50)),

                              // onPressed: () {},
                              child: Icon(
                                Icons.card_giftcard,
                                size: 20,
                                color: Color.fromARGB(255, 84, 84, 83),
                              ),
                            ),
                            // Icon(
                            //   Icons.card_giftcard,
                            //   size: 40,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Silver",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: "OpenSans",
                                    color: Color.fromARGB(255, 175, 175, 175),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "0.000 oz",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "OpenSans",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$0.00",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "0.0 %",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Color.fromARGB(255, 194, 193, 193),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Metal Price",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$26.20",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),

                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Change",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "-0.15 %",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Color.fromARGB(255, 134, 35, 28),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                            SizedBox(
                              height: 10.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  // border: Border(
                  //   cenetr: BorderSide(color: Color.fromARGB(255, 237, 235, 235)),
                  // ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //height: 100,
                //color: Colors.white,
                //height: 64,
                child: Column(
                  children: [
                    // Icon(Icons.gite_outlined)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // padding: EdgeInsets.all(),

                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 239, 193, 232),
                                  borderRadius: BorderRadius.circular(50)),

                              // onPressed: () {},
                              child: Icon(
                                Icons.card_giftcard,
                                size: 20,
                                color: Color.fromARGB(255, 212, 81, 179),
                              ),
                            ),
                            // Icon(
                            //   Icons.card_giftcard,
                            //   size: 40,
                            // ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Platinum",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: "OpenSans",
                                    color: Color.fromARGB(255, 228, 126, 228),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  "0.000 oz",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "OpenSans",
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$0.00",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "0.0 %",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Divider(
                      color: Color.fromARGB(255, 194, 193, 193),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Metal Price",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "\$1,102.30",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),

                            // Divider(
                            //   height: 10.0,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Change",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "OpenSans",
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "-0.08 %",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "OpenSans",
                                color: Color.fromARGB(255, 134, 35, 28),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.black,
                            // )
                            SizedBox(
                              height: 15.0,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  // border: Border(
                  //   cenetr: BorderSide(color: Color.fromARGB(255, 237, 235, 235)),
                  // ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),
                  //height: 64,
                  // color: Colors.white,
                  child: Text(
                    "Do More With OneGold",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: "OpenSans",
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w600,
                    ),
                  ))
            ],
          ),
        ))
      ]),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              label: "Home", icon: const Icon(Icons.home)),
          new BottomNavigationBarItem(
              label: 'Portfolio',
              icon: const Icon(Icons.auto_awesome_mosaic_rounded)),
          // auto_awesome_mosaic_rounded
          new BottomNavigationBarItem(
              label: '',
              icon: const Icon(
                Icons.article_outlined,
                color: Colors.blue,
              )),
          new BottomNavigationBarItem(
              label: 'Prices', icon: const Icon(Icons.price_change)),
          new BottomNavigationBarItem(
              label: 'Settings', icon: const Icon(Icons.settings)),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }

  int _selectedIndex = 0; //New

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
