import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
            color: Colors.black,
            onPressed: () {Navigator.pop(context);}),
        backgroundColor: Colors.white,
        elevation:0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Forgot Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFA31920)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Please enter your plm email account and check your inbox to\nchange your password',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Form(child:
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your email',
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFC909),
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 40),
                  ),
                  onPressed: () {},
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
