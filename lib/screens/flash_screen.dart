import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mojo/screens/login_screen.dart';
import 'package:mojo/styles.dart';

import '../strings.dart';
import 'signup_screen.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 420,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/mojo.jpg'))),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/images/path26_white.png'),
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Image(
                              image: AssetImage(
                                  'assets/images/path30_white.png'))),
                      Align(
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage('assets/images/path22_white.png'),
                          ))
                    ],
                  )),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: 305,
                  height: 58,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Color(0xFF97D4CC), width: 5)),
                    child: Text(
                      Strings.signUp,
                      style: ThemeText.actionText,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                Strings.learnMore,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              )),
          Expanded(
            child: Align(
                alignment: Alignment.center,
                child: RichText(
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
                                        builder: (context) => LoginScreen()));
                              })
                      ]),
                )),
          )
        ],
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // first curve at bottom left corner

    var firstControlPoint = Offset(size.width / 20, size.height - 40);
    var firstEndPoint = Offset(size.width * .5, size.height - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    // second curve at top right corner

    var secondControlPoint = Offset(size.width, size.height - 50);
    var secondEndPoint = Offset(size.width, size.height - 160);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
