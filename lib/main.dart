import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqNIOff5AuP0YdnbId7smDM0mrE4_Etc-_dA&usqp=CAU")),
              Text(
                "Sign In",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    labelText: "Name or Email Address"),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    labelText: "Enter Password"),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.indigo),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 150, vertical: 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(50))))),
                onPressed: () {},
                child: Text("Login"),
              ),
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child: Text("Create An Account",
                      style: TextStyle(fontSize: 15))),
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child:
                      Text("Reset Password", style: TextStyle(fontSize: 15))),
            ],
          ),
        ),
      ),
    );
  }
}
