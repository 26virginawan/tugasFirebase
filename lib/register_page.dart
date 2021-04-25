import 'package:flutter/material.dart';
import 'package:tugas_firebase/login_page.dart';
// import 'package:tugas_firebase/auth_services.dart';
import 'package:tugas_firebase/sign_in.dart';
import 'package:tugas_firebase/first_screen.dart';
import 'package:tugas_firebase/second_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                FlutterLogo(size: 100),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusColor: Colors.orangeAccent,
                      hintText: 'Nama',
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusColor: Colors.orangeAccent,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    controller: passController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlue),
                      ),
                      focusColor: Colors.orangeAccent,
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Text("Register"),
                  onPressed: () async {
                    signUp(nameController.text, emailController.text,
                            passController.text)
                        .then((result) {
                      if (result != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return SecondPage();
                            },
                          ),
                        );
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Text("Have an account ? "),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    side: BorderSide(
                      color: Colors.lightBlue.withOpacity(0.9),
                      width: 1,
                    ),
                  ),
                  child: Text("Sign in"),
                  onPressed: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                ),
                // _signInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _signInButton() {
  //   return OutlineButton(
  //     splashColor: Colors.grey,
  //     onPressed: () {
  //       signInWithGoogle().then((result) {
  //         if (result != null) {
  //           Navigator.of(context).push(
  //             MaterialPageRoute(
  //               builder: (context) {
  //                 return FirstScreen();
  //               },
  //             ),
  //           );
  //         }
  //       });
  //     },
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
  //     highlightElevation: 0,
  //     borderSide: BorderSide(color: Colors.grey),
  //     child: Padding(
  //       padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
  //       child: Row(
  //         mainAxisSize: MainAxisSize.min,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           // Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 10),
  //             child: Text(
  //               'Sign in with Google',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.grey,
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
