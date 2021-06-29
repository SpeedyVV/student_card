//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:fluttercouch/document.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:email_validator/email_validator.dart';

enum Status {active,transferred,historical,canceled}
enum EndorsementList {AM,A1,A2,A,AL,AP,B,C,D,BE,CE,DE,F,B1,C1,C1E,D1,D1E}

class Student {
  //int id;
  StudentProfile studentProfile = StudentProfile();
  Map<EndorsementList,bool> endorsements = Map();
  Document document = Document();


  Student();
}

class StudentProfile {
  int registrationNumber = 0;
  List<EndorsementList> category = [];
  int PRT = 0;
  String learnersLicenseNumber = '';
  String issuer = '';
  DateTime issueDate = DateTime.now(), validTill = DateTime.now();
  String acquiredLicenseNumber = '';
  String observations = '';
  Status status = Status.active;
  DateTimeRange dateOfRegistration = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  String password = '';
  String eDrivePassword = '';
  PhoneNumber homeTel = PhoneNumber(phoneNumber: ''), workTel = PhoneNumber(phoneNumber: ''),
              mobileTel = PhoneNumber(phoneNumber: '');
  String email = '';
  Address homeAddress = Address();
  List<int> studentId = [];
  bool newLegislation = true, platforms = true;
  String soughtLicense = '', examsCenter = '';

  StudentProfile();

}

class Document {
  String lastName = '';
  String givenName = '';
  String nationality = '';
  int civilIDNumber = 0;
  DateTime dateOfBirth = DateTime.now(),
           dateOfIssue = DateTime.now(),
           dateOfExpiry = DateTime.now();
  int height = 0;

  Document();
}

class Passport extends Document{

  String passportNumber = '';
  String placeOfBirth = '';
  String sex = '';

  Passport() ;
}

class NationalID extends Document{

  String sex = '';
  int idCheckDigit = 0;
  String issueOrder = '';
  String NIF = '', socialInsuranceNumber = '', healthNumber = '';
}

class Address {
  Address();
}

class LessonCard {
  List<int> lessonBox = [];

  LessonCard();
}