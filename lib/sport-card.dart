import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SportCard extends StatefulWidget {
  @override
  _SportCardState createState() => _SportCardState();
}

class _SportCardState extends State<SportCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Flutter'),
      ),
      drawer: Container(),
      body: Container(
        margin: EdgeInsets.only(bottom: 0),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red[900],
              Colors.red[500],
            ],
          ),
        ),
        child: Container(
          child: Stack(
            children: [
              /*  Container(
                alignment: Alignment.center,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.red[900],
                  image: DecorationImage(
                    image: AssetImage('assets/club/gs.png'),
                    fit: BoxFit.cover,
                     colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.15), BlendMode.dstATop),
                  ),
                ),
              ),*/
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          '2020-21',
                          style: GoogleFonts.hiMelody(
                            color: Colors.white.withAlpha(100),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '9/100',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.zero,
                            width: MediaQuery.of(context).size.width * 2,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.srgbToLinearGamma(),
                                image: AssetImage('assets/player/falcoa.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Rademel',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Falcao',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/club/gs.png',
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          '9/100',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  print('Bkj Tıklandı');
                },
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/club/bjk.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Gs Tıklandı');
                },
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/club/gs.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Konya Tıklandı');
                },
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/club/konya.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('Fb Tıklandı');
                },
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/club/fb.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('trabzon Tıklandı');
                },
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/club/trabzon.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildGradientPositioned(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width - 10,
        height: MediaQuery.of(context).size.height - 10,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: GradientColors.red,
          ),
        ),
      ),
    );
  }
}
