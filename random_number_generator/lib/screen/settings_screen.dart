import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/Color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: maxNumber.toInt()
                      .toString()
                      .split('')
                      .map(
                        (e) => Image.asset(
                          'asset/img/$e.png',
                          height: 70.0,
                          width: 50.0,
                        ),
                      )
                      .toList(),
                ),
              ),
              Slider(
                  value: maxNumber,
                  min: 10000,
                  max: 1000000,
                  onChanged: (double value) {
                    setState((){
                      maxNumber = value;
                    });
                  }),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: RED_COLOR),
                child: Text('저장!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
