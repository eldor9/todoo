import 'package:flutter/material.dart';

Widget taskItem( String task) {
  return Container(
    margin: const EdgeInsets.only(top: 14),
    padding: const EdgeInsets.only(top: 10),
    width: 339,
    height: 55.21,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.05),
          blurRadius: 2,
          offset: Offset(2, 4), // Shadow position
        ),
      ],
      color: const Color.fromRGBO(255, 255, 255, 1),
    ),
    child: Row(
      children: [
        Container(
          width: 4,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4), topLeft: Radius.circular(4)),
              color: Color.fromRGBO(30, 209, 2, 1)),
        ),
        const SizedBox(width: 11),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(top: 4),
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 2)),
          ),
        ),
        const SizedBox(width: 11),
        Container(
          width: 62,
          child: Text('10:00',
              style: const TextStyle(
                  color: Color.fromRGBO(198, 198, 200, 1),
                  fontSize: 11,
                  fontWeight: FontWeight.w400)),
        ),
        Container(
          width: 185,
          child: const Text('Go jogging with Christin',
              style: TextStyle(
                  color: Color.fromRGBO(85, 78, 143, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 18,
              color: Color.fromRGBO(217, 217, 217, 1),
            )),
      ],
    ),
  );
}
