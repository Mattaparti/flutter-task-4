import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Facebook_logo.png"),
            Icon(
              Icons.login,
              size: 50.0,
              color: Colors.green,
            ),
            Text(
              "Thank you for submitting",
              style: TextStyle(fontSize: 50.0),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //  return MyHomePage(
                //    title: 'Second screen',
                //  );
                // }));
                Navigator.pop(context);
              },
              child: Icon(
                Icons.logout,
                size: 50.0,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
