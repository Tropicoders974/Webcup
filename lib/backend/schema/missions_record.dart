import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MissionsRecord extends FirestoreRecord {
  MissionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "realisedBy" field.
  DocumentReference? _realisedBy;
  DocumentReference? get realisedBy => _realisedBy;
  bool hasRealisedBy() => _realisedBy != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "cashReward" field.
  double? _cashReward;
  double get cashReward => _cashReward ?? 0.0;
  bool hasCashReward() => _cashReward != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "GPS_point" field.
  String? _gPSPoint;
  String get gPSPoint => _gPSPoint ?? '';
  bool hasGPSPoint() => _gPSPoint != null;

  // "deadline" field.
  String? _deadline;
  String get deadline => _deadline ?? '';
  bool hasDeadline() => _deadline != null;

  // "extraction" field.
  String? _extraction;
  String get extraction => _extraction ?? '';
  bool hasExtraction() => _extraction != null;

  // "ressources" field.
  String? _ressources;
  String get ressources => _ressources ?? '';
  bool hasRessources() => _ressources != null;

  // "realised_date" field.
  DateTime? _realisedDate;
  DateTime? get realisedDate => _realisedDate;
  bool hasRealisedDate() => _realisedDate != null;

  // "Active" field.
  String? _active;
  String get active => _active ?? '';
  bool hasActive() => _active != null;

  void _initializeFields() {
    _realisedBy = snapshotData['realisedBy'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _localisation = snapshotData['localisation'] as String?;
    _type = snapshotData['type'] as String?;
    _difficulty = snapshotData['difficulty'] as String?;
    _cashReward = castToType<double>(snapshotData['cashReward']);
    _image = snapshotData['Image'] as String?;
    _gPSPoint = snapshotData['GPS_point'] as String?;
    _deadline = snapshotData['deadline'] as String?;
    _extraction = snapshotData['extraction'] as String?;
    _ressources = snapshotData['ressources'] as String?;
    _realisedDate = snapshotData['realised_date'] as DateTime?;
    _active = snapshotData['Active'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('missions');

  static Stream<MissionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MissionsRecord.fromSnapshot(s));

  static Future<MissionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MissionsRecord.fromSnapshot(s));

  static MissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMissionsRecordData({
  DocumentReference? realisedBy,
  String? title,
  String? localisation,
  String? type,
  String? difficulty,
  double? cashReward,
  String? image,
  String? gPSPoint,
  String? deadline,
  String? extraction,
  String? ressources,
  DateTime? realisedDate,
  String? active,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'realisedBy': realisedBy,
      'title': title,
      'localisation': localisation,
      'type': type,
      'difficulty': difficulty,
      'cashReward': cashReward,
      'Image': image,
      'GPS_point': gPSPoint,
      'deadline': deadline,
      'extraction': extraction,
      'ressources': ressources,
      'realised_date': realisedDate,
      'Active': active,
    }.withoutNulls,
  );

  return firestoreData;
}

class MissionsRecordDocumentEquality implements Equality<MissionsRecord> {
  const MissionsRecordDocumentEquality();

  @override
  bool equals(MissionsRecord? e1, MissionsRecord? e2) {
    return e1?.realisedBy == e2?.realisedBy &&
        e1?.title == e2?.title &&
        e1?.localisation == e2?.localisation &&
        e1?.type == e2?.type &&
        e1?.difficulty == e2?.difficulty &&
        e1?.cashReward == e2?.cashReward &&
        e1?.image == e2?.image &&
        e1?.gPSPoint == e2?.gPSPoint &&
        e1?.deadline == e2?.deadline &&
        e1?.extraction == e2?.extraction &&
        e1?.ressources == e2?.ressources &&
        e1?.realisedDate == e2?.realisedDate &&
        e1?.active == e2?.active;
  }

  @override
  int hash(MissionsRecord? e) => const ListEquality().hash([
        e?.realisedBy,
        e?.title,
        e?.localisation,
        e?.type,
        e?.difficulty,
        e?.cashReward,
        e?.image,
        e?.gPSPoint,
        e?.deadline,
        e?.extraction,
        e?.ressources,
        e?.realisedDate,
        e?.active
      ]);

  @override
  bool isValidKey(Object? o) => o is MissionsRecord;
}
