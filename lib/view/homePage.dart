import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:todo_app/components/titleWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final newTodoController = useTextEditingController();
    return Scaffold(
      body: Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  children: [
                    TitleWidget(),
                    TextField(
                      controller: newTodoController,
                      decoration:
                          InputDecoration(labelText: 'What needs to be done?'),
                      onSubmitted: (value) {},
                    ),
                    SizedBox(height: 20),
                    Column(children: [])
                  ]))),
    );
  }
}
