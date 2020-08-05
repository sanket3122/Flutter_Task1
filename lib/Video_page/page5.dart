import 'package:flutter/material.dart';
import 'package:music_vdo/Video_page/page6.dart';
import 'package:music_vdo/Video_page/page7.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
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
                  'Play Video From Assets',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page6()),
                  );
       
                },
              ),
            ),
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
                  'Play Video From Internet',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page7()),
                  );
  
                },
              ),
            ),
            Container(
              width: 100,
              height: 50,
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigate back to first route when tapped.
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
