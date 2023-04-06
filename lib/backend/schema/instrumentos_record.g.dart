// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrumentos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstrumentosRecord> _$instrumentosRecordSerializer =
    new _$InstrumentosRecordSerializer();

class _$InstrumentosRecordSerializer
    implements StructuredSerializer<InstrumentosRecord> {
  @override
  final Iterable<Type> types = const [InstrumentosRecord, _$InstrumentosRecord];
  @override
  final String wireName = 'InstrumentosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InstrumentosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.artista;
    if (value != null) {
      result
        ..add('artista')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  InstrumentosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstrumentosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'artista':
          result.artista = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$InstrumentosRecord extends InstrumentosRecord {
  @override
  final String? nombre;
  @override
  final double? precio;
  @override
  final String? artista;
  @override
  final String? descripcion;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InstrumentosRecord(
          [void Function(InstrumentosRecordBuilder)? updates]) =>
      (new InstrumentosRecordBuilder()..update(updates))._build();

  _$InstrumentosRecord._(
      {this.nombre,
      this.precio,
      this.artista,
      this.descripcion,
      this.imagen,
      this.ffRef})
      : super._();

  @override
  InstrumentosRecord rebuild(
          void Function(InstrumentosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstrumentosRecordBuilder toBuilder() =>
      new InstrumentosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstrumentosRecord &&
        nombre == other.nombre &&
        precio == other.precio &&
        artista == other.artista &&
        descripcion == other.descripcion &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nombre.hashCode), precio.hashCode),
                    artista.hashCode),
                descripcion.hashCode),
            imagen.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InstrumentosRecord')
          ..add('nombre', nombre)
          ..add('precio', precio)
          ..add('artista', artista)
          ..add('descripcion', descripcion)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InstrumentosRecordBuilder
    implements Builder<InstrumentosRecord, InstrumentosRecordBuilder> {
  _$InstrumentosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _artista;
  String? get artista => _$this._artista;
  set artista(String? artista) => _$this._artista = artista;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InstrumentosRecordBuilder() {
    InstrumentosRecord._initializeBuilder(this);
  }

  InstrumentosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _precio = $v.precio;
      _artista = $v.artista;
      _descripcion = $v.descripcion;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstrumentosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstrumentosRecord;
  }

  @override
  void update(void Function(InstrumentosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstrumentosRecord build() => _build();

  _$InstrumentosRecord _build() {
    final _$result = _$v ??
        new _$InstrumentosRecord._(
            nombre: nombre,
            precio: precio,
            artista: artista,
            descripcion: descripcion,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
