import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinglePicturesImportRecord extends FirestoreRecord {
  SinglePicturesImportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FotoURL" field.
  String? _fotoURL;
  String get fotoURL => _fotoURL ?? '';
  bool hasFotoURL() => _fotoURL != null;

  // "Response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  // "Client" field.
  String? _client;
  String get client => _client ?? '';
  bool hasClient() => _client != null;

  void _initializeFields() {
    _fotoURL = snapshotData['FotoURL'] as String?;
    _response = snapshotData['Response'] as String?;
    _client = snapshotData['Client'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SinglePicturesImport');

  static Stream<SinglePicturesImportRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SinglePicturesImportRecord.fromSnapshot(s));

  static Future<SinglePicturesImportRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SinglePicturesImportRecord.fromSnapshot(s));

  static SinglePicturesImportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SinglePicturesImportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SinglePicturesImportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SinglePicturesImportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SinglePicturesImportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SinglePicturesImportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSinglePicturesImportRecordData({
  String? fotoURL,
  String? response,
  String? client,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FotoURL': fotoURL,
      'Response': response,
      'Client': client,
    }.withoutNulls,
  );

  return firestoreData;
}

class SinglePicturesImportRecordDocumentEquality
    implements Equality<SinglePicturesImportRecord> {
  const SinglePicturesImportRecordDocumentEquality();

  @override
  bool equals(SinglePicturesImportRecord? e1, SinglePicturesImportRecord? e2) {
    return e1?.fotoURL == e2?.fotoURL &&
        e1?.response == e2?.response &&
        e1?.client == e2?.client;
  }

  @override
  int hash(SinglePicturesImportRecord? e) =>
      const ListEquality().hash([e?.fotoURL, e?.response, e?.client]);

  @override
  bool isValidKey(Object? o) => o is SinglePicturesImportRecord;
}
