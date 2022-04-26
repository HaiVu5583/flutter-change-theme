import './color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension TextStyleExtension on TextStyle {
  TextStyle withPrimaryColor() {
    return copyWith(color: AppColor.primary);
  }

  TextStyle withOnPrimaryColor() {
    return copyWith(color: AppColor.white);
  }

  TextStyle h4() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 32,
      height: 1.3125,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle h5() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 24,
      height: 1.417,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle h6() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 20,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle body16() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle body14() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 14,
      height: 1.571,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle subtitle16() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle subtitle14() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 14,
      height: 1.571,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle subtitle12() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle caption12() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle captionItalic12() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle note10() {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 10,
      height: 1.6,
      fontWeight: FontWeight.w400,
    );
  }
}

class AppTextStyle {
  static TextStyle get defaultText {
    return GoogleFonts.nunitoSans();
  }

  static TextStyle get h4 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 32,
      height: 1.3125,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get h5 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 24,
      height: 1.417,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get h6 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 20,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get body16 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get body14 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 14,
      height: 1.571,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get subtitle16 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get subtitle14 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 14,
      height: 1.571,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get subtitle12 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get caption12 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle get captionItalic12 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle get note10 {
    return GoogleFonts.nunitoSans().copyWith(
      fontSize: 10,
      height: 1.6,
      fontWeight: FontWeight.w400,
    );
  }
}
