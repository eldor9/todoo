import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoo/pages/home_page.dart';
import 'package:todoo/pages/is_empty.dart';
void  main() async{
  await Hive.initFlutter();
  await Hive.openBox('TaskDB');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        HomePage.id: (context)=> const HomePage(),
        IsEmpty.id: (context) => const IsEmpty(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 140),
            const Image(
              width: 179,
              height: 195,
              image: AssetImage('assets/images/img.png'),
            ),
            const SizedBox(height: 70),
            const Text(
              'Reminders made sample',
              style: TextStyle(color: Color.fromRGBO(85, 78, 143, 1), fontSize: 22,fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 70),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, IsEmpty.id);
              },
              child:   Container(
                width: 258,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.lightGreenAccent.shade400,
                          Colors.green.shade500
                        ]
                    )
                ),
                child: const Center(
                  child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
