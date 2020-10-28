import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool _burgerClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _burgerClicked = !_burgerClicked;
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            icon: Icon(
              Icons.menu,
              color: _burgerClicked == false ? Color(0xffF5F6F8) : Color(0xff121212),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width/30)
        ],
      ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: _backgroundDecoration()
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _text1(0.03125),
                _text2(0.0625),
                _text3(0.125),
                _text4(0.25),
                _text1(0.375),
                _text2(0.5),
                _text3(0.625),
                _text4(0.75),
                _text1(0.875),
                _text2(1.0),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    _burgerClicked == false ? "assets/profile_photo_bw.png" : "assets/profile_photo.png",
                    height: MediaQuery.of(context).size.height,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.075),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: _landingMenu(_burgerClicked == false ? "Gregorius" : "About")
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/56.25),
                      InkWell(
                        onTap: () {},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: _landingMenu(_burgerClicked == false ? "Agung" : "Works")
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/56.25),
                      InkWell(
                        onTap: () {},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: _landingMenu(_burgerClicked == false ? "Narindra" : "Interests")
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/56.25),
                      InkWell(
                        onTap: () {},
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: _landingMenu(_burgerClicked == false ? "Aditantyo" : "Contact")
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _landingMenu(String text) {
    return Container(
      height: MediaQuery.of(context).size.height/8.33333333333,
      padding: EdgeInsets.symmetric(horizontal: 48.0),
      decoration: BoxDecoration(
        color: _burgerClicked == false ? Color(0xffF5F6F8) : Color(0xff121212)
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.bebasNeue(
            fontSize: MediaQuery.of(context).size.height/12.5,
            color: _burgerClicked == false ? Color(0xff121212) : Color(0xffF5F6F8)
          ),
        ),
      ),
    );
  }

  _backgroundDecoration() {
    if(_burgerClicked == false) {
      return BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff000E26), Color(0xff003049)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter
        )
      );
    } else {
      return BoxDecoration(
        color: Color(0xffF5F6F8)
      );
    }
  }

  Widget _text1(double opacity) {
    return Expanded(
      child: Text(
        "Flutter (Dart), iOS (Swift), REST API",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, 6.25),
      ),
    );
  }

  Widget _text2(double opacity) {
    return Expanded(
      child: Text(
        "Mobile Application Development",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, 10.0),
      ),
    );
  }

  Widget _text3(double opacity) {
    return Expanded(
      child: Text(
        "HTML, CSS (Bootstrap), JS (React JS)",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, 6.25),
      ),
    );
  }

  Widget _text4(double opacity) {
    return Expanded(
      child: Text(
        "Front-end Website Development",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, 10.0)
      ),
    );
  }

  _textStyle(double opacity, double spacing) {
    return TextStyle(
      color: _burgerClicked == false ? Color(0xffF5F6F8).withOpacity(opacity) : Color(0xff121212).withOpacity(opacity),
      fontFamily: 'Portico Outline',
      fontSize: MediaQuery.of(context).size.height/12.5,
      letterSpacing: spacing
    );
  }
}