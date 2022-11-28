import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/Color.dart';

class SettingsScreen extends StatefulWidget {
  final double maxNumber;

  const SettingsScreen({required this.maxNumber, Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;

  @override
  void initState() {
    super.initState();
    maxNumber = widget.maxNumber;
  }

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
              _Body(maxNumber: maxNumber),
              _Footer(
                maxNumber: maxNumber,
                onChanged: onSliderChanged,
                onPressed: onSave,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSliderChanged(double value) {
    setState(() {
      maxNumber = value;
    });
  }

  void onSave() {
    Navigator.of(context).pop(
      maxNumber.toInt(),
    );
  }
}

class _Body extends StatelessWidget {
  final double maxNumber;

  const _Body({
    required this.maxNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: maxNumber
            .toInt()
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
    );
  }
}

class _Footer extends StatelessWidget {
  final double maxNumber;
  final ValueChanged<double>? onChanged;
  final VoidCallback onPressed;

  const _Footer({
    required this.maxNumber,
    required this.onChanged,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Slider(
          value: maxNumber,
          min: 1000,
          max: 100000,
          onChanged: onChanged,
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: RED_COLOR,
          ),
          child: Text('저장!'),
        )
      ],
    );
  }
}
