import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientsRecord extends FirestoreRecord {
  ClientsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "FiscalCode" field.
  int? _fiscalCode;
  int get fiscalCode => _fiscalCode ?? 0;
  bool hasFiscalCode() => _fiscalCode != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _fiscalCode = castToType<int>(snapshotData['FiscalCode']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Clients');

  static Stream<ClientsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientsRecord.fromSnapshot(s));

  static Future<ClientsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientsRecord.fromSnapshot(s));

  static ClientsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientsRecordData({
  String? name,
  int? fiscalCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'FiscalCode': fiscalCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientsRecordDocumentEquality implements Equality<ClientsRecord> {
  const ClientsRecordDocumentEquality();

  @override
  bool equals(ClientsRecord? e1, ClientsRecord? e2) {
    return e1?.name == e2?.name && e1?.fiscalCode == e2?.fiscalCode;
  }

  @override
  int hash(ClientsRecord? e) =>
      const ListEquality().hash([e?.name, e?.fiscalCode]);

  @override
  bool isValidKey(Object? o) => o is ClientsRecord;
}
