import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 16),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    debugPrint('icon button');
                  },
                  icon: Icon(Icons.volume_up, color: Colors.red),
                ),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.android, color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(side: BorderSide(color: Colors.green)),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.android, color: Colors.green),
                  ),
                ),
              ],
            ),
            OverflowBar(
              children: [
                OutlinedButton(onPressed: () {}, child: Text("OutlineButton")),
                SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text("OutlineButton"),
                ),
              ],
            ),
            Wrap(
              children: [
                TextButton(onPressed: () {}, child: Text("TextButton")),
                SizedBox(width: 50),
                ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),
                SizedBox(width: 50),
                FilledButton(onPressed: () {}, child: Text("FilledButton")),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(backgroundColor: Colors.red),
                  child: Text("FilledButton"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
