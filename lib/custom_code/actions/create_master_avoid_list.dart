// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> createMasterAvoidList(
  List<String> customIngredients,
  List<DietaryGroupsRecord> groupDocs,
) async {
  // Start with the user's custom list.
  List<String> masterList = List.from(customIngredients);

  // Loop through each group document.
  for (var doc in groupDocs) {
    // Add all ingredients from the group's list to the master list.
    masterList.addAll(doc.avoidIngredients);
  }

  // Return the final combined list.
  return masterList;
}
