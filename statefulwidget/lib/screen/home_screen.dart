import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key) {
    print("HomeScreen.Constructor 실행");
  }

  @override
  State<HomeScreen> createState() {
    print("HomeScreen.createState 실행");
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  void initState() {
    print("_HomeScreenState.initState 실행");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("_HomeScreenState.didChangeDependencies 실행");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("_HomeScreenState.deactivate 실행");
    super.deactivate();
  }

  @override
  void dispose() {
    print("_HomeScreenState.dispose 실행");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print("_HomeScreenState.didUpdateWidget 실행");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("_HomeScreenState.build 실행");
    return GestureDetector(
      onTap: () {
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child: Text(number.toString()),
        ),
      ),
    );
  }
}
