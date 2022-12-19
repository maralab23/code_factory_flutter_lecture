import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({
    this.number,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route One',
      children: [
        Text(
          'arguments : ${this.number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            print(Navigator.canPop(context));
          },
          child: Text('Can Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          child: Text('Maybe Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: ((context) => RouteTwoScreen()),
              settings: RouteSettings(arguments: 789),
            ));
          },
          child: Text('Push'),
        )
      ],
    );
  }
}
