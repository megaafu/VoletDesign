import 'package:flutter/material.dart';
import 'package:voletdesign/src/pages/home.dart';
import 'package:voletdesign/src/theme.dart';
import 'package:voletdesign/src/util.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme.light(),
      home: const Home(),
    );
  }
}
