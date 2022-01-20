import 'package:flutter/material.dart';
import 'package:todoo/services/hive_database.dart';

Widget addTask() {
  final taskNameController = TextEditingController();

  _addTaskButton(String data) {
    HiveD.setTask(taskNameController.text.toString().trim());
    print(HiveD.getTasksList());
  }

  return Container(
      height: 720,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
      child: Stack(
        children: [
          Transform.translate(
              offset: const Offset(0, 26.5),
              child: Container(
                padding: const EdgeInsets.all(26),
                height: 691,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Add new task',
                        style: TextStyle(
                            color: Color.fromRGBO(64, 64, 64, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: taskNameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //@task_types
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.yellow),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Personal',
                                style: TextStyle(
                                    color: Color.fromRGBO(142, 142, 142, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.green),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Work',
                                style: TextStyle(
                                    color: Color.fromRGBO(142, 142, 142, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.purple),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Study',
                                style: TextStyle(
                                    color: Color.fromRGBO(142, 142, 142, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blueAccent.shade700),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Shopping',
                                style: TextStyle(
                                    color: Color.fromRGBO(142, 142, 142, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.deepOrangeAccent),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Meeting',
                                style: TextStyle(
                                    color: Color.fromRGBO(142, 142, 142, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 340,
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'Choose date',
                          style: TextStyle(
                              color: Color.fromRGBO(64, 64, 64, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 40),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.navigate_next_outlined),
                        )
                      ],
                    ),
                    const SizedBox(height: 70),
                    Container(
                      height: 53,
                      width: 323,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(126, 182, 255, 1),
                                Color.fromRGBO(95, 135, 231, 1),
                              ])),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            _addTaskButton(taskNameController.text.toString().trim());
                          },
                          child: const Text(
                            'Add task',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          //close_icon
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Container(
                width: 53,
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.5),
                    color: Colors.purple),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ],
      ));
}
