// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:easypass/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(EasyPass());
}

class EasyPass extends StatelessWidget {
  EasyPass({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Welcome(),
      ),
    );
  }
}

class DummyPage extends StatefulWidget {
  const DummyPage({super.key});

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  // final userdata = GetStorage();
  @override
  // void initState() {
  //   super.initState();
  //   userdata.writeIfNull('isLoggedIn', false);
  //   Future.delayed(Duration.zero, () async {
  //     checkiflogged();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  // void checkiflogged() {
  //   userdata.read('isLoggedIn')
  //       ? Get.offAll(MyHome())
  //       : Get.offAll(WelcomePage());
  // }
}
