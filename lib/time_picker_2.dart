import 'package:flutter/material.dart';

class TimePickerWidget2 extends StatefulWidget {
  const TimePickerWidget2({
    super.key,
  });

  @override
  State<TimePickerWidget2> createState() => _TimePickerWidget2State();
}

class _TimePickerWidget2State extends State<TimePickerWidget2> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 00);
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(),
                style: const TextStyle(fontSize: 30)),
            MaterialButton(
              onPressed: _showTimePicker,
              color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'PICK TIME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
