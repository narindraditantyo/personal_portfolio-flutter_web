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
          InkWell(
            onTap: () {
              setState(() {
                _burgerClicked = !_burgerClicked;
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _burgerClicked == false ? "Menu" : "Close",
                    style: GoogleFonts.bebasNeue(
                      fontSize: MediaQuery.of(context).size.height/35,
                      color: _burgerClicked == false ? Color(0xffF5F6F8) : Color(0xff121212),
                    )
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/144),
                  Icon(
                    _burgerClicked == false ? Icons.menu : Icons.close,
                    color: _burgerClicked == false ? Color(0xffF5F6F8) : Color(0xff121212),
                    size: MediaQuery.of(context).size.height/27.5,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width/30)
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: _backgroundDecoration()
          ),
          _landingBackground(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _profilePhoto(),
                SizedBox(width: MediaQuery.of(context).size.width >= 1024 ? MediaQuery.of(context).size.width*0.075 : 0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: _burgerClicked == false ? null : () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: _landingMenu(_burgerClicked == false ? "Gregorius" : "About")
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/56.25),
                    InkWell(
                      onTap: _burgerClicked == false ? null : () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: _landingMenu(_burgerClicked == false ? "Agung" : "Works")
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/56.25),
                    InkWell(
                      onTap: _burgerClicked == false ? null : () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: _landingMenu(_burgerClicked == false ? "Narindra" : "Interests")
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/56.25),
                    InkWell(
                      onTap: _burgerClicked == false ? null : () {},
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: _landingMenu(_burgerClicked == false ? "Aditantyo" : "Contact")
                    ),
                  ],
                )
              ],
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

  Widget _landingBackground() {
    if(MediaQuery.of(context).size.width >= 1280) {
      return Column(
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
      );
    } else if(MediaQuery.of(context).size.width >= 425) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _text1(0.015625),
          _text2(0.03125),
          _text3(0.046875),
          _text4(0.0625),
          _text1(0.09375),
          _text2(0.125),
          _text3(0.1875),
          _text4(0.25),
          _text1(0.3125),
          _text2(0.375),
          _text3(0.5),
          _text4(0.625),
          _text1(0.75),
          _text2(0.875),
          _text3(1.0),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _text1(0.015625),
          _text2(0.03125),
          _text3(0.046875),
          _text4(0.0625),
          _text1(0.09375),
          _text2(0.125),
          _text3(0.1875),
          _text4(0.25),
          _text1(0.3125),
          _text2(0.375),
          _text3(0.4375),
          _text4(0.5),
          _text1(0.5625),
          _text2(0.625),
          _text3(0.6875),
          _text4(0.75),
          _text1(0.8125),
          _text2(0.875),
          _text3(0.9375),
          _text4(1.0),
        ],
      );
    }
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
        style: _textStyle(opacity, _backgroundSpacing1()),
      ),
    );
  }

  Widget _text2(double opacity) {
    return Expanded(
      child: Text(
        "Mobile Application Development",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, _backgroundSpacing2()),
      ),
    );
  }

  Widget _text3(double opacity) {
    return Expanded(
      child: Text(
        "HTML, CSS (Bootstrap), JS (React JS)",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, _backgroundSpacing1()),
      ),
    );
  }

  Widget _text4(double opacity) {
    return Expanded(
      child: Text(
        "Front-end Website Development",
        textAlign: TextAlign.center,
        style: _textStyle(opacity, _backgroundSpacing2())
      ),
    );
  }

  Widget _profilePhoto() {
    if(MediaQuery.of(context).size.width >= 1024) {
      if(_burgerClicked) {
        return Image.asset(
          "assets/profile_photo.png",
          height: MediaQuery.of(context).size.height,
        );
      } else {
        return Image.asset(
          "assets/profile_photo_bw.png",
          height: MediaQuery.of(context).size.height,
        );
      }
    } else {
      return SizedBox(width: 0);
    }
  }

  _textStyle(double opacity, double spacing) {
    return TextStyle(
      color: _burgerClicked == false ? Color(0xffF5F6F8).withOpacity(opacity) : Color(0xff121212).withOpacity(opacity),
      fontFamily: 'Portico Outline',
      fontSize: _backgroundFontSize(),
      letterSpacing: spacing
    );
  }

  _backgroundFontSize() {
    if(MediaQuery.of(context).size.width >= 1280) {
      return MediaQuery.of(context).size.height/12.5;
    } else if(MediaQuery.of(context).size.width >= 1024) {
      return MediaQuery.of(context).size.height/18.75;
    } else if(MediaQuery.of(context).size.width >= 768) {
      return MediaQuery.of(context).size.height/25;
    } else if(MediaQuery.of(context).size.width >= 425) {
      return MediaQuery.of(context).size.height/28.125;
    }
  }

  _backgroundSpacing1() {
    if(MediaQuery.of(context).size.width >= 1440) {
      return MediaQuery.of(context).size.width/968;
    } else if(MediaQuery.of(context).size.width >= 1280) {
      return MediaQuery.of(context).size.width/204.8;
    } else if(MediaQuery.of(context).size.width >= 1024) {
      return MediaQuery.of(context).size.width/186;
    } else if(MediaQuery.of(context).size.width >= 768) {
      return MediaQuery.of(context).size.width/92;
    } else if(MediaQuery.of(context).size.width >= 425) {
      return MediaQuery.of(context).size.width/425;
    }
  }

  _backgroundSpacing2() {
    if(MediaQuery.of(context).size.width >= 1440) {
        return MediaQuery.of(context).size.width/312;
    } else if(MediaQuery.of(context).size.width >= 1280) {
      return MediaQuery.of(context).size.width/128;
    } else if(MediaQuery.of(context).size.width >= 1024) {
      return MediaQuery.of(context).size.width/108;
    } else if(MediaQuery.of(context).size.width >= 768) {
      return MediaQuery.of(context).size.width/68;
    } else if(MediaQuery.of(context).size.width >= 425) {
      return MediaQuery.of(context).size.width/224;
    }
  }
}