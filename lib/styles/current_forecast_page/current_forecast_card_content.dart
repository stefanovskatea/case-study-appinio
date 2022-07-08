import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

RoundedRectangleBorder forecastCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20.0),
);


var location = GoogleFonts.lato(
    textStyle: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27));

var timestamp = GoogleFonts.lato(
    textStyle: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20));

var temperature = GoogleFonts.lato(
    textStyle: const TextStyle(
        fontSize: 50, fontWeight: FontWeight.w300, color: Colors.white));

var cloudcover = GoogleFonts.lato(
    textStyle: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18));

var condition = GoogleFonts.lato(
    textStyle: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17));
