import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'instrumentos_record.g.dart';

abstract class InstrumentosRecord
    implements Built<InstrumentosRecord, InstrumentosRecordBuilder> {
  static Serializer<InstrumentosRecord> get serializer =>
      _$instrumentosRecordSerializer;

  String? get nombre;

  double? get precio;

  String? get artista;

  String? get descripcion;

  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InstrumentosRecordBuilder builder) => builder
    ..nombre = ''
    ..precio = 0.0
    ..artista = ''
    ..descripcion = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instrumentos');

  static Stream<InstrumentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InstrumentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InstrumentosRecord._();
  factory InstrumentosRecord(
          [void Function(InstrumentosRecordBuilder) updates]) =
      _$InstrumentosRecord;

  static InstrumentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInstrumentosRecordData({
  String? nombre,
  double? precio,
  String? artista,
  String? descripcion,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    InstrumentosRecord.serializer,
    InstrumentosRecord(
      (i) => i
        ..nombre = nombre
        ..precio = precio
        ..artista = artista
        ..descripcion = descripcion
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
