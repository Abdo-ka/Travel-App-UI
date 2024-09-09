import 'package:flutter/material.dart';
import 'package:travel_app/app.dart';
import 'package:travel_app/initialization.dart';

void main() async{
  await preInitializations();
  runApp(const TravelApp());
}
