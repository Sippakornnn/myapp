import 'package:flutter/material.dart';

class CoffeeShopExtended extends StatefulWidget {
  const CoffeeShopExtended({super.key});

  @override
  State<CoffeeShopExtended> createState() => _CoffeeShopExtendedState();
}

class _CoffeeShopExtendedState extends State<CoffeeShopExtended> {
  bool sw = false;
  int gValue = 0;
  double sliderValue = 2;
  String status = '';
  String sugar = 'Normal';
  String type = 'Hot';
  String coffee = '';
  String image = '';
  int price = 0;

  @override
  void initState() {
    super.initState();
    sw = false;
    gValue = 0;
    sliderValue = 2;
    coffee = 'Latte';
    price = 35;
    image = 'https://getfresh.co.th/wp-content/uploads/2022/03/Hot-Latte.png';
  }

  void updateCoffee(int? value) {
    setState(() {
      gValue = value!;

      switch (gValue) {
        case 0:
          coffee = 'Latte';
          price = 35;
          break;
        case 1:
          coffee = 'Americano';
          price = 30;
          break;
        case 2:
          coffee = 'Cappuccino';
          price = 40;
          break;
      }

      if (sw) {
        type = 'Cold';
        price += 5;
      } else {
        type = 'Hot';
      }

      switch (gValue) {
        case 0:
          image = sw
              ? 'https://pngmax.com/_next/image?url=https%3A%2F%2Fpng-max.s3.ap-south-1.amazonaws.com%2Flow%2Fe99b0bcc-0b2c-4de7-905f-e417fd9e22a1.png&w=1200&q=75'
              : 'https://getfresh.co.th/wp-content/uploads/2022/03/Hot-Latte.png';
          break;
        case 1:
          image = sw
              ? 'https://static.vecteezy.com/system/resources/thumbnails/043/345/181/small_2x/soda-refreshment-on-transparent-background-png.png'
              : 'https://static.vecteezy.com/system/resources/thumbnails/046/323/121/small/hot-black-coffee-in-a-glass-cup-on-saucer-png.png';
          break;
        case 2:
          image = sw
              ? 'https://getfresh.co.th/wp-content/uploads/2022/03/Iced-Cappuccino.png'
              : 'https://getfresh.co.th/wp-content/uploads/2022/03/Hot-Cappuccino.png';
          break;
      }
    });
  }

  void updateSW(bool? value) {
    setState(() {
      sw = value!;
      type = sw ? 'Cold' : 'Hot';
      updateCoffee(gValue);
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
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(image),
              SizedBox(height: 12),
              Text(
                '$type $coffee with ${sugar.toLowerCase()} sugar. Price = $price baht',
              ),
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
                  status = 'Thank you for your order!';
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
              SizedBox(height: 18),
              Row(
                children: [
                  Text('Coffee', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Radio(value: 0, groupValue: gValue, onChanged: updateCoffee),
                  Text('Latte 35'),
                ],
              ),
              Row(
                children: [
                  Radio(value: 1, groupValue: gValue, onChanged: updateCoffee),
                  Text('Americano 30'),
                ],
              ),
              Row(
                children: [
                  Radio(value: 2, groupValue: gValue, onChanged: updateCoffee),
                  Text('Cappuccino 40'),
                ],
              ),
              Row(
                children: [
                  Text('Type', style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('Hot'),
                  Switch(value: sw, onChanged: updateSW),
                  Text('Cold (+5)'),
                ],
              ),
              Row(
                children: [
                  Text('Sugar', style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('None'),
                  Slider(
                    min: 0,
                    max: 2,
                    divisions: 2,
                    value: sliderValue,
                    label: sugar.toLowerCase(),
                    onChanged: updateSlider,
                  ),
                  Text('Normal'),
                ],
              ),
              SizedBox(height: 14),
              FilledButton(
                onPressed: showOrder,
                child: Text('ORDER', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 18,),
              Text(status, style: TextStyle(color: Colors.red, fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}