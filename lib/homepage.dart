import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFF9F5E6),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bloom',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                color: Color(0xFF374C36),
              ),
            ),
            Text(
                'Make today count',
              style: GoogleFonts.dancingScript(
                color: Color(0xFFA3AC9E),
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(
                  Icons.person_outline_rounded,
                color: Color(0xFFA7B38D),
              ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFEDECDA),
            ),
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.height * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'Your daily progress',
                  style: GoogleFonts.ubuntu(
                  color: Color(0xFF374C36),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height : (MediaQuery.of(context).size.height * 0.015).clamp(80, 100),
                          width : (MediaQuery.of(context).size.width * 0.015).clamp(80, 100),
                          child: CircularProgressIndicator(
                            value: 0.6,
                            strokeWidth: 10,
                            backgroundColor: Color(0xFFDCE2CE),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFF66865A),
                            ),
                          ),
                        ),
                        Text(
                          '3/5',
                          //textAlign: TextAlign.center ,
                          style: GoogleFonts.openSans(
                            fontSize:(MediaQuery.of(context).size.height * 0.045) .clamp(15.0,20.0),
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF344C38),
                          ),
                        ),
                      ]
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 3,
                        child: SizedBox(
                          height : (MediaQuery.of(context).size.height * 0.015).clamp(80, 100),
                          width : (MediaQuery.of(context).size.width * 0.019).clamp(80, 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "3 of 5 tasks completed",
                                style: GoogleFonts.outfit(
                                  fontSize: (MediaQuery.of(context).size.height * 0.043) .clamp(13.0,18.0),
                                  color: Color(0xFF344C38),
                                ),
                              ),
                              Text(
                                "You're doing great!!!",
                                style: GoogleFonts.dancingScript(
                                  fontSize: (MediaQuery.of(context).size.height * 0.043) .clamp(13.0,18.0),
                                  color: Color(0xFFA3AC9E),
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    Positioned(
                        right: 10,
                        bottom: 0,
                        child: ClipRect(
                          child: SizedBox(
                            child: Image.asset(
                              "assets/flower.png",
                              //width: MediaQuery.of(context).size.width * 0.30,
                              //height: MediaQuery.of(context).size.height * 0.30,
                              width: (MediaQuery.of(context).size.width * 0.30) .clamp(40.0, 70.0),
                              height: (MediaQuery.of(context).size.height * 0.30) .clamp(40.0, 70.0),
                              fit: BoxFit.contain,
                            ),
                          ),
                        )
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
