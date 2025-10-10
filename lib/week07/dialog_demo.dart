import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({super.key});

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  String date = '';
  String time = '';
  String status = '';

  void showDate() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year, 10, 1),
      lastDate: DateTime(DateTime.now().year, 10, 31),
    );
    if (dt != null) {
      setState(() {
        date = '${dt.day}/${dt.month}/${dt.year}';
      });
    }
  }

  void showTime() async {
    TimeOfDay? td = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (td != null) {
      setState(() {
        time = '${td.hour}:${td.minute}';
      });
    }
  }

  void showAlert() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                width: 120,
                'https://static.wikia.nocookie.net/roblox/images/3/35/Manface.png/revision/latest/thumbnail/width/360/height/450?cb=20211031043454',
              ),
              Text('All files will be deleted!'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  status = 'All files deleted!';
                });
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FilledButton(onPressed: showDate, child: Text('Select Date')),
            Text(date),
            FilledButton(onPressed: showTime, child: Text('Select Time')),
            Text(time),
            FilledButton(
              onPressed: showAlert,
              style: FilledButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Delete'),
            ),
            Text(status),
          ],
        ),
      ),
    );
  }
}
