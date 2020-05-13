import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/utils/colors.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
      controller: emailController,
      decoration: InputDecoration(
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );
    final passwordField = TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return 'enter your password';
        }
        return null;
      },
      controller: passwordController,
      decoration: InputDecoration(
        fillColor: ColorConstants.primaryColor,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        hintStyle: TextStyle(color: ColorConstants.secondaryColor),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstants.secondaryColor,
            ),
            borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    
     final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: ColorConstants.secondaryColor,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Processing date'),
              ),
            );
          }
          // print(emailController.text);
          // print(passwordController.text);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
        ),
        textColor: ColorConstants.primaryColor,
      ),
    );
    
    
  
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text('Login',
            style: TextStyle(color: ColorConstants.secondaryColor)),
      ),
      body: Builder(
        builder: (context) {
          return Form(
            key: _formKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/image4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: Text(
                              'Login here',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          emailField,
                          SizedBox(
                            height: 25.0,
                          ),
                          passwordField,
                          SizedBox(
                            height: 25.0,
                          ),
                          loginButton,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
