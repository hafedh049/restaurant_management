import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

late Box<dynamic> user;
Map<String, dynamic> configurations = <String, dynamic>{};
Map<String, dynamic> settings = <String, dynamic>{};

String selectedPage = "Home";

const Color green = Colors.green;
const Color orange = Colors.orange;
const Color brown = Colors.orange;
