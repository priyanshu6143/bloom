import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AddHabit extends StatelessWidget {
  const AddHabit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.all(10),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a habit',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF374C36),
                ),
              ),
              Text(
                'Small Steps, Big Changes',
                style: GoogleFonts.dancingScript(
                  color: Color(0xFFA3AC9E),
                ),
              )
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEDECDA),
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.height * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Habit Name",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF374C36),
                          fontSize: (MediaQuery.of(context).size.height * 0.020)//.clamp(20, 50),
                        ),
                      ),
                      SizedBox( height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.energy_savings_leaf,
                            color: Color(0xFF374C36),//0xFFF8F4EA
                          ),
                          hintText: "e.g. read a book",
                          filled: true,
                          fillColor: Color(0xFFF8F4EA),//0xFFEDECDA
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
                )
              ],
            )
        )
    );
  }
}
