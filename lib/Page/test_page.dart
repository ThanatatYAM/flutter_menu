import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var _text = "Hello";

  Widget buildItem(IconData icon, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          _text = Random().nextInt(100).toString();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            Text(
              label,
              style: GoogleFonts.kanit(color: Colors.blue, fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextBackground(String text, Color color) {
    return Container(
      color: color,
      padding: EdgeInsets.all(8.0),
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Application")),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _text = "";
                  });
                },
                child: Text("Clear")),
            Expanded(
                child: Center(
                    child:
                        Text(_text, style: GoogleFonts.kanit(fontSize: 50)))),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildItem(Icons.phone, "Call"),
                buildItem(Icons.route, "Route"),
                buildItem(Icons.share, "Share"),
                buildItem(Icons.person, "Profile"),

                //buildTextBackground("aaa", Colors.blue),
                // buildTextBackground("bbb", Colors.red),
                // buildTextBackground("ccc", Colors.green),
                // buildTextBackground("ddd", Colors.purple),
                // ElevatedButton(onPressed: onPressed, child: child)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
