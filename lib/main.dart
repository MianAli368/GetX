import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_x/second_view.dart';
import 'package:get_x/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // ThemeMode.system change the them of app according to system settings.
      themeMode: ThemeMode.system,

      // Get Page is used to make pages in the app
      getPages: [
        GetPage(name: "/secondPage", page: () => const SecondScreen())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const View(),
    );
  }
}

