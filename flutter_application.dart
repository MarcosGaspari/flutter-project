import 'package:flutter/material.dart';
import 'package:project_flutter/pages/login_page.dart';

class FlutterAplication extends StatelessWidget {
  const FlutterAplication({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      
      home: LoginPage(),
    );
  }
}