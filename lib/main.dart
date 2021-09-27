import 'package:flutter/material.dart';
import 'package:practice1/firgot_password.dart';
import 'package:practice1/signin.dart';
import 'package:practice1/signup.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/ic_launcher.png'),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.amber.shade100,
        duration: 500,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  get http => null;

  Future<void> getdata() async {
    var res = await http.get("https://api.github.com/users/desi-programmer");
    print(res);
  }

  bool _isHidden = true;

  String? validatepass(value) {
    if (value!.isEmpty) {
      return 'please enter an email';
    } else if (value.length < 6) {
      return "Should Be At Least 6 Characaters";
    }
  }

  get padding => null;

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyingLeading: true,
        // leading: const IconButton(icon: Icons.arrow_back, onPressed: () {  },),
        title: Text('PRACTISE APP'),
        // title: Text(widget.title),
        automaticallyImplyLeading: true,
      ),
      body: ListView(children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                autovalidate: false,
                key: formkey,
                decoration: const InputDecoration(
                  labelText: 'EMAIL',
                  hintStyle: TextStyle(fontSize: 10),
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: Icon(
                      Icons.email_rounded,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email Required';
                  } else {
                    return null;
                  }
                },
                // validator: validatepass,
              ),
            ),
            new SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                autovalidate: false,
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  hintStyle: TextStyle(fontSize: 10),
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(
                      _isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  // onTap: _togglePasswordView,
                ),
                obscureText: _isHidden,
                // suffix: Icon(Icons.visibility),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password Required';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            new SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextScreen()));
              },
              child: Text('SIGN IN'),
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.fromLTRB(30, 15, 30, 15)),
              ),
            ),
            new SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(),
              child: InkWell(
                child: Text('FORGOT PASSWORD'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResetPassword()));
                },
              ),
              color: Colors.blueGrey[50],
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to Practise App?',
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
                  },
                  child: Text('Signup'),
                  textColor: Colors.blue,
                ),
                new SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
