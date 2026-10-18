import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isCompleted = false;
  bool isCompleted1 = false;
  bool isCompleted2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF9F5E6),
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(10),
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
          CircleAvatar(
            backgroundColor: Color(0XFFA9B390),
            child: IconButton(onPressed: (){},
                icon: const Icon(
                    Icons.person,
                  color: Color(0xFFFBF7EC),
                ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //margin: EdgeInsets.all(15),
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
            ),
            SizedBox(height : 5),
            Text(
              "Today's Tasks",
              style: GoogleFonts.ubuntu(
                color: Color(0xFF374C36),
                fontSize: (MediaQuery.of(context).size.width * 0.030) .clamp(20.0, 40.0),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color : Colors.grey,
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Color(0XFFF9F5EC),
              ),
              //color: Color(0xFF809A6D),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF506142),
                    child: Icon(
                        Icons.menu_book,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Read a Book",
                          style: GoogleFonts.ubuntu(
                            color: Color(0xFF374C36),
                          ),
                        ),
                        Text(
                          "1 Hour | Personal Growth",
                          style: GoogleFonts.tuffy(
                            color: Color(0xFF768673),
                          ) ,
                        )
                      ],
                    ),
                  ),
                  Checkbox(
                    value: isCompleted,
                    onChanged: (value) {
                      setState(() {
                        isCompleted = value ?? false;
                      });
                    },
                    activeColor: const Color(0xFF66865A),
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height : 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color : Colors.grey,
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Color(0XFFF9F5EC),
              ),
              //color: Color(0xFF809A6D),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF506142),
                    child: Icon(
                      Icons.fitness_center_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Morning Workout",
                          style: GoogleFonts.ubuntu(
                            color: Color(0xFF374C36),
                          ),
                        ),
                        Text(
                          "30 Minutes | Health",
                          style: GoogleFonts.tuffy(
                            color: Color(0xFF768673),
                          ) ,
                        )
                      ],
                    ),
                  ),
                  Checkbox(
                    value: isCompleted1,
                    onChanged: (value) {
                      setState(() {
                        isCompleted1 = value ?? false;
                      });
                    },
                    activeColor: const Color(0xFF66865A),
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height : 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color : Colors.grey,
                    blurRadius: 8,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Color(0XFFF9F5EC),
              ),
              //color: Color(0xFF809A6D),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF506142),
                    child: Icon(
                      Icons.water_drop_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Drink 8 Glasses of Water",
                          style: GoogleFonts.ubuntu(
                            color: Color(0xFF374C36),
                          ),
                        ),
                        Text(
                          "Health",
                          style: GoogleFonts.tuffy(
                            color: Color(0xFF768673),
                          ) ,
                        )
                      ],
                    ),
                  ),
                  Checkbox(
                    value: isCompleted2,
                    onChanged: (value) {
                      setState(() {
                        isCompleted2 = value ?? false;
                      });
                    },
                    activeColor: const Color(0xFF66865A),
                    checkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/img_1.png",
                          height: MediaQuery.of(context).size.height * 0.90,
                          width: MediaQuery.of(context).size.width * 0.90,
                          //width: (MediaQuery.of(context).size.width * 0.15) .clamp(20.0, 40.0),
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: 10,
                        child: IconButton(onPressed: () {},
                            icon: Icon(Icons.add),
                          style: IconButton.styleFrom(
                            backgroundColor: Color(0XFF728560),
                            foregroundColor: Colors.white,
                            fixedSize: Size(60, 60),
                            shape: CircleBorder(),
                          )
                        )
                    )
                  ]
                )
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF8F4EA), 
        selectedItemColor: const Color(0xFF66865A),
        unselectedItemColor: Colors.grey,
          selectedLabelStyle: GoogleFonts.ubuntu(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: GoogleFonts.ubuntu(
            fontSize: 11,
            fontWeight: FontWeight.normal,
          ),
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,),
              activeIcon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_outlined),
              activeIcon: Icon(Icons.task),
              label: "Tasks",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ]
      ) ,
    );
  }
}
