import 'package:calculator/full_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  String name;
  HomePage({required this.name, super.key}) {
    print("constructor on the Home page");
  }

  @override
  State<HomePage> createState() {
    print("createState on the home page");
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late String fullName;
  @override
  void initState() {
    // TODO: implement initState
    print("initState on the home page");
    fullName = "Boonsong 1";
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        print("setState on the home page");
        fullName = "Boonsong 2";
      });
    });

    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        fullName = "";
      });
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("didChangeDependencies on the Home page");
    var s = ScrollController();
    s.addListener(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("Build on the home page");
    return Scaffold(
      backgroundColor: Colors.white,
      body: fullName.isEmpty
          ? Container()
          : FullNameWidget(
              fullName: fullName,
            ),
    );
  }
}
