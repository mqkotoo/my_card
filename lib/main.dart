import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/makoto.jpeg"),
              ),
              Text(
                "Murakami",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("FLUTTER DEVELOPER",
              style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 18.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0 ,
                child: Divider(
                  color: Colors.blueGrey.shade100,
                ),
              ),
              // 一枚目の電話番号カード　⏬
              Card(
                // padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                // color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  title: Text("+81 123 456 789",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              // 二枚目のメールアドレスカード　⏬
              Card(
                // padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                // color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text("mqkoto@email.com",
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

