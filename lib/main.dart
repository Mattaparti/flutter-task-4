import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/first',
      routes: {
        '/first': (context) => MyHomePage(title: 'sunny app'),
        '/second': (context) => SecondScreen()
      },
      home: MyHomePage(title: 'sunny app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "TASK 3",
          style: TextStyle(fontSize: 25.0),
        ),
        // leading: Icon(Icons.home),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
                height: 40.0,
                width: 300.0,
                color: Colors.blue,
                child: Center(
                    child: Text(
                  "Welcome Sunny",
                  style: TextStyle(fontSize: 20.0),
                ))),
            ListTile(
              title: Text("Log in"),
              trailing: Icon(Icons.login),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Log out"),
              trailing: Icon(Icons.logout),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            ListTile(
              title: Text("Help"),
              trailing: Icon(Icons.help),
              onTap: () {
                launch(
                    "https://sentry.io/for/android/?utm_source=google&utm_medium=cpc&utm_campaign=9779875595&utm_content=g&utm_term=%2Bandroid%20%2Bapp%20%2Bdevelopment&gclid=CjwKCAjwuvmHBhAxEiwAWAYj-MBkeLuTKkkOnFu2uWi5mmJ5mi9qZSdQq1ItqXDdfPs5h73M-Q-I8BoCJtoQAvD_BwE");
              },
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            ListTile(
              title: Text("support"),
              trailing: Icon(Icons.support),
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.home,
              size: 200.0,
              color: Colors.red,
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      print("user clicked on submit button");
                    },
                    child: Text(
                      "Click Here",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SecondScreen();
                      }));
                    },
                    child: Text("Submit Button")),
              ],
            ),
            Icon(
              Icons.face,
              size: 200.0,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlB8_fUwZLEg7tNYe5hxxSQeQrz8842k6nYtPbnLHPqtdNOYirI6bnAL7NeBEObtR0zNo&usqp=CAU",
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlB8_fUwZLEg7tNYe5hxxSQeQrz8842k6nYtPbnLHPqtdNOYirI6bnAL7NeBEObtR0zNo&usqp=CAU",
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1cjmEbtPK9A8cmMplLQUQKuQWSvDWvE3BwQ&usqp=CAU",
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 120,
                  color: Colors.blue,
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.access_alarm),
                        Text(
                          "CONTAINER",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Welcome To The Webpage",
                  style: TextStyle(color: Colors.cyan, fontSize: 25.0)),
            ),
            Center(
              child: Text(
                'You have pushed the button this many times:',
              ),
            ),
            Column(
              children: [
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
