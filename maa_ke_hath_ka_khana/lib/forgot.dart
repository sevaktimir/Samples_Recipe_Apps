import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController email = TextEditingController();

  reset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      _showEmailSentDialog();
    } on FirebaseAuthException catch (e) {
      _showErrorDialog(e.message ?? 'An error occurred');
    } catch (e) {
      _showErrorDialog('An error occurred');
    }
  }

  void _showEmailSentDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Password Reset'),
        content: Text('Password reset link has been sent to your email.'),
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
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Please Enter Your Email here',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: reset,
              child: Text("Send Link"),
            ),
          ],
        ),
      ),
    );
  }
}
