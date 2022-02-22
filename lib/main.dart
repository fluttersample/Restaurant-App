
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resaurant_ui/Core/Helpers/styles.dart';
import 'package:resaurant_ui/Presentation/Bindings/home_binding.dart';
import 'package:resaurant_ui/Presentation/Views/home_view.dart';
import 'package:resaurant_ui/gen/colors.gen.dart';
import 'package:resaurant_ui/injection_container.dart';

void main()
{
  init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Helvetica',
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Styles.scaffoldBackground
      ),
      defaultTransition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      initialBinding: HomeBinding(),
      home: const HomeView(),
    );
  }
}














