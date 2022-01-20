import 'package:flutter/material.dart';

import 'home_page.dart';

class IsEmpty extends StatefulWidget {
  const IsEmpty({Key? key}) : super(key: key);
  static const String id = 'isEmpty';

  @override
  _IsEmptyState createState() => _IsEmptyState();
}

class _IsEmptyState extends State<IsEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 132,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color.fromRGBO(129, 199, 245, 1),
                    Color.fromRGBO(56, 103, 213, 1),
                  ]),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 131,
                      height: 106,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(105.5)),
                          color: Color.fromRGBO(255, 255, 255, 0.17)),
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(93),
                              topLeft: Radius.circular(93.5),
                              bottomRight: Radius.circular(93.5)),
                          color: Color.fromRGBO(255, 255, 255, 0.17)),
                    ),
                  ],
                ),
                const SizedBox(height: 80,width: 40),
                Container(
                  margin: const EdgeInsets.only(top: 50,left: 30),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: const [
                          SizedBox(width: 20),
                          Text('Hello Brenda!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  decoration:
                                  TextDecoration.none)),
                          Text('Today you have 9 tasks',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  decoration:
                                  TextDecoration.none)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              width: 120,
              height: 165,
              image: AssetImage('assets/images/img_8.png'),
            ),
            SizedBox(height: 50),
            Text('No tasks',style: TextStyle(color: Color.fromRGBO(85, 78, 143, 1),fontSize: 22,fontWeight: FontWeight.w500),)
          ],
        )
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Task'),
            ])
    );
  }
}
