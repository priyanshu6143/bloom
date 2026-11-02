import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bloom_habit_tracker/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  //final namekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F4EA),

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width * 0.90,

            decoration: BoxDecoration(
              color: Color(0xFFF9F5EC),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 4),//to study
                ),
              ],
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: Color(0xFFEDECDA),
                  backgroundImage: AssetImage("assets/img_3.png"),
                ),

                SizedBox(height: 15),

                Text(
                  "Bloom",
                  style: GoogleFonts.nunito(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF374C36),
                  ),
                ),

                Text(
                  "Habit Tracker",
                  style: GoogleFonts.spaceMono(
                    fontSize: 14,
                    color: Color(0xFF7D8873),
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Small Steps. Big Changes.",
                  style: GoogleFonts.dancingScript(
                    fontSize: 22,
                    color: Color(0xFFA3AC9E),
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Let's grow together ",
                  style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    color: Color(0xFF768673),
                  ),
                ),

                SizedBox(height: 30),

                Form(
                  key : formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Enter Username";
                          }
                          if(!RegExp(r'^[?a-zA-Z_]{3,}$').hasMatch(value)){
                            return "Invalid Username";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF506142),
                          ),
                          hintText: "Your Name",
                          filled: true,
                          fillColor: Color(0xFFEDECDA),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Color(0xFF66865A)),
                          ),
                        ),
                        cursorColor: Color(0xFF66865A),
                      ),
                      SizedBox(height: 15),

                       TextFormField(
                         //controller: passwordController,
                         obscureText: !isPasswordVisible,
                          validator: (value){
                            if (value == null || value.isEmpty){
                              return "Enter a valid Input";
                            }
                            if(value.length < 8){
                              return "Password must be at least 8 characters long";
                            }
                            if(!RegExp(r'^[a-zA-Z0-9]{8,}$').hasMatch(value)){
                              return "Invalid Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Color(0xFF506142),
                            ),
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                                icon: Icon(
                                    isPasswordVisible ? Icons.visibility : Icons.visibility_off
                                )
                            ) ,
                            hintText: "Password",
                            filled: true,
                            fillColor: Color(0xFFEDECDA),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Color(0xFF66865A)),
                            ),
                          ),
                          cursorColor: Color(0xFF66865A),
                        ),
                    ],
                  ),
                ),



                SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Homepage()));
                      }
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF728560),
                      foregroundColor: Color(0xFFFBF7EC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),

                    child: Text(
                      "Login",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Every day is a fresh start.",
                  style: GoogleFonts.dancingScript(
                    fontSize: 18,
                    color: Color(0xFFA3AC9E),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
