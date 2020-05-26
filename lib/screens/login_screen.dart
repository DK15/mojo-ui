import 'package:flutter/material.dart';
import 'package:mojo/strings.dart';
import 'package:mojo/styles.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                    child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    _logo(context),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        Strings.loginButton,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: _signInFields()),
                    // _signInFields(),
                    _forgotPasswordField(),
                    _loginButton()
                  ],
                ))))
      ],
    ));
  }

  Widget _logo(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/path26.png'),
                )),
            Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/path30.png'),
                )),
            Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('assets/images/path22.png'),
                ))
          ],
        ));
  }

  Widget _signInFields() {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextFormField(
          autofocus: false,
          obscureText: false,
          decoration: InputDecoration(
              hintText: Strings.emailHint, hintStyle: ThemeText.fieldText),
          keyboardType: TextInputType.emailAddress,
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextFormField(
              autofocus: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: Strings.passwordHint,
                  hintStyle: ThemeText.fieldText,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    onPressed: () {},
                  )),
              keyboardType: TextInputType.text,
            ))
      ],
    ));
  }

  Widget _forgotPasswordField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        GestureDetector(
            onTap: () {},
            child: Text(
              Strings.forgotText,
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 14),
            ))
      ],
    );
  }

  Widget _loginButton() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Container(
            width: 305,
            height: 58,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: Color(0xFF97D4CC), width: 5)),
              child: Text(
                Strings.loginButton,
                style: ThemeText.actionText,
              ),
              onPressed: () {},
            )));
  }
}
