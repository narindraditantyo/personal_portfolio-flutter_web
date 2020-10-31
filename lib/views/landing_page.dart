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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/0.2),
        child: AppBar(
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
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: _backgroundDecoration()
          ),
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

  Widget _profilePhoto() {
    if(MediaQuery.of(context).size.width >= 1024) {
      return Image.asset(
        _burgerClicked ? "assets/profile_photo.png" : "assets/profile_photo_bw.png",
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      );
    } else {
      return SizedBox(width: 0);
    }
  }
}