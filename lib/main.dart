import 'dart:developer';
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:ecommerce/persistance/preferences.dart';
import 'package:ecommerce/persistance/shared_preference_helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'UI/SplashScreen/splash_screen.dart';
import 'constant/ColorConstant.dart';
import 'constant/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> islogin() async {
    return SharedPreferences.getInstance().then((val) {
      return getIt<SharedPreferenceHelper>().getTokenCollected;
    });
  }

  String? getToken;

  getDeviceId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      getToken = sharedPreferences.getString(Preferences.userId);
    });
  }

  @override
  void initState() {
    super.initState();
    getDeviceId();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorConstant.bgColor,
        fontFamily: "Montserrat",
      ),

      debugShowCheckedModeBanner: false,
      // home: const SplashScreen(),
      home: /*getToken != null ? BottomNavigationScreen() :*/ SplashScreen(),
      // home: FutureBuilder(
      //   future: islogin(),
      //   builder: (ctx, AsyncSnapshot snapshot) {
      //     log("Future snap....");
      //
      //     if (snapshot.hasData) {
      //       return (snapshot.data)
      //           ? const BottomNavigationScreen()
      //           /*  : getIt<SharedPreferenceHelper>().logInFirstTime
      //               ? const OptionScreen()
      //               :*/
      //           : const SplashScreen();
      //     } else {
      //       WidgetsBinding.instance.addPostFrameCallback((_) {
      //         setState(() {});
      //         // Add Your Code here.
      //       });
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
