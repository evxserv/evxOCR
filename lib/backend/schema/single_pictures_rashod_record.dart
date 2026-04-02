import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SinglePicturesRashodRecord extends FirestoreRecord {
  SinglePicturesRashodRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Client" field.
  String? _client;
  String get client => _client ?? '';
  bool hasClient() => _client != null;

  // "FotoURL" field.
  String? _fotoURL;
  String get fotoURL => _fotoURL ?? '';
  bool hasFotoURL() => _fotoURL != null;

  // "Response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  void _initializeFields() {
    _client = snapshotData['Client'] as String?;
    _fotoURL = snapshotData['FotoURL'] as String?;
    _response = snapshotData['Response'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SinglePicturesRashod');

  static Stream<SinglePicturesRashodRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SinglePicturesRashodRecord.fromSnapshot(s));

  static Future<SinglePicturesRashodRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SinglePicturesRashodRecord.fromSnapshot(s));

  static SinglePicturesRashodRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SinglePicturesRashodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SinglePicturesRashodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SinglePicturesRashodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SinglePicturesRashodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SinglePicturesRashodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSinglePicturesRashodRecordData({
  String? client,
  String? fotoURL,
  String? response,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Client': client,
      'FotoURL': fotoURL,
      'Response': response,
    }.withoutNulls,
  );

  return firestoreData;
}

class SinglePicturesRashodRecordDocumentEquality
    implements Equality<SinglePicturesRashodRecord> {
  const SinglePicturesRashodRecordDocumentEquality();

  @override
  bool equals(SinglePicturesRashodRecord? e1, SinglePicturesRashodRecord? e2) {
    return e1?.client == e2?.client &&
        e1?.fotoURL == e2?.fotoURL &&
        e1?.response == e2?.response;
  }

  @override
  int hash(SinglePicturesRashodRecord? e) =>
      const ListEquality().hash([e?.client, e?.fotoURL, e?.response]);

  @override
  bool isValidKey(Object? o) => o is SinglePicturesRashodRecord;
}
