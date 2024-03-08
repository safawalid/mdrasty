import 'package:flutter/material.dart';
import 'main.dart';

class sign_in extends StatefulWidget {
  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  // final width = MediaQuery.of(context).size.width;
  var x = true;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.blue.shade800),
        title: Text(
          "sign in",
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "enter yuor user name",
                    labelStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a username';
                  }
                  // if (value.replaceAll(RegExp(r"\s+"), "").length < 6) {
                  //   return 'Please enter a correcte email';
                  // }
                  return null;
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "enter yuor email",
                    labelStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a email';
                  }
                  if (value.replaceAll(RegExp(r"\s+"), "").length < 6) {
                    return 'Please enter a correcte email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: x,
                decoration: InputDecoration(
                  labelText: "enter yuor password",
                  labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  prefixIcon: IconButton(
                    icon:
                        x ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        x = !x;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                        color: Colors.red,
                      )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyTabs()),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            primary: Colors.blue.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ))),
                        child: Text(
                          "sign in ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
