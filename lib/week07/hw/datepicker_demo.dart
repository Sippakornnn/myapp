import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  String start = '';
  String end = '';
  DateTime? fromDate;
  DateTime? toDate;

  @override
  void initState() {
    super.initState();
    fromDate = DateTime(DateTime.now().year, 9, 30);
    toDate = DateTime(DateTime.now().year, 9, 30);

    start = '${fromDate!.day}/${fromDate!.month}/${fromDate!.year}';
    end = '${toDate!.day}/${toDate!.month}/${toDate!.year}';
  }

  void showFrom() async {
    DateTime? from = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year, 9, 30),
      lastDate: DateTime(DateTime.now().year, 10, 31),
    );
    if (from != null) {
      setState(() {
        fromDate = from;
        start = '${from.day}/${from.month}/${from.year}';

        if (toDate == null || toDate!.isBefore(from)) {
          toDate = from;
          end = '${from.day}/${from.month}/${from.year}';
        }
      });
    }
  }

  void showTo() async {
    DateTime? to = await showDatePicker(
      context: context,
      firstDate: fromDate!,
      lastDate: DateTime(DateTime.now().year, 10, 31),
    );
    if (to != null) {
      setState(() {
        toDate = to;
        end = '${to.day}/${to.month}/${to.year}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DatePicker Demo', style: TextStyle(fontSize: 20)),
              SizedBox(height: 16),
              Row(
                children: [
                  FilledButton.icon(
                    onPressed: showFrom,
                    label: Text('From'),
                    icon: Icon(Icons.calendar_today),
                  ),
                  SizedBox(width: 12),
                  Text(start),
                ],
              ),
              Row(
                children: [
                  FilledButton.icon(
                    onPressed: showTo,
                    label: Text('To'),
                    icon: Icon(Icons.calendar_today),
                  ),
                  SizedBox(width: 12),
                  Text(end),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
