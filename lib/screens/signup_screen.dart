import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mojo/screens/login_screen.dart';
import 'package:mojo/strings.dart';
import 'package:mojo/styles.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Center(
                    child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Text(
                      Strings.signupText,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    _profileField(),
                    _signUpFields(),
                    _createAccountButton(),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: Strings.accountText,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text: Strings.accountSubText,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  })
                          ]),
                    )
                  ],
                ))))
      ],
    ));
  }

  Widget _profileField() {
    return Container(
        width: 120,
        height: 120,
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/ellipse84.png'),
                )),
            Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.linked_camera,
                  color: Colors.grey,
                  size: 40,
                ))
          ],
        ));
  }

  Widget _signUpFields() {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
              hintText: Strings.firstNameText, hintStyle: ThemeText.fieldText),
          keyboardType: TextInputType.text,
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                  hintText: Strings.lastNameText,
                  hintStyle: ThemeText.fieldText),
              keyboardType: TextInputType.text,
            )),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                  hintText: Strings.emailHint, hintStyle: ThemeText.fieldText),
              keyboardType: TextInputType.emailAddress,
            )),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(hintText: Strings.dateField),
              keyboardType: TextInputType.datetime,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
                child: Text(
              Strings.dateSubField,
              style: TextStyle(color: Color(0xFF97D4CC), fontSize: 14),
            ))
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: Strings.passwordHint,
                  hintStyle: ThemeText.fieldText),
              keyboardType: TextInputType.text,
            )),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: Strings.confirmPass,
                  hintStyle: ThemeText.fieldText),
              keyboardType: TextInputType.text,
            ))
      ],
    ));
  }

  Widget _createAccountButton() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Container(
            width: 305,
            height: 58,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: Color(0xFF97D4CC), width: 5)),
              child: Text(
                Strings.createAccountText,
                style: ThemeText.actionText,
              ),
              onPressed: () {},
            )));
  }
}
