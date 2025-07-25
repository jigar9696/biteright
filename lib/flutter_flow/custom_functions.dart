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
