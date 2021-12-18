import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plm_app_final/main/home.dart';
import 'package:plm_app_final/onboard/forgot%20password.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const yellow = const Color(0xFFFFC909);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Form(child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Welcome Haribon!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFA31920)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Login to continue',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFFA5A5A5)),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter username';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your Student Number',
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter username';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your password',
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
                child: FlatButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                    child: Text('Forgot Password?')
                )
            ),
            ElevatedButton(
              onPressed: () {
                // // Validate returns true if the form is valid, or false otherwise.
                // if (_formKey.currentState!.validate()) {
                //   // If the form is valid, display a snackbar. In the real world,
                //   // you'd often call a server or save the information in a database.
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('Processing Data')),
                //   );
                // }

                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text('Login'),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  backgroundColor: MaterialStateProperty.all<Color>(yellow),
                  minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.90, 40)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
              ),
            ),
            Text('or'),
            ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.login,
                  ),
                  const Text('  Login with Outlook'),
                ],
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF006699)),
                  minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width * 0.90, 40)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
              ),
            ),
          ],
        )),
      ),
    ),
  );
}
