import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DietaryGroupsRecord extends FirestoreRecord {
  DietaryGroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "avoid_ingredients" field.
  List<String>? _avoidIngredients;
  List<String> get avoidIngredients => _avoidIngredients ?? const [];
  bool hasAvoidIngredients() => _avoidIngredients != null;

  void _initializeFields() {
    _avoidIngredients = getDataList(snapshotData['avoid_ingredients']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dietaryGroups');

  static Stream<DietaryGroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DietaryGroupsRecord.fromSnapshot(s));

  static Future<DietaryGroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DietaryGroupsRecord.fromSnapshot(s));

  static DietaryGroupsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DietaryGroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DietaryGroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DietaryGroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DietaryGroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DietaryGroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDietaryGroupsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class DietaryGroupsRecordDocumentEquality
    implements Equality<DietaryGroupsRecord> {
  const DietaryGroupsRecordDocumentEquality();

  @override
  bool equals(DietaryGroupsRecord? e1, DietaryGroupsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.avoidIngredients, e2?.avoidIngredients);
  }

  @override
  int hash(DietaryGroupsRecord? e) =>
      const ListEquality().hash([e?.avoidIngredients]);

  @override
  bool isValidKey(Object? o) => o is DietaryGroupsRecord;
}
