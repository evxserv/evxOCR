// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future adddocument(
  BuildContext context,
  String? response,
) async {
  response == response ?? '';
  final firestore = FirebaseFirestore.instance;

  final collectionRef = firestore.collection('SinglePictures');

  await collectionRef.add({
    'Response': response,
    'FotoURL': 'пустота',
  });
}
