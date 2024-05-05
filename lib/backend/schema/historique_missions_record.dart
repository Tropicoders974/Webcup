import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class HistoriqueMissionsRecord extends FirestoreRecord {
  HistoriqueMissionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "daterealise" field.
  DateTime? _daterealise;
  DateTime? get daterealise => _daterealise;
  bool hasDaterealise() => _daterealise != null;

  // "moneygive" field.
  String? _moneygive;
  String get moneygive => _moneygive ?? '';
  bool hasMoneygive() => _moneygive != null;

  // "missions" field.
  String? _missions;
  String get missions => _missions ?? '';
  bool hasMissions() => _missions != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _daterealise = snapshotData['daterealise'] as DateTime?;
    _moneygive = snapshotData['moneygive'] as String?;
    _missions = snapshotData['missions'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historique_missions');

  static Stream<HistoriqueMissionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoriqueMissionsRecord.fromSnapshot(s));

  static Future<HistoriqueMissionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistoriqueMissionsRecord.fromSnapshot(s));

  static HistoriqueMissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoriqueMissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoriqueMissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoriqueMissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoriqueMissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoriqueMissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoriqueMissionsRecordData({
  DocumentReference? user,
  DateTime? daterealise,
  String? moneygive,
  String? missions,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'daterealise': daterealise,
      'moneygive': moneygive,
      'missions': missions,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoriqueMissionsRecordDocumentEquality
    implements Equality<HistoriqueMissionsRecord> {
  const HistoriqueMissionsRecordDocumentEquality();

  @override
  bool equals(HistoriqueMissionsRecord? e1, HistoriqueMissionsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.daterealise == e2?.daterealise &&
        e1?.moneygive == e2?.moneygive &&
        e1?.missions == e2?.missions &&
        e1?.status == e2?.status;
  }

  @override
  int hash(HistoriqueMissionsRecord? e) => const ListEquality()
      .hash([e?.user, e?.daterealise, e?.moneygive, e?.missions, e?.status]);

  @override
  bool isValidKey(Object? o) => o is HistoriqueMissionsRecord;
}
