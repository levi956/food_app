import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            //height: 80.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.cancel_presentation),
                ),

                SizedBox(
                  height: 30,
                ),

                // image header
                Center(
                  child: Image(
                    height: 23.h,
                    image: AssetImage('assets/images/gummy-coffee.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      //fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // username & email text field
                Container(
                  height: 6.5.h,
                  width: 70.h,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                    decoration: InputDecoration(
                      hoverColor: Colors.green[600],
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Username / email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                  ),
                ),

                // passwod text field
                Container(
                  height: 6.5.h,
                  width: 70.h,
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                    decoration: InputDecoration(
                      hoverColor: Colors.green[600],
                      prefixIcon: Icon(Icons.password),
                      labelText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),

                // sign in button
                Container(
                  alignment: Alignment.center,
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.green[600],
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      minWidth: 250.0,
                      height: 60,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/body_screen'),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: null,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'Forgot Password? ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.green[600],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: null,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'Don\'t have an account? Tap here to sign up',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.green[600],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
