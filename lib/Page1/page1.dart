import 'package:flutter/material.dart';
import '../Audio_Page/page2.dart';
import '../Video_page/page5.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: Text('AUDIO & VIDEO PLAYER'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 50,
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                //  padding: const EdgeInsets.all(15.0),
                textColor: Colors.white,
                color: Colors.pink.shade700,
                child: Text(
                  'Play Audio',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                  // Navigate to second route when tapped.
                },
              ),
            ),
            Container(
              width: 200,
              height: 50,
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textColor: Colors.white,
                color: Colors.pink.shade700,
                child: Text(
                  'Play Video',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page5()),
                  );
                  // Navigate to second route when tapped.
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
