import 'package:flutter/material.dart';

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({super.key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> {
  bool sw = false;
  double sliderValue = 2;
  String sugar = 'Normal';
  String type = 'Hot';

  void updateSW(bool? value) {
    setState(() {
      sw = value!;

      if (sw == false) {
        type = 'Hot';
      } else {
        type = 'Cold';
      }
    });
  }

  void updateSlider(double? value) {
    setState(() {
      sliderValue = value!;

      if (sliderValue == 0) {
        sugar = 'None';
      } else if (sliderValue == 1) {
        sugar = 'Less';
      } else {
        sugar = 'Normal';
      }
    });
  }

  void showOrder() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Your order'),
          content: Text('$type coffee with ${sugar.toLowerCase()} sugar'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffee Shop', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Your order', style: TextStyle(fontSize: 24)),
              Row(
                children: [
                  Text('Type'),
                  Spacer(),
                  Text('Hot'),
                  Switch(value: sw, onChanged: updateSW),
                  Text('Cold'),
                ],
              ),
              Row(
                children: [
                  Text('Sugar level'),
                  Spacer(),
                  Slider(
                    min: 0,
                    max: 2,
                    divisions: 2,
                    value: sliderValue,
                    label: sugar.toLowerCase(),
                    onChanged: updateSlider,
                  ),
                  Text(sugar),
                ],
              ),
              SizedBox(height: 14),
              FilledButton(
                onPressed: showOrder,
                child: Text('ORDER', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
