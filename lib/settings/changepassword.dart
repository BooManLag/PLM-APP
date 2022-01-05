import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
              child: Text('Change Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFA31920)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text('Don’t forget your password. In order to protect your account, make sure your password:'),
                  ),
                  Text('\u2022 Is longer than 8 characters'),
                  Text('\u2022 A mixture of both uppercase and lowercase letters'),
                  Text('\u2022 A mixture of letters and numbers'),
                  Text('\u2022 Does not match or significantly contain your username,\n e.g. do not use “username123”'),
                ],
              ),
            ),
            Form(child:
              Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter current password';
                      }
                      return null;
                    },
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Current Password',
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter new password';
                      }
                      return null;
                    },
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'New Password',
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password did not match';
                      }
                      return null;
                    },
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFC909),
                      minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 40),
                    ),
                    onPressed: () {},
                    child: Text('Update Password'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE9E9E9),
                      minimumSize: Size(MediaQuery.of(context).size.width * 0.90, 40),
                    ),
                    onPressed: () {},
                    child: Text('Cancel'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
