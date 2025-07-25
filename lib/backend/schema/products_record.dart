import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "barcode_number" field.
  String? _barcodeNumber;
  String get barcodeNumber => _barcodeNumber ?? '';
  bool hasBarcodeNumber() => _barcodeNumber != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "ingredients" field.
  List<String>? _ingredients;
  List<String> get ingredients => _ingredients ?? const [];
  bool hasIngredients() => _ingredients != null;

  void _initializeFields() {
    _barcodeNumber = snapshotData['barcode_number'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _ingredients = getDataList(snapshotData['ingredients']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? barcodeNumber,
  String? productName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'barcode_number': barcodeNumber,
      'product_name': productName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.barcodeNumber == e2?.barcodeNumber &&
        e1?.productName == e2?.productName &&
        listEquality.equals(e1?.ingredients, e2?.ingredients);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality()
      .hash([e?.barcodeNumber, e?.productName, e?.ingredients]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
