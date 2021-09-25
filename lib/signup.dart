import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
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
              //   'Create New Account',
              //   style: TextStyle(fontSize: 20, color: Colors.black),
              // ),
              // Icon(Icons.arrow_back),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter Your Name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  suffixIcon: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.email_rounded)),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter tour password',
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.remove_red_eye_rounded),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: const Text('submit'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
