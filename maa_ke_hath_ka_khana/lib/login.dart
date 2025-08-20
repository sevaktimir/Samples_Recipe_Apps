import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maa_ke_hath_ka_khana/forgot.dart';
import 'package:maa_ke_hath_ka_khana/signup.dart';
import 'package:maa_ke_hath_ka_khana/wrapper.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      // Navigate to the next screen if login is successful
      // You can replace `Wrapper` with your next screen
      Get.offAll(Wrapper());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        _showErrorDialog('The password is incorrect.');
      } else if (e.code == 'user-not-found') {
        _showErrorDialog('No user found with this email.');
      } else {
        _showErrorDialog(
            'Your Email ID Or Password DoesNot Match Kindly Think And Try Again.');
      }
    } catch (e) {
      _showErrorDialog('An error occurred');
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: email,
                  decoration:
                      InputDecoration(hintText: 'Please Enter Your Email here'),
                ),
                SizedBox(
                  height: 35,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: 'Please Enter Your Password here'),
                ),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: (() => signIn()), child: Text("Login")),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: (() => Get.to(Signup())),
                    child: Text("Register Now")),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: (() => Get.to(Forgot())),
                    child: Text("Forgot Password ?"))
              ],
            ),
          ),
        ));
  }
}
