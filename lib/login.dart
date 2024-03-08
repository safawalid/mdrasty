import 'package:flutter/material.dart';
// import 'package:graduation/sign_in.dart';
import 'package:mdrasty/timetable.dart';

void main() {
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  const mylogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mytablogin(),
    );
  }
}

class Mytablogin extends StatefulWidget {
  @override
  State<Mytablogin> createState() => _MytabloginState();
}

class _MytabloginState extends State<Mytablogin> {
  // final width = MediaQuery.of(context).size.width;
  var x = true;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        // leading: BackButton(
        //   color: Colors.red,
        // ),
        title: Text(
          "Login",
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
           
            children: [
             
              Image.asset("img/madrsatylogor.jpg"),

              SizedBox(
                height: 30,
              ),
              TextFormField(
                //  keyboardType: TextInputType.emailAddress,

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
                height: 55.0,
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
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
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
