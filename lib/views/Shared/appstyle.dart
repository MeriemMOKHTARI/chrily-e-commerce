import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle1(double size,Color color, FontWeight fw ){
  return GoogleFonts.autourOne(fontSize: size,color: color, fontWeight:fw );
}
TextStyle appstyle(double size,Color color, FontWeight fw ){
  return GoogleFonts.poppins(fontSize: size,color: color, fontWeight:fw );
  
}