import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route Two',
      children: [
        Text(
          'arguments : ${arguments}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/three',
              arguments: 13579,
            );
          },
          child: Text('PushNamed'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/three',
            );
          },
          child: Text('PushReplacementNamed'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => RouteThreeScreen(),
              ),
              (route) => route.settings.name == '/', // if false then remove route stacks
            );
          },
          child: Text('PushAndRemoveUntil'),
        )
      ],
    );
  }
}
