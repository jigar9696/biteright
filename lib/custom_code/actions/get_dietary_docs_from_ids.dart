// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<DietaryGroupsRecord>> getDietaryDocsFromIds(
    List<String>? groupIds) async {
  // This is the function 'shell' that was missing.
  // Your logic goes inside of it.

  // This function takes a list of document IDs (like 'Vegan', 'Halal')
  // and fetches the full documents from the dietaryGroups collection.
  if (groupIds == null || groupIds.isEmpty) {
    return [];
  }

  final firestore = FirebaseFirestore.instance;
  final List<Future<DocumentSnapshot>> futures = [];

  for (String id in groupIds) {
    // We trim the ID to remove any accidental spaces
    futures.add(firestore.collection('dietaryGroups').doc(id.trim()).get());
  }

  final snapshots = await Future.wait(futures);

  final List<DietaryGroupsRecord> records = [];
  for (var doc in snapshots) {
    if (doc.exists) {
      records.add(DietaryGroupsRecord.getDocumentFromData(
          doc.data() as Map<String, dynamic>, doc.reference));
    }
  }

  return records;
}
