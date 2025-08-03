import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String findConflictingIngredient(
  List<String> productIngredients,
  List<String> userAvoidList,
) {
// This function checks if any ingredient from a product
// exists in a user's list of ingredients to avoid.

// Loop through each ingredient in the product's list.
  for (String ingredient in productIngredients) {
    // For each product ingredient, loop through the user's avoid list.
    for (String avoidItem in userAvoidList) {
      // To make the check case-insensitive, convert both strings to lower case.
      // The .contains() method checks if the product ingredient string
      // contains the user's avoid item string.
      // This is important for cases like "wheat flour" matching "wheat".
      if (ingredient.toLowerCase().contains(avoidItem.toLowerCase())) {
        // If a match is found, we don't need to check anymore.
        // Immediately return the item from the user's list that caused the conflict.
        return avoidItem;
      }
    }
  }

// If the function finishes all loops without finding any matches,
// it means the product is safe. Return an empty string to signify this.
  return '';
}

List<String> splitTextToList(String? ocrText) {
// This function takes a block of text and splits it into a list of strings.
  // It's designed to handle the output from the OCR API.

  // First, we check if the input text is null or just empty.
  if (ocrText == null || ocrText.isEmpty) {
    // If it is, we return an empty list to avoid any errors.
    return [];
  }

  // If there is text, we split it into a list.
  // The RegExp(r',|\n') part is a rule that tells the function
  // to create a new list item every time it sees a comma (,) or a new line.
  return ocrText.split(RegExp(r',|\n'));
}
