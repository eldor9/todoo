import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoo/bloc/main_bloc.dart';
import 'package:todoo/services/task_repository.dart';
import 'package:todoo/widgets/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final  repository = TaskRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocTask>(
        create: (context) => BlocTask(repository),
        child: BodyT());
  }
}
