import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoo/bloc/main_bloc.dart';
import 'package:todoo/bloc/state.dart';
import 'package:todoo/widgets/add_.dart';
import 'package:todoo/widgets/task_item.dart';

class BodyT extends StatefulWidget {
  const BodyT({Key? key}) : super(key: key);

  @override
  _BodyTState createState() => _BodyTState();
}

class _BodyTState extends State<BodyT> {
  _callAddSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) => addTask());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocTask, States>(
      builder: (context, state) {
        if (state is IsEmptyStates) {
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
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    width: 120,
                    height: 165,
                    image: AssetImage('assets/images/img_8.png'),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'No tasks',
                    style: TextStyle(
                        color: Color.fromRGBO(85, 78, 143, 1),
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  _callAddSheet();
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Colors.purple,
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.blueAccent,
                  unselectedItemColor: Colors.grey,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard), label: 'Task'),
                  ]));
        }
        if (state is HaveTaskStates) {
          return Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(206),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  flexibleSpace: Container(
                    height: 238,
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
                            )
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 50, left: 18, right: 18, bottom: 10),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          SizedBox(width: 20),
                                          Text('Hello Brenda!',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                  decoration: TextDecoration.none)),
                                          Text('Today you have 9 tasks',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                  decoration: TextDecoration.none)),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 16),
                                  width: 339,
                                  height: 106,
                                  decoration: BoxDecoration(
                                      color:
                                      const Color.fromRGBO(255, 255, 255, 0.17),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('Today Reminder',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.none)),
                                          Text('Meeting with client',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  decoration: TextDecoration.none)),
                                          Text('13.00 PM',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.normal,
                                                  decoration: TextDecoration.none)),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 60,
                                        height: 90,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const Image(
                                                width: 52,
                                                height: 66,
                                                image:
                                                AssetImage('assets/images/img_4.png')),
                                            GestureDetector(
                                              onTap: () {},
                                              child: const SizedBox(
                                                  width: 8,
                                                  height: 8,
                                                  child: Center(
                                                      child: Icon(Icons.close,
                                                          color: Colors.white,
                                                          size: 12))),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              extendBody: true,
              body: ListView(
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 23, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      color: Color.fromRGBO(139, 135, 179, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              taskItem('task'),
                              taskItem('task'),
                              taskItem('task'),
                              taskItem('task'),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 23, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Color.fromRGBO(139, 135, 179, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              taskItem('task'),
                              taskItem('task'),
                              taskItem('task'),
                              taskItem('task'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  _callAddSheet();
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Colors.purple,
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.blueAccent,
                  unselectedItemColor: Colors.grey,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard), label: 'Task'),
                  ]));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
