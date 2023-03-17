import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController controllerTest =
      TextEditingController(text: "Username");
  String? passwordValue;
  String? usernameValue;
  bool _obscureText = true;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    usernameValue = value;
                  });
                },
                decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.cyan)),
              ),
              padding: EdgeInsets.only(right: 30, left: 30),
            ),
            Container(
              child: TextField(
                onChanged: (String valuePassword) {
                  setState(() {
                    passwordValue = valuePassword;
                  });
                },
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.cyan),
                ),
              ),
              padding: EdgeInsets.only(right: 30, left: 30),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 100),
                // color: buttonColor,
                child: Text(
                  "Đăng Nhập",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Tên đăng nhập và mật khẩu là:"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Username: "),
                ),
                Container(
                  child: Text(
                    usernameValue ?? "",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Password: "),
                ),
                Container(
                  child: Text(
                    passwordValue ?? "",
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
