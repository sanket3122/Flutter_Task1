import 'package:flutter/material.dart';
import 'page3.dart';
import 'page4.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 220,
              height: 50,
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                color: Colors.pink.shade700,
                child: Text(
                  'Play Audio From Assets',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocalAudio()),
                  );
           
                },
              ),
            ),
            Container(
              width: 220,
              height: 50,
              margin: const EdgeInsets.all(20.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                color: Colors.pink.shade700,
                child: Text(
                  'Play Audio From Internet',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page4()),
                  );
      
                },
              ),
            ),
            Container(
              width: 100,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                 
                },
                textColor: Colors.black,
                color: Colors.grey.shade400,
                child: Text('Go back!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
