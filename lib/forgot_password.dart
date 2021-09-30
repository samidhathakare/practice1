import 'package:flutter/material.dart';
import 'package:practice1/main.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          child: Text('Reset Password'),
          color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              // Text(
              //   'Reset Password',
              //   style: TextStyle(fontSize: 20, color: Colors.black),
              // ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  suffixIcon: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.email_rounded)),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'old password'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'new password'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text('submit'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
