import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maa_ke_hath_ka_khana/wrapper.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      Get.offAll(Wrapper());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        _showErrorDialog('The account already exists for that email.');
      } else {
        _showErrorDialog(e.message ?? 'An error occurred');
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
              Navigator.of(ctx).popUntil((route) => route.isFirst);
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
        title: Text("Signup Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Please Enter Your Email here',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Please Enter Your Password here',
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: signup,
              child: Text("Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
