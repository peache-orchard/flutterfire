// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class IgnoredGetterCollectionReference
    implements
        IgnoredGetterQuery,
        FirestoreCollectionReference<IgnoredGetter,
            IgnoredGetterQuerySnapshot> {
  factory IgnoredGetterCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$IgnoredGetterCollectionReference;

  static IgnoredGetter fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$IgnoredGetterFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    IgnoredGetter value,
    SetOptions? options,
  ) {
    return _$IgnoredGetterToJson(value);
  }

  @override
  CollectionReference<IgnoredGetter> get reference;

  @override
  IgnoredGetterDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<IgnoredGetterDocumentReference> add(IgnoredGetter value);
}

class _$IgnoredGetterCollectionReference extends _$IgnoredGetterQuery
    implements IgnoredGetterCollectionReference {
  factory _$IgnoredGetterCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$IgnoredGetterCollectionReference._(
      firestore.collection('firestore-example-app/test/getter').withConverter(
            fromFirestore: IgnoredGetterCollectionReference.fromFirestore,
            toFirestore: IgnoredGetterCollectionReference.toFirestore,
          ),
    );
  }

  _$IgnoredGetterCollectionReference._(
    CollectionReference<IgnoredGetter> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<IgnoredGetter> get reference =>
      super.reference as CollectionReference<IgnoredGetter>;

  @override
  IgnoredGetterDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return IgnoredGetterDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<IgnoredGetterDocumentReference> add(IgnoredGetter value) {
    return reference
        .add(value)
        .then((ref) => IgnoredGetterDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$IgnoredGetterCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class IgnoredGetterDocumentReference
    extends FirestoreDocumentReference<IgnoredGetter,
        IgnoredGetterDocumentSnapshot> {
  factory IgnoredGetterDocumentReference(
          DocumentReference<IgnoredGetter> reference) =
      _$IgnoredGetterDocumentReference;

  DocumentReference<IgnoredGetter> get reference;

  /// A reference to the [IgnoredGetterCollectionReference] containing this document.
  IgnoredGetterCollectionReference get parent {
    return _$IgnoredGetterCollectionReference(reference.firestore);
  }

  @override
  Stream<IgnoredGetterDocumentSnapshot> snapshots();

  @override
  Future<IgnoredGetterDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$IgnoredGetterDocumentReference extends FirestoreDocumentReference<
    IgnoredGetter,
    IgnoredGetterDocumentSnapshot> implements IgnoredGetterDocumentReference {
  _$IgnoredGetterDocumentReference(this.reference);

  @override
  final DocumentReference<IgnoredGetter> reference;

  /// A reference to the [IgnoredGetterCollectionReference] containing this document.
  IgnoredGetterCollectionReference get parent {
    return _$IgnoredGetterCollectionReference(reference.firestore);
  }

  @override
  Stream<IgnoredGetterDocumentSnapshot> snapshots() {
    return reference.snapshots().map(IgnoredGetterDocumentSnapshot._);
  }

  @override
  Future<IgnoredGetterDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(IgnoredGetterDocumentSnapshot._);
  }

  @override
  Future<IgnoredGetterDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(IgnoredGetterDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$IgnoredGetterFieldMap['value']!:
            _$IgnoredGetterPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$IgnoredGetterFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$IgnoredGetterFieldMap['value']!:
            _$IgnoredGetterPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$IgnoredGetterFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is IgnoredGetterDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class IgnoredGetterQuery
    implements QueryReference<IgnoredGetter, IgnoredGetterQuerySnapshot> {
  @override
  IgnoredGetterQuery limit(int limit);

  @override
  IgnoredGetterQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  IgnoredGetterQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  IgnoredGetterQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  IgnoredGetterQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  IgnoredGetterQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  IgnoredGetterQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });

  IgnoredGetterQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  });
}

class _$IgnoredGetterQuery
    extends QueryReference<IgnoredGetter, IgnoredGetterQuerySnapshot>
    implements IgnoredGetterQuery {
  _$IgnoredGetterQuery(
    this._collection, {
    required Query<IgnoredGetter> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<IgnoredGetterQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(IgnoredGetterQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<IgnoredGetterQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(IgnoredGetterQuerySnapshot._fromQuerySnapshot);
  }

  @override
  IgnoredGetterQuery limit(int limit) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  IgnoredGetterQuery limitToLast(int limit) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  IgnoredGetterQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  IgnoredGetterQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  IgnoredGetterQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  IgnoredGetterQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$IgnoredGetterFieldMap['value']!,
        isEqualTo: _$IgnoredGetterPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$IgnoredGetterPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$IgnoredGetterPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$IgnoredGetterPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$IgnoredGetterPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$IgnoredGetterPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$IgnoredGetterPerFieldToJson.value(e))
            .toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$IgnoredGetterPerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  IgnoredGetterQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  IgnoredGetterQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    IgnoredGetterDocumentSnapshot? startAtDocument,
    IgnoredGetterDocumentSnapshot? endAtDocument,
    IgnoredGetterDocumentSnapshot? endBeforeDocument,
    IgnoredGetterDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$IgnoredGetterFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$IgnoredGetterPerFieldToJson.value(startAt as int)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$IgnoredGetterPerFieldToJson.value(startAfter as int)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$IgnoredGetterPerFieldToJson.value(endAt as int)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$IgnoredGetterPerFieldToJson.value(endBefore as int)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$IgnoredGetterQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$IgnoredGetterQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class IgnoredGetterDocumentSnapshot
    extends FirestoreDocumentSnapshot<IgnoredGetter> {
  IgnoredGetterDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<IgnoredGetter> snapshot;

  @override
  IgnoredGetterDocumentReference get reference {
    return IgnoredGetterDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final IgnoredGetter? data;
}

class IgnoredGetterQuerySnapshot extends FirestoreQuerySnapshot<IgnoredGetter,
    IgnoredGetterQueryDocumentSnapshot> {
  IgnoredGetterQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory IgnoredGetterQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<IgnoredGetter> snapshot,
  ) {
    final docs =
        snapshot.docs.map(IgnoredGetterQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        IgnoredGetterDocumentSnapshot._,
      );
    }).toList();

    return IgnoredGetterQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    IgnoredGetterDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<IgnoredGetter> snapshot;

  @override
  final List<IgnoredGetterQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<IgnoredGetterDocumentSnapshot>> docChanges;
}

class IgnoredGetterQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<IgnoredGetter>
    implements IgnoredGetterDocumentSnapshot {
  IgnoredGetterQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<IgnoredGetter> snapshot;

  @override
  final IgnoredGetter data;

  @override
  IgnoredGetterDocumentReference get reference {
    return IgnoredGetterDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ModelCollectionReference
    implements
        ModelQuery,
        FirestoreCollectionReference<Model, ModelQuerySnapshot> {
  factory ModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ModelCollectionReference;

  static Model fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ModelFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Model value,
    SetOptions? options,
  ) {
    return _$ModelToJson(value);
  }

  @override
  CollectionReference<Model> get reference;

  @override
  ModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ModelDocumentReference> add(Model value);
}

class _$ModelCollectionReference extends _$ModelQuery
    implements ModelCollectionReference {
  factory _$ModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ModelCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: ModelCollectionReference.fromFirestore,
            toFirestore: ModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ModelCollectionReference._(
    CollectionReference<Model> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Model> get reference =>
      super.reference as CollectionReference<Model>;

  @override
  ModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ModelDocumentReference> add(Model value) {
    return reference.add(value).then((ref) => ModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ModelDocumentReference
    extends FirestoreDocumentReference<Model, ModelDocumentSnapshot> {
  factory ModelDocumentReference(DocumentReference<Model> reference) =
      _$ModelDocumentReference;

  DocumentReference<Model> get reference;

  /// A reference to the [ModelCollectionReference] containing this document.
  ModelCollectionReference get parent {
    return _$ModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ModelDocumentSnapshot> snapshots();

  @override
  Future<ModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String value,
    FieldValue valueFieldValue,
  });
}

class _$ModelDocumentReference
    extends FirestoreDocumentReference<Model, ModelDocumentSnapshot>
    implements ModelDocumentReference {
  _$ModelDocumentReference(this.reference);

  @override
  final DocumentReference<Model> reference;

  /// A reference to the [ModelCollectionReference] containing this document.
  ModelCollectionReference get parent {
    return _$ModelCollectionReference(reference.firestore);
  }

  @override
  Stream<ModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ModelDocumentSnapshot._);
  }

  @override
  Future<ModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ModelDocumentSnapshot._);
  }

  @override
  Future<ModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ModelFieldMap['value']!: _$ModelPerFieldToJson.value(value as String),
      if (valueFieldValue != null) _$ModelFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ModelFieldMap['value']!: _$ModelPerFieldToJson.value(value as String),
      if (valueFieldValue != null) _$ModelFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ModelQuery implements QueryReference<Model, ModelQuerySnapshot> {
  @override
  ModelQuery limit(int limit);

  @override
  ModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ModelQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  ModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });

  ModelQuery orderByValue({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ModelQuery extends QueryReference<Model, ModelQuerySnapshot>
    implements ModelQuery {
  _$ModelQuery(
    this._collection, {
    required Query<Model> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ModelQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ModelQuery limit(int limit) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ModelQuery limitToLast(int limit) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ModelQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ModelFieldMap['value']!,
        isEqualTo: _$ModelPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$ModelPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$ModelPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo: _$ModelPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$ModelPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$ModelPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$ModelPerFieldToJson.value(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$ModelPerFieldToJson.value(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ModelQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ModelDocumentSnapshot? startAtDocument,
    ModelDocumentSnapshot? endAtDocument,
    ModelDocumentSnapshot? endBeforeDocument,
    ModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ModelFieldMap['value']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$ModelPerFieldToJson.value(startAt as String)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$ModelPerFieldToJson.value(startAfter as String)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$ModelPerFieldToJson.value(endAt as String)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$ModelPerFieldToJson.value(endBefore as String)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ModelDocumentSnapshot extends FirestoreDocumentSnapshot<Model> {
  ModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Model> snapshot;

  @override
  ModelDocumentReference get reference {
    return ModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Model? data;
}

class ModelQuerySnapshot
    extends FirestoreQuerySnapshot<Model, ModelQueryDocumentSnapshot> {
  ModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Model> snapshot,
  ) {
    final docs = snapshot.docs.map(ModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ModelDocumentSnapshot._,
      );
    }).toList();

    return ModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Model> snapshot;

  @override
  final List<ModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ModelDocumentSnapshot>> docChanges;
}

class ModelQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Model>
    implements ModelDocumentSnapshot {
  ModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Model> snapshot;

  @override
  final Model data;

  @override
  ModelDocumentReference get reference {
    return ModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class NestedCollectionReference
    implements
        NestedQuery,
        FirestoreCollectionReference<Nested, NestedQuerySnapshot> {
  factory NestedCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$NestedCollectionReference;

  static Nested fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Nested.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Nested value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Nested> get reference;

  @override
  NestedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<NestedDocumentReference> add(Nested value);
}

class _$NestedCollectionReference extends _$NestedQuery
    implements NestedCollectionReference {
  factory _$NestedCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$NestedCollectionReference._(
      firestore.collection('nested').withConverter(
            fromFirestore: NestedCollectionReference.fromFirestore,
            toFirestore: NestedCollectionReference.toFirestore,
          ),
    );
  }

  _$NestedCollectionReference._(
    CollectionReference<Nested> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Nested> get reference =>
      super.reference as CollectionReference<Nested>;

  @override
  NestedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return NestedDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<NestedDocumentReference> add(Nested value) {
    return reference.add(value).then((ref) => NestedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot> {
  factory NestedDocumentReference(DocumentReference<Nested> reference) =
      _$NestedDocumentReference;

  DocumentReference<Nested> get reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots();

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    List<SimpleEnum>? enumList,
    FieldValue enumListFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    List<SimpleEnum>? enumList,
    FieldValue enumListFieldValue,
  });
}

class _$NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot>
    implements NestedDocumentReference {
  _$NestedDocumentReference(this.reference);

  @override
  final DocumentReference<Nested> reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(NestedDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$NestedFieldMap['value']!:
            _$NestedPerFieldToJson.value(value as Nested?),
      if (valueFieldValue != null) _$NestedFieldMap['value']!: valueFieldValue,
      if (simple != _sentinel)
        _$NestedFieldMap['simple']!:
            _$NestedPerFieldToJson.simple(simple as int?),
      if (simpleFieldValue != null)
        _$NestedFieldMap['simple']!: simpleFieldValue,
      if (valueList != _sentinel)
        _$NestedFieldMap['valueList']!:
            _$NestedPerFieldToJson.valueList(valueList as List<Nested>?),
      if (valueListFieldValue != null)
        _$NestedFieldMap['valueList']!: valueListFieldValue,
      if (boolList != _sentinel)
        _$NestedFieldMap['boolList']!:
            _$NestedPerFieldToJson.boolList(boolList as List<bool>?),
      if (boolListFieldValue != null)
        _$NestedFieldMap['boolList']!: boolListFieldValue,
      if (stringList != _sentinel)
        _$NestedFieldMap['stringList']!:
            _$NestedPerFieldToJson.stringList(stringList as List<String>?),
      if (stringListFieldValue != null)
        _$NestedFieldMap['stringList']!: stringListFieldValue,
      if (numList != _sentinel)
        _$NestedFieldMap['numList']!:
            _$NestedPerFieldToJson.numList(numList as List<num>?),
      if (numListFieldValue != null)
        _$NestedFieldMap['numList']!: numListFieldValue,
      if (objectList != _sentinel)
        _$NestedFieldMap['objectList']!:
            _$NestedPerFieldToJson.objectList(objectList as List<Object?>?),
      if (objectListFieldValue != null)
        _$NestedFieldMap['objectList']!: objectListFieldValue,
      if (dynamicList != _sentinel)
        _$NestedFieldMap['dynamicList']!:
            _$NestedPerFieldToJson.dynamicList(dynamicList as List<dynamic>?),
      if (dynamicListFieldValue != null)
        _$NestedFieldMap['dynamicList']!: dynamicListFieldValue,
      if (enumList != _sentinel)
        _$NestedFieldMap['enumList']!:
            _$NestedPerFieldToJson.enumList(enumList as List<SimpleEnum>?),
      if (enumListFieldValue != null)
        _$NestedFieldMap['enumList']!: enumListFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$NestedFieldMap['value']!:
            _$NestedPerFieldToJson.value(value as Nested?),
      if (valueFieldValue != null) _$NestedFieldMap['value']!: valueFieldValue,
      if (simple != _sentinel)
        _$NestedFieldMap['simple']!:
            _$NestedPerFieldToJson.simple(simple as int?),
      if (simpleFieldValue != null)
        _$NestedFieldMap['simple']!: simpleFieldValue,
      if (valueList != _sentinel)
        _$NestedFieldMap['valueList']!:
            _$NestedPerFieldToJson.valueList(valueList as List<Nested>?),
      if (valueListFieldValue != null)
        _$NestedFieldMap['valueList']!: valueListFieldValue,
      if (boolList != _sentinel)
        _$NestedFieldMap['boolList']!:
            _$NestedPerFieldToJson.boolList(boolList as List<bool>?),
      if (boolListFieldValue != null)
        _$NestedFieldMap['boolList']!: boolListFieldValue,
      if (stringList != _sentinel)
        _$NestedFieldMap['stringList']!:
            _$NestedPerFieldToJson.stringList(stringList as List<String>?),
      if (stringListFieldValue != null)
        _$NestedFieldMap['stringList']!: stringListFieldValue,
      if (numList != _sentinel)
        _$NestedFieldMap['numList']!:
            _$NestedPerFieldToJson.numList(numList as List<num>?),
      if (numListFieldValue != null)
        _$NestedFieldMap['numList']!: numListFieldValue,
      if (objectList != _sentinel)
        _$NestedFieldMap['objectList']!:
            _$NestedPerFieldToJson.objectList(objectList as List<Object?>?),
      if (objectListFieldValue != null)
        _$NestedFieldMap['objectList']!: objectListFieldValue,
      if (dynamicList != _sentinel)
        _$NestedFieldMap['dynamicList']!:
            _$NestedPerFieldToJson.dynamicList(dynamicList as List<dynamic>?),
      if (dynamicListFieldValue != null)
        _$NestedFieldMap['dynamicList']!: dynamicListFieldValue,
      if (enumList != _sentinel)
        _$NestedFieldMap['enumList']!:
            _$NestedPerFieldToJson.enumList(enumList as List<SimpleEnum>?),
      if (enumListFieldValue != null)
        _$NestedFieldMap['enumList']!: enumListFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is NestedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class NestedQuery
    implements QueryReference<Nested, NestedQuerySnapshot> {
  @override
  NestedQuery limit(int limit);

  @override
  NestedQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  NestedQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  NestedQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  NestedQuery whereValue({
    Nested? isEqualTo,
    Nested? isNotEqualTo,
    Nested? isLessThan,
    Nested? isLessThanOrEqualTo,
    Nested? isGreaterThan,
    Nested? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
  });
  NestedQuery whereSimple({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  });
  NestedQuery whereValueList({
    List<Nested>? isEqualTo,
    List<Nested>? isNotEqualTo,
    List<Nested>? isLessThan,
    List<Nested>? isLessThanOrEqualTo,
    List<Nested>? isGreaterThan,
    List<Nested>? isGreaterThanOrEqualTo,
    bool? isNull,
    Nested? arrayContains,
    List<Nested>? arrayContainsAny,
  });
  NestedQuery whereBoolList({
    List<bool>? isEqualTo,
    List<bool>? isNotEqualTo,
    List<bool>? isLessThan,
    List<bool>? isLessThanOrEqualTo,
    List<bool>? isGreaterThan,
    List<bool>? isGreaterThanOrEqualTo,
    bool? isNull,
    bool? arrayContains,
    List<bool>? arrayContainsAny,
  });
  NestedQuery whereStringList({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  NestedQuery whereNumList({
    List<num>? isEqualTo,
    List<num>? isNotEqualTo,
    List<num>? isLessThan,
    List<num>? isLessThanOrEqualTo,
    List<num>? isGreaterThan,
    List<num>? isGreaterThanOrEqualTo,
    bool? isNull,
    num? arrayContains,
    List<num>? arrayContainsAny,
  });
  NestedQuery whereObjectList({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    bool? isNull,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
  });
  NestedQuery whereDynamicList({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
  });
  NestedQuery whereEnumList({
    List<SimpleEnum>? isEqualTo,
    List<SimpleEnum>? isNotEqualTo,
    List<SimpleEnum>? isLessThan,
    List<SimpleEnum>? isLessThanOrEqualTo,
    List<SimpleEnum>? isGreaterThan,
    List<SimpleEnum>? isGreaterThanOrEqualTo,
    bool? isNull,
    SimpleEnum? arrayContains,
    List<SimpleEnum>? arrayContainsAny,
  });

  NestedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValue({
    bool descending = false,
    Nested? startAt,
    Nested? startAfter,
    Nested? endAt,
    Nested? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderBySimple({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValueList({
    bool descending = false,
    List<Nested>? startAt,
    List<Nested>? startAfter,
    List<Nested>? endAt,
    List<Nested>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByBoolList({
    bool descending = false,
    List<bool>? startAt,
    List<bool>? startAfter,
    List<bool>? endAt,
    List<bool>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByStringList({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNumList({
    bool descending = false,
    List<num>? startAt,
    List<num>? startAfter,
    List<num>? endAt,
    List<num>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByObjectList({
    bool descending = false,
    List<Object?>? startAt,
    List<Object?>? startAfter,
    List<Object?>? endAt,
    List<Object?>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByDynamicList({
    bool descending = false,
    List<dynamic>? startAt,
    List<dynamic>? startAfter,
    List<dynamic>? endAt,
    List<dynamic>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByEnumList({
    bool descending = false,
    List<SimpleEnum>? startAt,
    List<SimpleEnum>? startAfter,
    List<SimpleEnum>? endAt,
    List<SimpleEnum>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });
}

class _$NestedQuery extends QueryReference<Nested, NestedQuerySnapshot>
    implements NestedQuery {
  _$NestedQuery(
    this._collection, {
    required Query<Nested> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<NestedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<NestedQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  NestedQuery limit(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery limitToLast(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereValue({
    Nested? isEqualTo,
    Nested? isNotEqualTo,
    Nested? isLessThan,
    Nested? isLessThanOrEqualTo,
    Nested? isGreaterThan,
    Nested? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['value']!,
        isEqualTo: _$NestedPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo: _$NestedPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$NestedPerFieldToJson.value(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$NestedPerFieldToJson.value(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereSimple({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['simple']!,
        isEqualTo: _$NestedPerFieldToJson.simple(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.simple(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.simple(isLessThan),
        isLessThanOrEqualTo: _$NestedPerFieldToJson.simple(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.simple(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.simple(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$NestedPerFieldToJson.simple(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$NestedPerFieldToJson.simple(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereValueList({
    List<Nested>? isEqualTo,
    List<Nested>? isNotEqualTo,
    List<Nested>? isLessThan,
    List<Nested>? isLessThanOrEqualTo,
    List<Nested>? isGreaterThan,
    List<Nested>? isGreaterThanOrEqualTo,
    bool? isNull,
    Nested? arrayContains,
    List<Nested>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['valueList']!,
        isEqualTo: _$NestedPerFieldToJson.valueList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.valueList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.valueList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.valueList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.valueList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.valueList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.valueList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereBoolList({
    List<bool>? isEqualTo,
    List<bool>? isNotEqualTo,
    List<bool>? isLessThan,
    List<bool>? isLessThanOrEqualTo,
    List<bool>? isGreaterThan,
    List<bool>? isGreaterThanOrEqualTo,
    bool? isNull,
    bool? arrayContains,
    List<bool>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['boolList']!,
        isEqualTo: _$NestedPerFieldToJson.boolList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.boolList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.boolList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.boolList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.boolList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.boolList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.boolList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereStringList({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['stringList']!,
        isEqualTo: _$NestedPerFieldToJson.stringList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.stringList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.stringList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.stringList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.stringList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.stringList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.stringList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereNumList({
    List<num>? isEqualTo,
    List<num>? isNotEqualTo,
    List<num>? isLessThan,
    List<num>? isLessThanOrEqualTo,
    List<num>? isGreaterThan,
    List<num>? isGreaterThanOrEqualTo,
    bool? isNull,
    num? arrayContains,
    List<num>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['numList']!,
        isEqualTo: _$NestedPerFieldToJson.numList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.numList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.numList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.numList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.numList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.numList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.numList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereObjectList({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    bool? isNull,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['objectList']!,
        isEqualTo: _$NestedPerFieldToJson.objectList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.objectList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.objectList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.objectList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.objectList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.objectList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.objectList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereDynamicList({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    bool? isNull,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['dynamicList']!,
        isEqualTo: _$NestedPerFieldToJson.dynamicList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.dynamicList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.dynamicList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.dynamicList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.dynamicList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.dynamicList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.dynamicList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery whereEnumList({
    List<SimpleEnum>? isEqualTo,
    List<SimpleEnum>? isNotEqualTo,
    List<SimpleEnum>? isLessThan,
    List<SimpleEnum>? isLessThanOrEqualTo,
    List<SimpleEnum>? isGreaterThan,
    List<SimpleEnum>? isGreaterThanOrEqualTo,
    bool? isNull,
    SimpleEnum? arrayContains,
    List<SimpleEnum>? arrayContainsAny,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$NestedFieldMap['enumList']!,
        isEqualTo: _$NestedPerFieldToJson.enumList(isEqualTo),
        isNotEqualTo: _$NestedPerFieldToJson.enumList(isNotEqualTo),
        isLessThan: _$NestedPerFieldToJson.enumList(isLessThan),
        isLessThanOrEqualTo:
            _$NestedPerFieldToJson.enumList(isLessThanOrEqualTo),
        isGreaterThan: _$NestedPerFieldToJson.enumList(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$NestedPerFieldToJson.enumList(isGreaterThanOrEqualTo),
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: _$NestedPerFieldToJson.enumList(arrayContainsAny),
      ),
      $queryCursor: $queryCursor,
    );
  }

  NestedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['value']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.value(startAt as Nested?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.value(startAfter as Nested?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.value(endAt as Nested?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.value(endBefore as Nested?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderBySimple({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['simple']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.simple(startAt as int?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.simple(startAfter as int?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.simple(endAt as int?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.simple(endBefore as int?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByValueList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['valueList']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.valueList(startAt as List<Nested>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.valueList(startAfter as List<Nested>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.valueList(endAt as List<Nested>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.valueList(endBefore as List<Nested>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByBoolList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['boolList']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.boolList(startAt as List<bool>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.boolList(startAfter as List<bool>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.boolList(endAt as List<bool>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.boolList(endBefore as List<bool>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByStringList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['stringList']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.stringList(startAt as List<String>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.stringList(startAfter as List<String>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.stringList(endAt as List<String>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.stringList(endBefore as List<String>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByNumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['numList']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.numList(startAt as List<num>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.numList(startAfter as List<num>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.numList(endAt as List<num>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.numList(endBefore as List<num>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByObjectList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['objectList']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.objectList(startAt as List<Object?>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.objectList(startAfter as List<Object?>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.objectList(endAt as List<Object?>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.objectList(endBefore as List<Object?>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByDynamicList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$NestedFieldMap['dynamicList']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.dynamicList(startAt as List<dynamic>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.dynamicList(startAfter as List<dynamic>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.dynamicList(endAt as List<dynamic>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.dynamicList(endBefore as List<dynamic>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  NestedQuery orderByEnumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$NestedFieldMap['enumList']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$NestedPerFieldToJson.enumList(startAt as List<SimpleEnum>?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$NestedPerFieldToJson.enumList(startAfter as List<SimpleEnum>?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$NestedPerFieldToJson.enumList(endAt as List<SimpleEnum>?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$NestedPerFieldToJson.enumList(endBefore as List<SimpleEnum>?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class NestedDocumentSnapshot extends FirestoreDocumentSnapshot<Nested> {
  NestedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Nested> snapshot;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Nested? data;
}

class NestedQuerySnapshot
    extends FirestoreQuerySnapshot<Nested, NestedQueryDocumentSnapshot> {
  NestedQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory NestedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Nested> snapshot,
  ) {
    final docs = snapshot.docs.map(NestedQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        NestedDocumentSnapshot._,
      );
    }).toList();

    return NestedQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<NestedDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    NestedDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<NestedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Nested> snapshot;

  @override
  final List<NestedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<NestedDocumentSnapshot>> docChanges;
}

class NestedQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Nested>
    implements NestedDocumentSnapshot {
  NestedQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Nested> snapshot;

  @override
  final Nested data;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SplitFileModelCollectionReference
    implements
        SplitFileModelQuery,
        FirestoreCollectionReference<SplitFileModel,
            SplitFileModelQuerySnapshot> {
  factory SplitFileModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SplitFileModelCollectionReference;

  static SplitFileModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SplitFileModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SplitFileModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<SplitFileModel> get reference;

  @override
  SplitFileModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SplitFileModelDocumentReference> add(SplitFileModel value);
}

class _$SplitFileModelCollectionReference extends _$SplitFileModelQuery
    implements SplitFileModelCollectionReference {
  factory _$SplitFileModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SplitFileModelCollectionReference._(
      firestore.collection('split-file').withConverter(
            fromFirestore: SplitFileModelCollectionReference.fromFirestore,
            toFirestore: SplitFileModelCollectionReference.toFirestore,
          ),
    );
  }

  _$SplitFileModelCollectionReference._(
    CollectionReference<SplitFileModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SplitFileModel> get reference =>
      super.reference as CollectionReference<SplitFileModel>;

  @override
  SplitFileModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SplitFileModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SplitFileModelDocumentReference> add(SplitFileModel value) {
    return reference
        .add(value)
        .then((ref) => SplitFileModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SplitFileModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SplitFileModelDocumentReference
    extends FirestoreDocumentReference<SplitFileModel,
        SplitFileModelDocumentSnapshot> {
  factory SplitFileModelDocumentReference(
          DocumentReference<SplitFileModel> reference) =
      _$SplitFileModelDocumentReference;

  DocumentReference<SplitFileModel> get reference;

  /// A reference to the [SplitFileModelCollectionReference] containing this document.
  SplitFileModelCollectionReference get parent {
    return _$SplitFileModelCollectionReference(reference.firestore);
  }

  @override
  Stream<SplitFileModelDocumentSnapshot> snapshots();

  @override
  Future<SplitFileModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();
}

class _$SplitFileModelDocumentReference extends FirestoreDocumentReference<
    SplitFileModel,
    SplitFileModelDocumentSnapshot> implements SplitFileModelDocumentReference {
  _$SplitFileModelDocumentReference(this.reference);

  @override
  final DocumentReference<SplitFileModel> reference;

  /// A reference to the [SplitFileModelCollectionReference] containing this document.
  SplitFileModelCollectionReference get parent {
    return _$SplitFileModelCollectionReference(reference.firestore);
  }

  @override
  Stream<SplitFileModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SplitFileModelDocumentSnapshot._);
  }

  @override
  Future<SplitFileModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SplitFileModelDocumentSnapshot._);
  }

  @override
  Future<SplitFileModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(SplitFileModelDocumentSnapshot._);
  }

  @override
  bool operator ==(Object other) {
    return other is SplitFileModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SplitFileModelQuery
    implements QueryReference<SplitFileModel, SplitFileModelQuerySnapshot> {
  @override
  SplitFileModelQuery limit(int limit);

  @override
  SplitFileModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SplitFileModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SplitFileModelDocumentSnapshot? startAtDocument,
    SplitFileModelDocumentSnapshot? endAtDocument,
    SplitFileModelDocumentSnapshot? endBeforeDocument,
    SplitFileModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SplitFileModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SplitFileModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  SplitFileModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SplitFileModelDocumentSnapshot? startAtDocument,
    SplitFileModelDocumentSnapshot? endAtDocument,
    SplitFileModelDocumentSnapshot? endBeforeDocument,
    SplitFileModelDocumentSnapshot? startAfterDocument,
  });
}

class _$SplitFileModelQuery
    extends QueryReference<SplitFileModel, SplitFileModelQuerySnapshot>
    implements SplitFileModelQuery {
  _$SplitFileModelQuery(
    this._collection, {
    required Query<SplitFileModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SplitFileModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SplitFileModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SplitFileModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SplitFileModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SplitFileModelQuery limit(int limit) {
    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SplitFileModelQuery limitToLast(int limit) {
    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SplitFileModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SplitFileModelDocumentSnapshot? startAtDocument,
    SplitFileModelDocumentSnapshot? endAtDocument,
    SplitFileModelDocumentSnapshot? endBeforeDocument,
    SplitFileModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SplitFileModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SplitFileModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SplitFileModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SplitFileModelDocumentSnapshot? startAtDocument,
    SplitFileModelDocumentSnapshot? endAtDocument,
    SplitFileModelDocumentSnapshot? endBeforeDocument,
    SplitFileModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SplitFileModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SplitFileModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SplitFileModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<SplitFileModel> {
  SplitFileModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SplitFileModel> snapshot;

  @override
  SplitFileModelDocumentReference get reference {
    return SplitFileModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SplitFileModel? data;
}

class SplitFileModelQuerySnapshot extends FirestoreQuerySnapshot<SplitFileModel,
    SplitFileModelQueryDocumentSnapshot> {
  SplitFileModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SplitFileModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SplitFileModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SplitFileModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SplitFileModelDocumentSnapshot._,
      );
    }).toList();

    return SplitFileModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SplitFileModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SplitFileModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SplitFileModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SplitFileModel> snapshot;

  @override
  final List<SplitFileModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SplitFileModelDocumentSnapshot>>
      docChanges;
}

class SplitFileModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SplitFileModel>
    implements SplitFileModelDocumentSnapshot {
  SplitFileModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SplitFileModel> snapshot;

  @override
  final SplitFileModel data;

  @override
  SplitFileModelDocumentReference get reference {
    return SplitFileModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class EmptyModelCollectionReference
    implements
        EmptyModelQuery,
        FirestoreCollectionReference<EmptyModel, EmptyModelQuerySnapshot> {
  factory EmptyModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$EmptyModelCollectionReference;

  static EmptyModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return EmptyModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    EmptyModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<EmptyModel> get reference;

  @override
  EmptyModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<EmptyModelDocumentReference> add(EmptyModel value);
}

class _$EmptyModelCollectionReference extends _$EmptyModelQuery
    implements EmptyModelCollectionReference {
  factory _$EmptyModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$EmptyModelCollectionReference._(
      firestore.collection('config').withConverter(
            fromFirestore: EmptyModelCollectionReference.fromFirestore,
            toFirestore: EmptyModelCollectionReference.toFirestore,
          ),
    );
  }

  _$EmptyModelCollectionReference._(
    CollectionReference<EmptyModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<EmptyModel> get reference =>
      super.reference as CollectionReference<EmptyModel>;

  @override
  EmptyModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return EmptyModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<EmptyModelDocumentReference> add(EmptyModel value) {
    return reference.add(value).then((ref) => EmptyModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModel, EmptyModelDocumentSnapshot> {
  factory EmptyModelDocumentReference(DocumentReference<EmptyModel> reference) =
      _$EmptyModelDocumentReference;

  DocumentReference<EmptyModel> get reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots();

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();
}

class _$EmptyModelDocumentReference
    extends FirestoreDocumentReference<EmptyModel, EmptyModelDocumentSnapshot>
    implements EmptyModelDocumentReference {
  _$EmptyModelDocumentReference(this.reference);

  @override
  final DocumentReference<EmptyModel> reference;

  /// A reference to the [EmptyModelCollectionReference] containing this document.
  EmptyModelCollectionReference get parent {
    return _$EmptyModelCollectionReference(reference.firestore);
  }

  @override
  Stream<EmptyModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(EmptyModelDocumentSnapshot._);
  }

  @override
  Future<EmptyModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(EmptyModelDocumentSnapshot._);
  }

  @override
  Future<EmptyModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(EmptyModelDocumentSnapshot._);
  }

  @override
  bool operator ==(Object other) {
    return other is EmptyModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class EmptyModelQuery
    implements QueryReference<EmptyModel, EmptyModelQuerySnapshot> {
  @override
  EmptyModelQuery limit(int limit);

  @override
  EmptyModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  EmptyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  EmptyModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  EmptyModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  });
}

class _$EmptyModelQuery
    extends QueryReference<EmptyModel, EmptyModelQuerySnapshot>
    implements EmptyModelQuery {
  _$EmptyModelQuery(
    this._collection, {
    required Query<EmptyModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<EmptyModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(EmptyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<EmptyModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(EmptyModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  EmptyModelQuery limit(int limit) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EmptyModelQuery limitToLast(int limit) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  EmptyModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  EmptyModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  EmptyModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  EmptyModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EmptyModelDocumentSnapshot? startAtDocument,
    EmptyModelDocumentSnapshot? endAtDocument,
    EmptyModelDocumentSnapshot? endBeforeDocument,
    EmptyModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EmptyModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$EmptyModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class EmptyModelDocumentSnapshot extends FirestoreDocumentSnapshot<EmptyModel> {
  EmptyModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<EmptyModel> snapshot;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final EmptyModel? data;
}

class EmptyModelQuerySnapshot extends FirestoreQuerySnapshot<EmptyModel,
    EmptyModelQueryDocumentSnapshot> {
  EmptyModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory EmptyModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<EmptyModel> snapshot,
  ) {
    final docs = snapshot.docs.map(EmptyModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        EmptyModelDocumentSnapshot._,
      );
    }).toList();

    return EmptyModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<EmptyModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    EmptyModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<EmptyModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<EmptyModel> snapshot;

  @override
  final List<EmptyModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<EmptyModelDocumentSnapshot>> docChanges;
}

class EmptyModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<EmptyModel>
    implements EmptyModelDocumentSnapshot {
  EmptyModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<EmptyModel> snapshot;

  @override
  final EmptyModel data;

  @override
  EmptyModelDocumentReference get reference {
    return EmptyModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class OptionalJsonCollectionReference
    implements
        OptionalJsonQuery,
        FirestoreCollectionReference<OptionalJson, OptionalJsonQuerySnapshot> {
  factory OptionalJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$OptionalJsonCollectionReference;

  static OptionalJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$OptionalJsonFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    OptionalJson value,
    SetOptions? options,
  ) {
    return _$OptionalJsonToJson(value);
  }

  @override
  CollectionReference<OptionalJson> get reference;

  @override
  OptionalJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<OptionalJsonDocumentReference> add(OptionalJson value);
}

class _$OptionalJsonCollectionReference extends _$OptionalJsonQuery
    implements OptionalJsonCollectionReference {
  factory _$OptionalJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$OptionalJsonCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: OptionalJsonCollectionReference.fromFirestore,
            toFirestore: OptionalJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$OptionalJsonCollectionReference._(
    CollectionReference<OptionalJson> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<OptionalJson> get reference =>
      super.reference as CollectionReference<OptionalJson>;

  @override
  OptionalJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return OptionalJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<OptionalJsonDocumentReference> add(OptionalJson value) {
    return reference
        .add(value)
        .then((ref) => OptionalJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$OptionalJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class OptionalJsonDocumentReference extends FirestoreDocumentReference<
    OptionalJson, OptionalJsonDocumentSnapshot> {
  factory OptionalJsonDocumentReference(
          DocumentReference<OptionalJson> reference) =
      _$OptionalJsonDocumentReference;

  DocumentReference<OptionalJson> get reference;

  /// A reference to the [OptionalJsonCollectionReference] containing this document.
  OptionalJsonCollectionReference get parent {
    return _$OptionalJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<OptionalJsonDocumentSnapshot> snapshots();

  @override
  Future<OptionalJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$OptionalJsonDocumentReference extends FirestoreDocumentReference<
    OptionalJson,
    OptionalJsonDocumentSnapshot> implements OptionalJsonDocumentReference {
  _$OptionalJsonDocumentReference(this.reference);

  @override
  final DocumentReference<OptionalJson> reference;

  /// A reference to the [OptionalJsonCollectionReference] containing this document.
  OptionalJsonCollectionReference get parent {
    return _$OptionalJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<OptionalJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(OptionalJsonDocumentSnapshot._);
  }

  @override
  Future<OptionalJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(OptionalJsonDocumentSnapshot._);
  }

  @override
  Future<OptionalJsonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(OptionalJsonDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$OptionalJsonFieldMap['value']!:
            _$OptionalJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$OptionalJsonFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$OptionalJsonFieldMap['value']!:
            _$OptionalJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$OptionalJsonFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is OptionalJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class OptionalJsonQuery
    implements QueryReference<OptionalJson, OptionalJsonQuerySnapshot> {
  @override
  OptionalJsonQuery limit(int limit);

  @override
  OptionalJsonQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  OptionalJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  OptionalJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  OptionalJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  OptionalJsonQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  OptionalJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });

  OptionalJsonQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$OptionalJsonQuery
    extends QueryReference<OptionalJson, OptionalJsonQuerySnapshot>
    implements OptionalJsonQuery {
  _$OptionalJsonQuery(
    this._collection, {
    required Query<OptionalJson> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<OptionalJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(OptionalJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<OptionalJsonQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(OptionalJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  OptionalJsonQuery limit(int limit) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  OptionalJsonQuery limitToLast(int limit) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  OptionalJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OptionalJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  OptionalJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  OptionalJsonQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$OptionalJsonFieldMap['value']!,
        isEqualTo: _$OptionalJsonPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$OptionalJsonPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$OptionalJsonPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$OptionalJsonPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$OptionalJsonPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$OptionalJsonPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$OptionalJsonPerFieldToJson.value(e)).toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$OptionalJsonPerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OptionalJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OptionalJsonQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OptionalJsonDocumentSnapshot? startAtDocument,
    OptionalJsonDocumentSnapshot? endAtDocument,
    OptionalJsonDocumentSnapshot? endBeforeDocument,
    OptionalJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$OptionalJsonFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$OptionalJsonPerFieldToJson.value(startAt as int)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$OptionalJsonPerFieldToJson.value(startAfter as int)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$OptionalJsonPerFieldToJson.value(endAt as int)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$OptionalJsonPerFieldToJson.value(endBefore as int)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OptionalJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$OptionalJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class OptionalJsonDocumentSnapshot
    extends FirestoreDocumentSnapshot<OptionalJson> {
  OptionalJsonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<OptionalJson> snapshot;

  @override
  OptionalJsonDocumentReference get reference {
    return OptionalJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final OptionalJson? data;
}

class OptionalJsonQuerySnapshot extends FirestoreQuerySnapshot<OptionalJson,
    OptionalJsonQueryDocumentSnapshot> {
  OptionalJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory OptionalJsonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<OptionalJson> snapshot,
  ) {
    final docs =
        snapshot.docs.map(OptionalJsonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        OptionalJsonDocumentSnapshot._,
      );
    }).toList();

    return OptionalJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<OptionalJsonDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    OptionalJsonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<OptionalJsonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<OptionalJson> snapshot;

  @override
  final List<OptionalJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<OptionalJsonDocumentSnapshot>> docChanges;
}

class OptionalJsonQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<OptionalJson>
    implements OptionalJsonDocumentSnapshot {
  OptionalJsonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<OptionalJson> snapshot;

  @override
  final OptionalJson data;

  @override
  OptionalJsonDocumentReference get reference {
    return OptionalJsonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MixedJsonCollectionReference
    implements
        MixedJsonQuery,
        FirestoreCollectionReference<MixedJson, MixedJsonQuerySnapshot> {
  factory MixedJsonCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MixedJsonCollectionReference;

  static MixedJson fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MixedJson.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    MixedJson value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<MixedJson> get reference;

  @override
  MixedJsonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MixedJsonDocumentReference> add(MixedJson value);
}

class _$MixedJsonCollectionReference extends _$MixedJsonQuery
    implements MixedJsonCollectionReference {
  factory _$MixedJsonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MixedJsonCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: MixedJsonCollectionReference.fromFirestore,
            toFirestore: MixedJsonCollectionReference.toFirestore,
          ),
    );
  }

  _$MixedJsonCollectionReference._(
    CollectionReference<MixedJson> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MixedJson> get reference =>
      super.reference as CollectionReference<MixedJson>;

  @override
  MixedJsonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MixedJsonDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MixedJsonDocumentReference> add(MixedJson value) {
    return reference.add(value).then((ref) => MixedJsonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MixedJsonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MixedJsonDocumentReference
    extends FirestoreDocumentReference<MixedJson, MixedJsonDocumentSnapshot> {
  factory MixedJsonDocumentReference(DocumentReference<MixedJson> reference) =
      _$MixedJsonDocumentReference;

  DocumentReference<MixedJson> get reference;

  /// A reference to the [MixedJsonCollectionReference] containing this document.
  MixedJsonCollectionReference get parent {
    return _$MixedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<MixedJsonDocumentSnapshot> snapshots();

  @override
  Future<MixedJsonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int value,
    FieldValue valueFieldValue,
  });
}

class _$MixedJsonDocumentReference
    extends FirestoreDocumentReference<MixedJson, MixedJsonDocumentSnapshot>
    implements MixedJsonDocumentReference {
  _$MixedJsonDocumentReference(this.reference);

  @override
  final DocumentReference<MixedJson> reference;

  /// A reference to the [MixedJsonCollectionReference] containing this document.
  MixedJsonCollectionReference get parent {
    return _$MixedJsonCollectionReference(reference.firestore);
  }

  @override
  Stream<MixedJsonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MixedJsonDocumentSnapshot._);
  }

  @override
  Future<MixedJsonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MixedJsonDocumentSnapshot._);
  }

  @override
  Future<MixedJsonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MixedJsonDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$MixedJsonFieldMap['value']!:
            _$MixedJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$MixedJsonFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$MixedJsonFieldMap['value']!:
            _$MixedJsonPerFieldToJson.value(value as int),
      if (valueFieldValue != null)
        _$MixedJsonFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MixedJsonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MixedJsonQuery
    implements QueryReference<MixedJson, MixedJsonQuerySnapshot> {
  @override
  MixedJsonQuery limit(int limit);

  @override
  MixedJsonQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MixedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MixedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MixedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MixedJsonQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  MixedJsonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });

  MixedJsonQuery orderByValue({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  });
}

class _$MixedJsonQuery extends QueryReference<MixedJson, MixedJsonQuerySnapshot>
    implements MixedJsonQuery {
  _$MixedJsonQuery(
    this._collection, {
    required Query<MixedJson> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MixedJsonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MixedJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MixedJsonQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MixedJsonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MixedJsonQuery limit(int limit) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MixedJsonQuery limitToLast(int limit) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MixedJsonQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MixedJsonQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MixedJsonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MixedJsonQuery whereValue({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MixedJsonFieldMap['value']!,
        isEqualTo: _$MixedJsonPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$MixedJsonPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$MixedJsonPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$MixedJsonPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$MixedJsonPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$MixedJsonPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$MixedJsonPerFieldToJson.value(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$MixedJsonPerFieldToJson.value(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MixedJsonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MixedJsonQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MixedJsonDocumentSnapshot? startAtDocument,
    MixedJsonDocumentSnapshot? endAtDocument,
    MixedJsonDocumentSnapshot? endBeforeDocument,
    MixedJsonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MixedJsonFieldMap['value']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$MixedJsonPerFieldToJson.value(startAt as int)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$MixedJsonPerFieldToJson.value(startAfter as int)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$MixedJsonPerFieldToJson.value(endAt as int)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$MixedJsonPerFieldToJson.value(endBefore as int)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MixedJsonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MixedJsonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MixedJsonDocumentSnapshot extends FirestoreDocumentSnapshot<MixedJson> {
  MixedJsonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MixedJson> snapshot;

  @override
  MixedJsonDocumentReference get reference {
    return MixedJsonDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MixedJson? data;
}

class MixedJsonQuerySnapshot
    extends FirestoreQuerySnapshot<MixedJson, MixedJsonQueryDocumentSnapshot> {
  MixedJsonQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MixedJsonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MixedJson> snapshot,
  ) {
    final docs = snapshot.docs.map(MixedJsonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MixedJsonDocumentSnapshot._,
      );
    }).toList();

    return MixedJsonQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MixedJsonDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MixedJsonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MixedJsonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MixedJson> snapshot;

  @override
  final List<MixedJsonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MixedJsonDocumentSnapshot>> docChanges;
}

class MixedJsonQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MixedJson>
    implements MixedJsonDocumentSnapshot {
  MixedJsonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MixedJson> snapshot;

  @override
  final MixedJson data;

  @override
  MixedJsonDocumentReference get reference {
    return MixedJsonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class RootCollectionReference
    implements
        RootQuery,
        FirestoreCollectionReference<Root, RootQuerySnapshot> {
  factory RootCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$RootCollectionReference;

  static Root fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Root.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Root value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Root> get reference;

  @override
  RootDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<RootDocumentReference> add(Root value);
}

class _$RootCollectionReference extends _$RootQuery
    implements RootCollectionReference {
  factory _$RootCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$RootCollectionReference._(
      firestore.collection('root').withConverter(
            fromFirestore: RootCollectionReference.fromFirestore,
            toFirestore: RootCollectionReference.toFirestore,
          ),
    );
  }

  _$RootCollectionReference._(
    CollectionReference<Root> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Root> get reference =>
      super.reference as CollectionReference<Root>;

  @override
  RootDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return RootDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<RootDocumentReference> add(Root value) {
    return reference.add(value).then((ref) => RootDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$RootCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class RootDocumentReference
    extends FirestoreDocumentReference<Root, RootDocumentSnapshot> {
  factory RootDocumentReference(DocumentReference<Root> reference) =
      _$RootDocumentReference;

  DocumentReference<Root> get reference;

  /// A reference to the [RootCollectionReference] containing this document.
  RootCollectionReference get parent {
    return _$RootCollectionReference(reference.firestore);
  }

  late final SubCollectionReference sub = _$SubCollectionReference(
    reference,
  );

  late final AsCamelCaseCollectionReference asCamelCase =
      _$AsCamelCaseCollectionReference(
    reference,
  );

  late final CustomSubNameCollectionReference thisIsACustomName =
      _$CustomSubNameCollectionReference(
    reference,
  );

  late final ThisIsACustomPrefixCollectionReference customClassPrefix =
      _$ThisIsACustomPrefixCollectionReference(
    reference,
  );

  @override
  Stream<RootDocumentSnapshot> snapshots();

  @override
  Future<RootDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });
}

class _$RootDocumentReference
    extends FirestoreDocumentReference<Root, RootDocumentSnapshot>
    implements RootDocumentReference {
  _$RootDocumentReference(this.reference);

  @override
  final DocumentReference<Root> reference;

  /// A reference to the [RootCollectionReference] containing this document.
  RootCollectionReference get parent {
    return _$RootCollectionReference(reference.firestore);
  }

  late final SubCollectionReference sub = _$SubCollectionReference(
    reference,
  );

  late final AsCamelCaseCollectionReference asCamelCase =
      _$AsCamelCaseCollectionReference(
    reference,
  );

  late final CustomSubNameCollectionReference thisIsACustomName =
      _$CustomSubNameCollectionReference(
    reference,
  );

  late final ThisIsACustomPrefixCollectionReference customClassPrefix =
      _$ThisIsACustomPrefixCollectionReference(
    reference,
  );

  @override
  Stream<RootDocumentSnapshot> snapshots() {
    return reference.snapshots().map(RootDocumentSnapshot._);
  }

  @override
  Future<RootDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RootDocumentSnapshot._);
  }

  @override
  Future<RootDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(RootDocumentSnapshot._);
  }

  Future<void> update({
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) async {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$RootFieldMap['nonNullable']!:
            _$RootPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$RootFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$RootFieldMap['nullable']!:
            _$RootPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$RootFieldMap['nullable']!: nullableFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$RootFieldMap['nonNullable']!:
            _$RootPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$RootFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$RootFieldMap['nullable']!:
            _$RootPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$RootFieldMap['nullable']!: nullableFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is RootDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class RootQuery implements QueryReference<Root, RootQuerySnapshot> {
  @override
  RootQuery limit(int limit);

  @override
  RootQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  RootQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  RootQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  RootQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  RootQuery whereNonNullable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  RootQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  });

  RootQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  RootQuery orderByNonNullable({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });

  RootQuery orderByNullable({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  });
}

class _$RootQuery extends QueryReference<Root, RootQuerySnapshot>
    implements RootQuery {
  _$RootQuery(
    this._collection, {
    required Query<Root> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<RootQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(RootQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<RootQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RootQuerySnapshot._fromQuerySnapshot);
  }

  @override
  RootQuery limit(int limit) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RootQuery limitToLast(int limit) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  RootQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  RootQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  RootQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  RootQuery whereNonNullable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RootFieldMap['nonNullable']!,
        isEqualTo: _$RootPerFieldToJson.nonNullable(isEqualTo),
        isNotEqualTo: _$RootPerFieldToJson.nonNullable(isNotEqualTo),
        isLessThan: _$RootPerFieldToJson.nonNullable(isLessThan),
        isLessThanOrEqualTo:
            _$RootPerFieldToJson.nonNullable(isLessThanOrEqualTo),
        isGreaterThan: _$RootPerFieldToJson.nonNullable(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$RootPerFieldToJson.nonNullable(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$RootPerFieldToJson.nonNullable(e)).toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$RootPerFieldToJson.nonNullable(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  RootQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  }) {
    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RootFieldMap['nullable']!,
        isEqualTo: _$RootPerFieldToJson.nullable(isEqualTo),
        isNotEqualTo: _$RootPerFieldToJson.nullable(isNotEqualTo),
        isLessThan: _$RootPerFieldToJson.nullable(isLessThan),
        isLessThanOrEqualTo: _$RootPerFieldToJson.nullable(isLessThanOrEqualTo),
        isGreaterThan: _$RootPerFieldToJson.nullable(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$RootPerFieldToJson.nullable(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$RootPerFieldToJson.nullable(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$RootPerFieldToJson.nullable(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  RootQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  RootQuery orderByNonNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$RootFieldMap['nonNullable']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$RootPerFieldToJson.nonNullable(startAt as String)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$RootPerFieldToJson.nonNullable(startAfter as String)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$RootPerFieldToJson.nonNullable(endAt as String)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$RootPerFieldToJson.nonNullable(endBefore as String)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  RootQuery orderByNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RootDocumentSnapshot? startAtDocument,
    RootDocumentSnapshot? endAtDocument,
    RootDocumentSnapshot? endBeforeDocument,
    RootDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$RootFieldMap['nullable']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$RootPerFieldToJson.nullable(startAt as int?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$RootPerFieldToJson.nullable(startAfter as int?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$RootPerFieldToJson.nullable(endAt as int?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$RootPerFieldToJson.nullable(endBefore as int?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$RootQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$RootQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class RootDocumentSnapshot extends FirestoreDocumentSnapshot<Root> {
  RootDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Root> snapshot;

  @override
  RootDocumentReference get reference {
    return RootDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Root? data;
}

class RootQuerySnapshot
    extends FirestoreQuerySnapshot<Root, RootQueryDocumentSnapshot> {
  RootQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory RootQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Root> snapshot,
  ) {
    final docs = snapshot.docs.map(RootQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        RootDocumentSnapshot._,
      );
    }).toList();

    return RootQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<RootDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    RootDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<RootDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Root> snapshot;

  @override
  final List<RootQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<RootDocumentSnapshot>> docChanges;
}

class RootQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Root>
    implements RootDocumentSnapshot {
  RootQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Root> snapshot;

  @override
  final Root data;

  @override
  RootDocumentReference get reference {
    return RootDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SubCollectionReference
    implements SubQuery, FirestoreCollectionReference<Sub, SubQuerySnapshot> {
  factory SubCollectionReference(
    DocumentReference<Root> parent,
  ) = _$SubCollectionReference;

  static Sub fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Sub.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Sub value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Sub> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  SubDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SubDocumentReference> add(Sub value);
}

class _$SubCollectionReference extends _$SubQuery
    implements SubCollectionReference {
  factory _$SubCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$SubCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('sub').withConverter(
            fromFirestore: SubCollectionReference.fromFirestore,
            toFirestore: SubCollectionReference.toFirestore,
          ),
    );
  }

  _$SubCollectionReference._(
    this.parent,
    CollectionReference<Sub> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Sub> get reference =>
      super.reference as CollectionReference<Sub>;

  @override
  SubDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SubDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SubDocumentReference> add(Sub value) {
    return reference.add(value).then((ref) => SubDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SubCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SubDocumentReference
    extends FirestoreDocumentReference<Sub, SubDocumentSnapshot> {
  factory SubDocumentReference(DocumentReference<Sub> reference) =
      _$SubDocumentReference;

  DocumentReference<Sub> get reference;

  /// A reference to the [SubCollectionReference] containing this document.
  SubCollectionReference get parent {
    return _$SubCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SubDocumentSnapshot> snapshots();

  @override
  Future<SubDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String nonNullable,
    FieldValue nonNullableFieldValue,
    int? nullable,
    FieldValue nullableFieldValue,
  });
}

class _$SubDocumentReference
    extends FirestoreDocumentReference<Sub, SubDocumentSnapshot>
    implements SubDocumentReference {
  _$SubDocumentReference(this.reference);

  @override
  final DocumentReference<Sub> reference;

  /// A reference to the [SubCollectionReference] containing this document.
  SubCollectionReference get parent {
    return _$SubCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SubDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SubDocumentSnapshot._);
  }

  @override
  Future<SubDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SubDocumentSnapshot._);
  }

  @override
  Future<SubDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SubDocumentSnapshot._);
  }

  Future<void> update({
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) async {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$SubFieldMap['nonNullable']!:
            _$SubPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$SubFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$SubFieldMap['nullable']!:
            _$SubPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$SubFieldMap['nullable']!: nullableFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
    Object? nullable = _sentinel,
    FieldValue? nullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    assert(
      nullable == _sentinel || nullableFieldValue == null,
      "Cannot specify both nullable and nullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$SubFieldMap['nonNullable']!:
            _$SubPerFieldToJson.nonNullable(nonNullable as String),
      if (nonNullableFieldValue != null)
        _$SubFieldMap['nonNullable']!: nonNullableFieldValue,
      if (nullable != _sentinel)
        _$SubFieldMap['nullable']!:
            _$SubPerFieldToJson.nullable(nullable as int?),
      if (nullableFieldValue != null)
        _$SubFieldMap['nullable']!: nullableFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SubDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SubQuery implements QueryReference<Sub, SubQuerySnapshot> {
  @override
  SubQuery limit(int limit);

  @override
  SubQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SubQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SubQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SubQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SubQuery whereNonNullable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SubQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  });

  SubQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  SubQuery orderByNonNullable({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });

  SubQuery orderByNullable({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  });
}

class _$SubQuery extends QueryReference<Sub, SubQuerySnapshot>
    implements SubQuery {
  _$SubQuery(
    this._collection, {
    required Query<Sub> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SubQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(SubQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SubQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SubQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SubQuery limit(int limit) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SubQuery limitToLast(int limit) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SubQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SubQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SubQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SubQuery whereNonNullable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SubFieldMap['nonNullable']!,
        isEqualTo: _$SubPerFieldToJson.nonNullable(isEqualTo),
        isNotEqualTo: _$SubPerFieldToJson.nonNullable(isNotEqualTo),
        isLessThan: _$SubPerFieldToJson.nonNullable(isLessThan),
        isLessThanOrEqualTo:
            _$SubPerFieldToJson.nonNullable(isLessThanOrEqualTo),
        isGreaterThan: _$SubPerFieldToJson.nonNullable(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$SubPerFieldToJson.nonNullable(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$SubPerFieldToJson.nonNullable(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$SubPerFieldToJson.nonNullable(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SubQuery whereNullable({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
  }) {
    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SubFieldMap['nullable']!,
        isEqualTo: _$SubPerFieldToJson.nullable(isEqualTo),
        isNotEqualTo: _$SubPerFieldToJson.nullable(isNotEqualTo),
        isLessThan: _$SubPerFieldToJson.nullable(isLessThan),
        isLessThanOrEqualTo: _$SubPerFieldToJson.nullable(isLessThanOrEqualTo),
        isGreaterThan: _$SubPerFieldToJson.nullable(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$SubPerFieldToJson.nullable(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SubPerFieldToJson.nullable(e)).toList(),
        whereNotIn:
            whereNotIn?.map((e) => _$SubPerFieldToJson.nullable(e)).toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SubQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SubQuery orderByNonNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SubFieldMap['nonNullable']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$SubPerFieldToJson.nonNullable(startAt as String)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$SubPerFieldToJson.nonNullable(startAfter as String)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$SubPerFieldToJson.nonNullable(endAt as String)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$SubPerFieldToJson.nonNullable(endBefore as String)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SubQuery orderByNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SubDocumentSnapshot? startAtDocument,
    SubDocumentSnapshot? endAtDocument,
    SubDocumentSnapshot? endBeforeDocument,
    SubDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SubFieldMap['nullable']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$SubPerFieldToJson.nullable(startAt as int?)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$SubPerFieldToJson.nullable(startAfter as int?)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$SubPerFieldToJson.nullable(endAt as int?)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$SubPerFieldToJson.nullable(endBefore as int?)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SubQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SubQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SubDocumentSnapshot extends FirestoreDocumentSnapshot<Sub> {
  SubDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Sub> snapshot;

  @override
  SubDocumentReference get reference {
    return SubDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Sub? data;
}

class SubQuerySnapshot
    extends FirestoreQuerySnapshot<Sub, SubQueryDocumentSnapshot> {
  SubQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SubQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Sub> snapshot,
  ) {
    final docs = snapshot.docs.map(SubQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SubDocumentSnapshot._,
      );
    }).toList();

    return SubQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SubDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SubDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SubDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Sub> snapshot;

  @override
  final List<SubQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SubDocumentSnapshot>> docChanges;
}

class SubQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Sub>
    implements SubDocumentSnapshot {
  SubQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Sub> snapshot;

  @override
  final Sub data;

  @override
  SubDocumentReference get reference {
    return SubDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AsCamelCaseCollectionReference
    implements
        AsCamelCaseQuery,
        FirestoreCollectionReference<AsCamelCase, AsCamelCaseQuerySnapshot> {
  factory AsCamelCaseCollectionReference(
    DocumentReference<Root> parent,
  ) = _$AsCamelCaseCollectionReference;

  static AsCamelCase fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return AsCamelCase.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    AsCamelCase value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<AsCamelCase> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  AsCamelCaseDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AsCamelCaseDocumentReference> add(AsCamelCase value);
}

class _$AsCamelCaseCollectionReference extends _$AsCamelCaseQuery
    implements AsCamelCaseCollectionReference {
  factory _$AsCamelCaseCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$AsCamelCaseCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('as-camel-case').withConverter(
            fromFirestore: AsCamelCaseCollectionReference.fromFirestore,
            toFirestore: AsCamelCaseCollectionReference.toFirestore,
          ),
    );
  }

  _$AsCamelCaseCollectionReference._(
    this.parent,
    CollectionReference<AsCamelCase> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AsCamelCase> get reference =>
      super.reference as CollectionReference<AsCamelCase>;

  @override
  AsCamelCaseDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AsCamelCaseDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AsCamelCaseDocumentReference> add(AsCamelCase value) {
    return reference
        .add(value)
        .then((ref) => AsCamelCaseDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AsCamelCaseCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AsCamelCaseDocumentReference extends FirestoreDocumentReference<
    AsCamelCase, AsCamelCaseDocumentSnapshot> {
  factory AsCamelCaseDocumentReference(
          DocumentReference<AsCamelCase> reference) =
      _$AsCamelCaseDocumentReference;

  DocumentReference<AsCamelCase> get reference;

  /// A reference to the [AsCamelCaseCollectionReference] containing this document.
  AsCamelCaseCollectionReference get parent {
    return _$AsCamelCaseCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AsCamelCaseDocumentSnapshot> snapshots();

  @override
  Future<AsCamelCaseDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$AsCamelCaseDocumentReference
    extends FirestoreDocumentReference<AsCamelCase, AsCamelCaseDocumentSnapshot>
    implements AsCamelCaseDocumentReference {
  _$AsCamelCaseDocumentReference(this.reference);

  @override
  final DocumentReference<AsCamelCase> reference;

  /// A reference to the [AsCamelCaseCollectionReference] containing this document.
  AsCamelCaseCollectionReference get parent {
    return _$AsCamelCaseCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AsCamelCaseDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AsCamelCaseDocumentSnapshot._);
  }

  @override
  Future<AsCamelCaseDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AsCamelCaseDocumentSnapshot._);
  }

  @override
  Future<AsCamelCaseDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AsCamelCaseDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$AsCamelCaseFieldMap['value']!:
            _$AsCamelCasePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$AsCamelCaseFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$AsCamelCaseFieldMap['value']!:
            _$AsCamelCasePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$AsCamelCaseFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AsCamelCaseDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AsCamelCaseQuery
    implements QueryReference<AsCamelCase, AsCamelCaseQuerySnapshot> {
  @override
  AsCamelCaseQuery limit(int limit);

  @override
  AsCamelCaseQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AsCamelCaseQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AsCamelCaseQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AsCamelCaseQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AsCamelCaseQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  AsCamelCaseQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });

  AsCamelCaseQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  });
}

class _$AsCamelCaseQuery
    extends QueryReference<AsCamelCase, AsCamelCaseQuerySnapshot>
    implements AsCamelCaseQuery {
  _$AsCamelCaseQuery(
    this._collection, {
    required Query<AsCamelCase> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AsCamelCaseQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AsCamelCaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AsCamelCaseQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AsCamelCaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AsCamelCaseQuery limit(int limit) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AsCamelCaseQuery limitToLast(int limit) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  AsCamelCaseQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AsCamelCaseQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AsCamelCaseQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AsCamelCaseQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AsCamelCaseFieldMap['value']!,
        isEqualTo: _$AsCamelCasePerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$AsCamelCasePerFieldToJson.value(isNotEqualTo),
        isLessThan: _$AsCamelCasePerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$AsCamelCasePerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$AsCamelCasePerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$AsCamelCasePerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$AsCamelCasePerFieldToJson.value(e)).toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$AsCamelCasePerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  AsCamelCaseQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AsCamelCaseQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AsCamelCaseDocumentSnapshot? startAtDocument,
    AsCamelCaseDocumentSnapshot? endAtDocument,
    AsCamelCaseDocumentSnapshot? endBeforeDocument,
    AsCamelCaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AsCamelCaseFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$AsCamelCasePerFieldToJson.value(startAt as num)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$AsCamelCasePerFieldToJson.value(startAfter as num)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$AsCamelCasePerFieldToJson.value(endAt as num)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$AsCamelCasePerFieldToJson.value(endBefore as num)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AsCamelCaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AsCamelCaseQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AsCamelCaseDocumentSnapshot
    extends FirestoreDocumentSnapshot<AsCamelCase> {
  AsCamelCaseDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AsCamelCase> snapshot;

  @override
  AsCamelCaseDocumentReference get reference {
    return AsCamelCaseDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AsCamelCase? data;
}

class AsCamelCaseQuerySnapshot extends FirestoreQuerySnapshot<AsCamelCase,
    AsCamelCaseQueryDocumentSnapshot> {
  AsCamelCaseQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AsCamelCaseQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AsCamelCase> snapshot,
  ) {
    final docs = snapshot.docs.map(AsCamelCaseQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AsCamelCaseDocumentSnapshot._,
      );
    }).toList();

    return AsCamelCaseQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AsCamelCaseDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AsCamelCase> snapshot;

  @override
  final List<AsCamelCaseQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AsCamelCaseDocumentSnapshot>> docChanges;
}

class AsCamelCaseQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AsCamelCase>
    implements AsCamelCaseDocumentSnapshot {
  AsCamelCaseQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AsCamelCase> snapshot;

  @override
  final AsCamelCase data;

  @override
  AsCamelCaseDocumentReference get reference {
    return AsCamelCaseDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CustomSubNameCollectionReference
    implements
        CustomSubNameQuery,
        FirestoreCollectionReference<CustomSubName,
            CustomSubNameQuerySnapshot> {
  factory CustomSubNameCollectionReference(
    DocumentReference<Root> parent,
  ) = _$CustomSubNameCollectionReference;

  static CustomSubName fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CustomSubName.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CustomSubName value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CustomSubName> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  CustomSubNameDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CustomSubNameDocumentReference> add(CustomSubName value);
}

class _$CustomSubNameCollectionReference extends _$CustomSubNameQuery
    implements CustomSubNameCollectionReference {
  factory _$CustomSubNameCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$CustomSubNameCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('custom-sub-name').withConverter(
            fromFirestore: CustomSubNameCollectionReference.fromFirestore,
            toFirestore: CustomSubNameCollectionReference.toFirestore,
          ),
    );
  }

  _$CustomSubNameCollectionReference._(
    this.parent,
    CollectionReference<CustomSubName> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<CustomSubName> get reference =>
      super.reference as CollectionReference<CustomSubName>;

  @override
  CustomSubNameDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CustomSubNameDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CustomSubNameDocumentReference> add(CustomSubName value) {
    return reference
        .add(value)
        .then((ref) => CustomSubNameDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomSubNameCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CustomSubNameDocumentReference
    extends FirestoreDocumentReference<CustomSubName,
        CustomSubNameDocumentSnapshot> {
  factory CustomSubNameDocumentReference(
          DocumentReference<CustomSubName> reference) =
      _$CustomSubNameDocumentReference;

  DocumentReference<CustomSubName> get reference;

  /// A reference to the [CustomSubNameCollectionReference] containing this document.
  CustomSubNameCollectionReference get parent {
    return _$CustomSubNameCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomSubNameDocumentSnapshot> snapshots();

  @override
  Future<CustomSubNameDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$CustomSubNameDocumentReference extends FirestoreDocumentReference<
    CustomSubName,
    CustomSubNameDocumentSnapshot> implements CustomSubNameDocumentReference {
  _$CustomSubNameDocumentReference(this.reference);

  @override
  final DocumentReference<CustomSubName> reference;

  /// A reference to the [CustomSubNameCollectionReference] containing this document.
  CustomSubNameCollectionReference get parent {
    return _$CustomSubNameCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomSubNameDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CustomSubNameDocumentSnapshot._);
  }

  @override
  Future<CustomSubNameDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CustomSubNameDocumentSnapshot._);
  }

  @override
  Future<CustomSubNameDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(CustomSubNameDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$CustomSubNameFieldMap['value']!:
            _$CustomSubNamePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomSubNameFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$CustomSubNameFieldMap['value']!:
            _$CustomSubNamePerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomSubNameFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomSubNameDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CustomSubNameQuery
    implements QueryReference<CustomSubName, CustomSubNameQuerySnapshot> {
  @override
  CustomSubNameQuery limit(int limit);

  @override
  CustomSubNameQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CustomSubNameQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CustomSubNameQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CustomSubNameQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomSubNameQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  CustomSubNameQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });

  CustomSubNameQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  });
}

class _$CustomSubNameQuery
    extends QueryReference<CustomSubName, CustomSubNameQuerySnapshot>
    implements CustomSubNameQuery {
  _$CustomSubNameQuery(
    this._collection, {
    required Query<CustomSubName> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CustomSubNameQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(CustomSubNameQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CustomSubNameQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CustomSubNameQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CustomSubNameQuery limit(int limit) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CustomSubNameQuery limitToLast(int limit) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  CustomSubNameQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomSubNameQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomSubNameQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomSubNameQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomSubNameFieldMap['value']!,
        isEqualTo: _$CustomSubNamePerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$CustomSubNamePerFieldToJson.value(isNotEqualTo),
        isLessThan: _$CustomSubNamePerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$CustomSubNamePerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$CustomSubNamePerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$CustomSubNamePerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$CustomSubNamePerFieldToJson.value(e))
            .toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$CustomSubNamePerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  CustomSubNameQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CustomSubNameQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomSubNameDocumentSnapshot? startAtDocument,
    CustomSubNameDocumentSnapshot? endAtDocument,
    CustomSubNameDocumentSnapshot? endBeforeDocument,
    CustomSubNameDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CustomSubNameFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$CustomSubNamePerFieldToJson.value(startAt as num)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$CustomSubNamePerFieldToJson.value(startAfter as num)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$CustomSubNamePerFieldToJson.value(endAt as num)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$CustomSubNamePerFieldToJson.value(endBefore as num)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CustomSubNameQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomSubNameQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CustomSubNameDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomSubName> {
  CustomSubNameDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CustomSubName> snapshot;

  @override
  CustomSubNameDocumentReference get reference {
    return CustomSubNameDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CustomSubName? data;
}

class CustomSubNameQuerySnapshot extends FirestoreQuerySnapshot<CustomSubName,
    CustomSubNameQueryDocumentSnapshot> {
  CustomSubNameQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CustomSubNameQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CustomSubName> snapshot,
  ) {
    final docs =
        snapshot.docs.map(CustomSubNameQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CustomSubNameDocumentSnapshot._,
      );
    }).toList();

    return CustomSubNameQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CustomSubNameDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CustomSubNameDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CustomSubNameDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CustomSubName> snapshot;

  @override
  final List<CustomSubNameQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CustomSubNameDocumentSnapshot>> docChanges;
}

class CustomSubNameQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CustomSubName>
    implements CustomSubNameDocumentSnapshot {
  CustomSubNameQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CustomSubName> snapshot;

  @override
  final CustomSubName data;

  @override
  CustomSubNameDocumentReference get reference {
    return CustomSubNameDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ThisIsACustomPrefixCollectionReference
    implements
        ThisIsACustomPrefixQuery,
        FirestoreCollectionReference<CustomClassPrefix,
            ThisIsACustomPrefixQuerySnapshot> {
  factory ThisIsACustomPrefixCollectionReference(
    DocumentReference<Root> parent,
  ) = _$ThisIsACustomPrefixCollectionReference;

  static CustomClassPrefix fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CustomClassPrefix.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CustomClassPrefix value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CustomClassPrefix> get reference;

  /// A reference to the containing [RootDocumentReference] if this is a subcollection.
  RootDocumentReference get parent;

  @override
  ThisIsACustomPrefixDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ThisIsACustomPrefixDocumentReference> add(CustomClassPrefix value);
}

class _$ThisIsACustomPrefixCollectionReference
    extends _$ThisIsACustomPrefixQuery
    implements ThisIsACustomPrefixCollectionReference {
  factory _$ThisIsACustomPrefixCollectionReference(
    DocumentReference<Root> parent,
  ) {
    return _$ThisIsACustomPrefixCollectionReference._(
      RootDocumentReference(parent),
      parent.collection('custom-class-prefix').withConverter(
            fromFirestore: ThisIsACustomPrefixCollectionReference.fromFirestore,
            toFirestore: ThisIsACustomPrefixCollectionReference.toFirestore,
          ),
    );
  }

  _$ThisIsACustomPrefixCollectionReference._(
    this.parent,
    CollectionReference<CustomClassPrefix> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final RootDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<CustomClassPrefix> get reference =>
      super.reference as CollectionReference<CustomClassPrefix>;

  @override
  ThisIsACustomPrefixDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ThisIsACustomPrefixDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ThisIsACustomPrefixDocumentReference> add(CustomClassPrefix value) {
    return reference
        .add(value)
        .then((ref) => ThisIsACustomPrefixDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ThisIsACustomPrefixCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ThisIsACustomPrefixDocumentReference
    extends FirestoreDocumentReference<CustomClassPrefix,
        ThisIsACustomPrefixDocumentSnapshot> {
  factory ThisIsACustomPrefixDocumentReference(
          DocumentReference<CustomClassPrefix> reference) =
      _$ThisIsACustomPrefixDocumentReference;

  DocumentReference<CustomClassPrefix> get reference;

  /// A reference to the [ThisIsACustomPrefixCollectionReference] containing this document.
  ThisIsACustomPrefixCollectionReference get parent {
    return _$ThisIsACustomPrefixCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ThisIsACustomPrefixDocumentSnapshot> snapshots();

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ThisIsACustomPrefixDocumentReference extends FirestoreDocumentReference<
        CustomClassPrefix, ThisIsACustomPrefixDocumentSnapshot>
    implements ThisIsACustomPrefixDocumentReference {
  _$ThisIsACustomPrefixDocumentReference(this.reference);

  @override
  final DocumentReference<CustomClassPrefix> reference;

  /// A reference to the [ThisIsACustomPrefixCollectionReference] containing this document.
  ThisIsACustomPrefixCollectionReference get parent {
    return _$ThisIsACustomPrefixCollectionReference(
      reference.parent.parent!.withConverter<Root>(
        fromFirestore: RootCollectionReference.fromFirestore,
        toFirestore: RootCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ThisIsACustomPrefixDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ThisIsACustomPrefixDocumentSnapshot._);
  }

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ThisIsACustomPrefixDocumentSnapshot._);
  }

  @override
  Future<ThisIsACustomPrefixDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(ThisIsACustomPrefixDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$CustomClassPrefixFieldMap['value']!:
            _$CustomClassPrefixPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomClassPrefixFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$CustomClassPrefixFieldMap['value']!:
            _$CustomClassPrefixPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$CustomClassPrefixFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ThisIsACustomPrefixDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ThisIsACustomPrefixQuery
    implements
        QueryReference<CustomClassPrefix, ThisIsACustomPrefixQuerySnapshot> {
  @override
  ThisIsACustomPrefixQuery limit(int limit);

  @override
  ThisIsACustomPrefixQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ThisIsACustomPrefixQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ThisIsACustomPrefixQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ThisIsACustomPrefixQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ThisIsACustomPrefixQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  ThisIsACustomPrefixQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });

  ThisIsACustomPrefixQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  });
}

class _$ThisIsACustomPrefixQuery
    extends QueryReference<CustomClassPrefix, ThisIsACustomPrefixQuerySnapshot>
    implements ThisIsACustomPrefixQuery {
  _$ThisIsACustomPrefixQuery(
    this._collection, {
    required Query<CustomClassPrefix> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ThisIsACustomPrefixQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ThisIsACustomPrefixQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ThisIsACustomPrefixQuery limit(int limit) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ThisIsACustomPrefixQuery limitToLast(int limit) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ThisIsACustomPrefixQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ThisIsACustomPrefixQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ThisIsACustomPrefixQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ThisIsACustomPrefixQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CustomClassPrefixFieldMap['value']!,
        isEqualTo: _$CustomClassPrefixPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$CustomClassPrefixPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$CustomClassPrefixPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$CustomClassPrefixPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$CustomClassPrefixPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$CustomClassPrefixPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$CustomClassPrefixPerFieldToJson.value(e))
            .toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$CustomClassPrefixPerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ThisIsACustomPrefixQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ThisIsACustomPrefixQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ThisIsACustomPrefixDocumentSnapshot? startAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endAtDocument,
    ThisIsACustomPrefixDocumentSnapshot? endBeforeDocument,
    ThisIsACustomPrefixDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CustomClassPrefixFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$CustomClassPrefixPerFieldToJson.value(startAt as num)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$CustomClassPrefixPerFieldToJson.value(startAfter as num)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$CustomClassPrefixPerFieldToJson.value(endAt as num)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$CustomClassPrefixPerFieldToJson.value(endBefore as num)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ThisIsACustomPrefixQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ThisIsACustomPrefixQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ThisIsACustomPrefixDocumentSnapshot
    extends FirestoreDocumentSnapshot<CustomClassPrefix> {
  ThisIsACustomPrefixDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CustomClassPrefix> snapshot;

  @override
  ThisIsACustomPrefixDocumentReference get reference {
    return ThisIsACustomPrefixDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CustomClassPrefix? data;
}

class ThisIsACustomPrefixQuerySnapshot extends FirestoreQuerySnapshot<
    CustomClassPrefix, ThisIsACustomPrefixQueryDocumentSnapshot> {
  ThisIsACustomPrefixQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ThisIsACustomPrefixQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CustomClassPrefix> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ThisIsACustomPrefixQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ThisIsACustomPrefixDocumentSnapshot._,
      );
    }).toList();

    return ThisIsACustomPrefixQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ThisIsACustomPrefixDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CustomClassPrefix> snapshot;

  @override
  final List<ThisIsACustomPrefixQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ThisIsACustomPrefixDocumentSnapshot>>
      docChanges;
}

class ThisIsACustomPrefixQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CustomClassPrefix>
    implements ThisIsACustomPrefixDocumentSnapshot {
  ThisIsACustomPrefixQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CustomClassPrefix> snapshot;

  @override
  final CustomClassPrefix data;

  @override
  ThisIsACustomPrefixDocumentReference get reference {
    return ThisIsACustomPrefixDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class EnumTestCollectionReference
    implements
        EnumTestQuery,
        FirestoreCollectionReference<EnumTest, EnumTestQuerySnapshot> {
  factory EnumTestCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$EnumTestCollectionReference;

  static EnumTest fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return EnumTest.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    EnumTest value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<EnumTest> get reference;

  @override
  EnumTestDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<EnumTestDocumentReference> add(EnumTest value);
}

class _$EnumTestCollectionReference extends _$EnumTestQuery
    implements EnumTestCollectionReference {
  factory _$EnumTestCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$EnumTestCollectionReference._(
      firestore.collection('enum-test').withConverter(
            fromFirestore: EnumTestCollectionReference.fromFirestore,
            toFirestore: EnumTestCollectionReference.toFirestore,
          ),
    );
  }

  _$EnumTestCollectionReference._(
    CollectionReference<EnumTest> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<EnumTest> get reference =>
      super.reference as CollectionReference<EnumTest>;

  @override
  EnumTestDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return EnumTestDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<EnumTestDocumentReference> add(EnumTest value) {
    return reference.add(value).then((ref) => EnumTestDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$EnumTestCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class EnumTestDocumentReference
    extends FirestoreDocumentReference<EnumTest, EnumTestDocumentSnapshot> {
  factory EnumTestDocumentReference(DocumentReference<EnumTest> reference) =
      _$EnumTestDocumentReference;

  DocumentReference<EnumTest> get reference;

  /// A reference to the [EnumTestCollectionReference] containing this document.
  EnumTestCollectionReference get parent {
    return _$EnumTestCollectionReference(reference.firestore);
  }

  @override
  Stream<EnumTestDocumentSnapshot> snapshots();

  @override
  Future<EnumTestDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    SimpleEnum nonNullable,
    FieldValue nonNullableFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    SimpleEnum nonNullable,
    FieldValue nonNullableFieldValue,
  });
}

class _$EnumTestDocumentReference
    extends FirestoreDocumentReference<EnumTest, EnumTestDocumentSnapshot>
    implements EnumTestDocumentReference {
  _$EnumTestDocumentReference(this.reference);

  @override
  final DocumentReference<EnumTest> reference;

  /// A reference to the [EnumTestCollectionReference] containing this document.
  EnumTestCollectionReference get parent {
    return _$EnumTestCollectionReference(reference.firestore);
  }

  @override
  Stream<EnumTestDocumentSnapshot> snapshots() {
    return reference.snapshots().map(EnumTestDocumentSnapshot._);
  }

  @override
  Future<EnumTestDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(EnumTestDocumentSnapshot._);
  }

  @override
  Future<EnumTestDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(EnumTestDocumentSnapshot._);
  }

  Future<void> update({
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
  }) async {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$EnumTestFieldMap['nonNullable']!:
            _$EnumTestPerFieldToJson.nonNullable(nonNullable as SimpleEnum),
      if (nonNullableFieldValue != null)
        _$EnumTestFieldMap['nonNullable']!: nonNullableFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? nonNullable = _sentinel,
    FieldValue? nonNullableFieldValue,
  }) {
    assert(
      nonNullable == _sentinel || nonNullableFieldValue == null,
      "Cannot specify both nonNullable and nonNullableFieldValue",
    );
    final json = {
      if (nonNullable != _sentinel)
        _$EnumTestFieldMap['nonNullable']!:
            _$EnumTestPerFieldToJson.nonNullable(nonNullable as SimpleEnum),
      if (nonNullableFieldValue != null)
        _$EnumTestFieldMap['nonNullable']!: nonNullableFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is EnumTestDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class EnumTestQuery
    implements QueryReference<EnumTest, EnumTestQuerySnapshot> {
  @override
  EnumTestQuery limit(int limit);

  @override
  EnumTestQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  EnumTestQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  EnumTestQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  EnumTestQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  EnumTestQuery whereNonNullable({
    SimpleEnum? isEqualTo,
    SimpleEnum? isNotEqualTo,
    SimpleEnum? isLessThan,
    SimpleEnum? isLessThanOrEqualTo,
    SimpleEnum? isGreaterThan,
    SimpleEnum? isGreaterThanOrEqualTo,
    bool? isNull,
    List<SimpleEnum>? whereIn,
    List<SimpleEnum>? whereNotIn,
  });

  EnumTestQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  });

  EnumTestQuery orderByNonNullable({
    bool descending = false,
    SimpleEnum startAt,
    SimpleEnum startAfter,
    SimpleEnum endAt,
    SimpleEnum endBefore,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  });
}

class _$EnumTestQuery extends QueryReference<EnumTest, EnumTestQuerySnapshot>
    implements EnumTestQuery {
  _$EnumTestQuery(
    this._collection, {
    required Query<EnumTest> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<EnumTestQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(EnumTestQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<EnumTestQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(EnumTestQuerySnapshot._fromQuerySnapshot);
  }

  @override
  EnumTestQuery limit(int limit) {
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EnumTestQuery limitToLast(int limit) {
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  EnumTestQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  EnumTestQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  EnumTestQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  EnumTestQuery whereNonNullable({
    SimpleEnum? isEqualTo,
    SimpleEnum? isNotEqualTo,
    SimpleEnum? isLessThan,
    SimpleEnum? isLessThanOrEqualTo,
    SimpleEnum? isGreaterThan,
    SimpleEnum? isGreaterThanOrEqualTo,
    bool? isNull,
    List<SimpleEnum>? whereIn,
    List<SimpleEnum>? whereNotIn,
  }) {
    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EnumTestFieldMap['nonNullable']!,
        isEqualTo: _$EnumTestPerFieldToJson.nonNullable(isEqualTo),
        isNotEqualTo: _$EnumTestPerFieldToJson.nonNullable(isNotEqualTo),
        isLessThan: _$EnumTestPerFieldToJson.nonNullable(isLessThan),
        isLessThanOrEqualTo:
            _$EnumTestPerFieldToJson.nonNullable(isLessThanOrEqualTo),
        isGreaterThan: _$EnumTestPerFieldToJson.nonNullable(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$EnumTestPerFieldToJson.nonNullable(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$EnumTestPerFieldToJson.nonNullable(e))
            .toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$EnumTestPerFieldToJson.nonNullable(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  EnumTestQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  EnumTestQuery orderByNonNullable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EnumTestDocumentSnapshot? startAtDocument,
    EnumTestDocumentSnapshot? endAtDocument,
    EnumTestDocumentSnapshot? endBeforeDocument,
    EnumTestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$EnumTestFieldMap['nonNullable']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$EnumTestPerFieldToJson.nonNullable(startAt as SimpleEnum)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$EnumTestPerFieldToJson.nonNullable(startAfter as SimpleEnum)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$EnumTestPerFieldToJson.nonNullable(endAt as SimpleEnum)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$EnumTestPerFieldToJson.nonNullable(endBefore as SimpleEnum)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EnumTestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$EnumTestQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class EnumTestDocumentSnapshot extends FirestoreDocumentSnapshot<EnumTest> {
  EnumTestDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<EnumTest> snapshot;

  @override
  EnumTestDocumentReference get reference {
    return EnumTestDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final EnumTest? data;
}

class EnumTestQuerySnapshot
    extends FirestoreQuerySnapshot<EnumTest, EnumTestQueryDocumentSnapshot> {
  EnumTestQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory EnumTestQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<EnumTest> snapshot,
  ) {
    final docs = snapshot.docs.map(EnumTestQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        EnumTestDocumentSnapshot._,
      );
    }).toList();

    return EnumTestQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<EnumTestDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    EnumTestDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<EnumTestDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<EnumTest> snapshot;

  @override
  final List<EnumTestQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<EnumTestDocumentSnapshot>> docChanges;
}

class EnumTestQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<EnumTest>
    implements EnumTestDocumentSnapshot {
  EnumTestQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<EnumTest> snapshot;

  @override
  final EnumTest data;

  @override
  EnumTestDocumentReference get reference {
    return EnumTestDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ExplicitPathCollectionReference
    implements
        ExplicitPathQuery,
        FirestoreCollectionReference<ExplicitPath, ExplicitPathQuerySnapshot> {
  factory ExplicitPathCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ExplicitPathCollectionReference;

  static ExplicitPath fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ExplicitPath.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ExplicitPath value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ExplicitPath> get reference;

  @override
  ExplicitPathDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ExplicitPathDocumentReference> add(ExplicitPath value);
}

class _$ExplicitPathCollectionReference extends _$ExplicitPathQuery
    implements ExplicitPathCollectionReference {
  factory _$ExplicitPathCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ExplicitPathCollectionReference._(
      firestore.collection('root/doc/path').withConverter(
            fromFirestore: ExplicitPathCollectionReference.fromFirestore,
            toFirestore: ExplicitPathCollectionReference.toFirestore,
          ),
    );
  }

  _$ExplicitPathCollectionReference._(
    CollectionReference<ExplicitPath> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ExplicitPath> get reference =>
      super.reference as CollectionReference<ExplicitPath>;

  @override
  ExplicitPathDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ExplicitPathDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ExplicitPathDocumentReference> add(ExplicitPath value) {
    return reference
        .add(value)
        .then((ref) => ExplicitPathDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitPathCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ExplicitPathDocumentReference extends FirestoreDocumentReference<
    ExplicitPath, ExplicitPathDocumentSnapshot> {
  factory ExplicitPathDocumentReference(
          DocumentReference<ExplicitPath> reference) =
      _$ExplicitPathDocumentReference;

  DocumentReference<ExplicitPath> get reference;

  /// A reference to the [ExplicitPathCollectionReference] containing this document.
  ExplicitPathCollectionReference get parent {
    return _$ExplicitPathCollectionReference(reference.firestore);
  }

  late final ExplicitSubPathCollectionReference sub =
      _$ExplicitSubPathCollectionReference(
    reference,
  );

  @override
  Stream<ExplicitPathDocumentSnapshot> snapshots();

  @override
  Future<ExplicitPathDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ExplicitPathDocumentReference extends FirestoreDocumentReference<
    ExplicitPath,
    ExplicitPathDocumentSnapshot> implements ExplicitPathDocumentReference {
  _$ExplicitPathDocumentReference(this.reference);

  @override
  final DocumentReference<ExplicitPath> reference;

  /// A reference to the [ExplicitPathCollectionReference] containing this document.
  ExplicitPathCollectionReference get parent {
    return _$ExplicitPathCollectionReference(reference.firestore);
  }

  late final ExplicitSubPathCollectionReference sub =
      _$ExplicitSubPathCollectionReference(
    reference,
  );

  @override
  Stream<ExplicitPathDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ExplicitPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitPathDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ExplicitPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitPathDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ExplicitPathDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ExplicitPathFieldMap['value']!:
            _$ExplicitPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitPathFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ExplicitPathFieldMap['value']!:
            _$ExplicitPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitPathFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ExplicitPathDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ExplicitPathQuery
    implements QueryReference<ExplicitPath, ExplicitPathQuerySnapshot> {
  @override
  ExplicitPathQuery limit(int limit);

  @override
  ExplicitPathQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ExplicitPathQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ExplicitPathQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ExplicitPathQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExplicitPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  ExplicitPathQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitPathQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  });
}

class _$ExplicitPathQuery
    extends QueryReference<ExplicitPath, ExplicitPathQuerySnapshot>
    implements ExplicitPathQuery {
  _$ExplicitPathQuery(
    this._collection, {
    required Query<ExplicitPath> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ExplicitPathQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ExplicitPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ExplicitPathQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ExplicitPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ExplicitPathQuery limit(int limit) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitPathQuery limitToLast(int limit) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitPathQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ExplicitPathQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitPathQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ExplicitPathFieldMap['value']!,
        isEqualTo: _$ExplicitPathPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$ExplicitPathPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$ExplicitPathPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$ExplicitPathPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$ExplicitPathPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$ExplicitPathPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$ExplicitPathPerFieldToJson.value(e)).toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$ExplicitPathPerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitPathQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ExplicitPathQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitPathDocumentSnapshot? startAtDocument,
    ExplicitPathDocumentSnapshot? endAtDocument,
    ExplicitPathDocumentSnapshot? endBeforeDocument,
    ExplicitPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ExplicitPathFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$ExplicitPathPerFieldToJson.value(startAt as num)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$ExplicitPathPerFieldToJson.value(startAfter as num)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$ExplicitPathPerFieldToJson.value(endAt as num)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$ExplicitPathPerFieldToJson.value(endBefore as num)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ExplicitPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitPathQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ExplicitPathDocumentSnapshot
    extends FirestoreDocumentSnapshot<ExplicitPath> {
  ExplicitPathDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ExplicitPath> snapshot;

  @override
  ExplicitPathDocumentReference get reference {
    return ExplicitPathDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ExplicitPath? data;
}

class ExplicitPathQuerySnapshot extends FirestoreQuerySnapshot<ExplicitPath,
    ExplicitPathQueryDocumentSnapshot> {
  ExplicitPathQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ExplicitPathQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ExplicitPath> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ExplicitPathQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ExplicitPathDocumentSnapshot._,
      );
    }).toList();

    return ExplicitPathQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ExplicitPathDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ExplicitPathDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ExplicitPathDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ExplicitPath> snapshot;

  @override
  final List<ExplicitPathQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ExplicitPathDocumentSnapshot>> docChanges;
}

class ExplicitPathQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ExplicitPath>
    implements ExplicitPathDocumentSnapshot {
  ExplicitPathQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ExplicitPath> snapshot;

  @override
  final ExplicitPath data;

  @override
  ExplicitPathDocumentReference get reference {
    return ExplicitPathDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ExplicitSubPathCollectionReference
    implements
        ExplicitSubPathQuery,
        FirestoreCollectionReference<ExplicitSubPath,
            ExplicitSubPathQuerySnapshot> {
  factory ExplicitSubPathCollectionReference(
    DocumentReference<ExplicitPath> parent,
  ) = _$ExplicitSubPathCollectionReference;

  static ExplicitSubPath fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ExplicitSubPath.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ExplicitSubPath value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<ExplicitSubPath> get reference;

  /// A reference to the containing [ExplicitPathDocumentReference] if this is a subcollection.
  ExplicitPathDocumentReference get parent;

  @override
  ExplicitSubPathDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ExplicitSubPathDocumentReference> add(ExplicitSubPath value);
}

class _$ExplicitSubPathCollectionReference extends _$ExplicitSubPathQuery
    implements ExplicitSubPathCollectionReference {
  factory _$ExplicitSubPathCollectionReference(
    DocumentReference<ExplicitPath> parent,
  ) {
    return _$ExplicitSubPathCollectionReference._(
      ExplicitPathDocumentReference(parent),
      parent.collection('sub').withConverter(
            fromFirestore: ExplicitSubPathCollectionReference.fromFirestore,
            toFirestore: ExplicitSubPathCollectionReference.toFirestore,
          ),
    );
  }

  _$ExplicitSubPathCollectionReference._(
    this.parent,
    CollectionReference<ExplicitSubPath> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ExplicitPathDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<ExplicitSubPath> get reference =>
      super.reference as CollectionReference<ExplicitSubPath>;

  @override
  ExplicitSubPathDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ExplicitSubPathDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ExplicitSubPathDocumentReference> add(ExplicitSubPath value) {
    return reference
        .add(value)
        .then((ref) => ExplicitSubPathDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitSubPathCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ExplicitSubPathDocumentReference
    extends FirestoreDocumentReference<ExplicitSubPath,
        ExplicitSubPathDocumentSnapshot> {
  factory ExplicitSubPathDocumentReference(
          DocumentReference<ExplicitSubPath> reference) =
      _$ExplicitSubPathDocumentReference;

  DocumentReference<ExplicitSubPath> get reference;

  /// A reference to the [ExplicitSubPathCollectionReference] containing this document.
  ExplicitSubPathCollectionReference get parent {
    return _$ExplicitSubPathCollectionReference(
      reference.parent.parent!.withConverter<ExplicitPath>(
        fromFirestore: ExplicitPathCollectionReference.fromFirestore,
        toFirestore: ExplicitPathCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExplicitSubPathDocumentSnapshot> snapshots();

  @override
  Future<ExplicitSubPathDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    num value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    num value,
    FieldValue valueFieldValue,
  });
}

class _$ExplicitSubPathDocumentReference extends FirestoreDocumentReference<
        ExplicitSubPath, ExplicitSubPathDocumentSnapshot>
    implements ExplicitSubPathDocumentReference {
  _$ExplicitSubPathDocumentReference(this.reference);

  @override
  final DocumentReference<ExplicitSubPath> reference;

  /// A reference to the [ExplicitSubPathCollectionReference] containing this document.
  ExplicitSubPathCollectionReference get parent {
    return _$ExplicitSubPathCollectionReference(
      reference.parent.parent!.withConverter<ExplicitPath>(
        fromFirestore: ExplicitPathCollectionReference.fromFirestore,
        toFirestore: ExplicitPathCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ExplicitSubPathDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ExplicitSubPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitSubPathDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ExplicitSubPathDocumentSnapshot._);
  }

  @override
  Future<ExplicitSubPathDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ExplicitSubPathDocumentSnapshot._);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ExplicitSubPathFieldMap['value']!:
            _$ExplicitSubPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitSubPathFieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$ExplicitSubPathFieldMap['value']!:
            _$ExplicitSubPathPerFieldToJson.value(value as num),
      if (valueFieldValue != null)
        _$ExplicitSubPathFieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ExplicitSubPathDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ExplicitSubPathQuery
    implements QueryReference<ExplicitSubPath, ExplicitSubPathQuerySnapshot> {
  @override
  ExplicitSubPathQuery limit(int limit);

  @override
  ExplicitSubPathQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ExplicitSubPathQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ExplicitSubPathQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ExplicitSubPathQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  ExplicitSubPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  });

  ExplicitSubPathQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });

  ExplicitSubPathQuery orderByValue({
    bool descending = false,
    num startAt,
    num startAfter,
    num endAt,
    num endBefore,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  });
}

class _$ExplicitSubPathQuery
    extends QueryReference<ExplicitSubPath, ExplicitSubPathQuerySnapshot>
    implements ExplicitSubPathQuery {
  _$ExplicitSubPathQuery(
    this._collection, {
    required Query<ExplicitSubPath> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ExplicitSubPathQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ExplicitSubPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ExplicitSubPathQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ExplicitSubPathQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ExplicitSubPathQuery limit(int limit) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ExplicitSubPathQuery limitToLast(int limit) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitSubPathQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ExplicitSubPathQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitSubPathQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitSubPathQuery whereValue({
    num? isEqualTo,
    num? isNotEqualTo,
    num? isLessThan,
    num? isLessThanOrEqualTo,
    num? isGreaterThan,
    num? isGreaterThanOrEqualTo,
    bool? isNull,
    List<num>? whereIn,
    List<num>? whereNotIn,
  }) {
    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ExplicitSubPathFieldMap['value']!,
        isEqualTo: _$ExplicitSubPathPerFieldToJson.value(isEqualTo),
        isNotEqualTo: _$ExplicitSubPathPerFieldToJson.value(isNotEqualTo),
        isLessThan: _$ExplicitSubPathPerFieldToJson.value(isLessThan),
        isLessThanOrEqualTo:
            _$ExplicitSubPathPerFieldToJson.value(isLessThanOrEqualTo),
        isGreaterThan: _$ExplicitSubPathPerFieldToJson.value(isGreaterThan),
        isGreaterThanOrEqualTo:
            _$ExplicitSubPathPerFieldToJson.value(isGreaterThanOrEqualTo),
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$ExplicitSubPathPerFieldToJson.value(e))
            .toList(),
        whereNotIn: whereNotIn
            ?.map((e) => _$ExplicitSubPathPerFieldToJson.value(e))
            .toList(),
      ),
      $queryCursor: $queryCursor,
    );
  }

  ExplicitSubPathQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ExplicitSubPathQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ExplicitSubPathDocumentSnapshot? startAtDocument,
    ExplicitSubPathDocumentSnapshot? endAtDocument,
    ExplicitSubPathDocumentSnapshot? endBeforeDocument,
    ExplicitSubPathDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ExplicitSubPathFieldMap['value']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [
          ...queryCursor.startAt,
          _$ExplicitSubPathPerFieldToJson.value(startAt as num)
        ],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [
          ...queryCursor.startAfter,
          _$ExplicitSubPathPerFieldToJson.value(startAfter as num)
        ],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [
          ...queryCursor.endAt,
          _$ExplicitSubPathPerFieldToJson.value(endAt as num)
        ],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [
          ...queryCursor.endBefore,
          _$ExplicitSubPathPerFieldToJson.value(endBefore as num)
        ],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ExplicitSubPathQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ExplicitSubPathQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ExplicitSubPathDocumentSnapshot
    extends FirestoreDocumentSnapshot<ExplicitSubPath> {
  ExplicitSubPathDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ExplicitSubPath> snapshot;

  @override
  ExplicitSubPathDocumentReference get reference {
    return ExplicitSubPathDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ExplicitSubPath? data;
}

class ExplicitSubPathQuerySnapshot extends FirestoreQuerySnapshot<
    ExplicitSubPath, ExplicitSubPathQueryDocumentSnapshot> {
  ExplicitSubPathQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ExplicitSubPathQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ExplicitSubPath> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ExplicitSubPathQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ExplicitSubPathDocumentSnapshot._,
      );
    }).toList();

    return ExplicitSubPathQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ExplicitSubPathDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ExplicitSubPath> snapshot;

  @override
  final List<ExplicitSubPathQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ExplicitSubPathDocumentSnapshot>>
      docChanges;
}

class ExplicitSubPathQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ExplicitSubPath>
    implements ExplicitSubPathDocumentSnapshot {
  ExplicitSubPathQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ExplicitSubPath> snapshot;

  @override
  final ExplicitSubPath data;

  @override
  ExplicitSubPathDocumentReference get reference {
    return ExplicitSubPathDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

void _$assertMinValidation(MinValidation instance) {
  const Min(0).validate(instance.intNbr, 'intNbr');
  const Max(42).validate(instance.intNbr, 'intNbr');
  const Min(10).validate(instance.doubleNbr, 'doubleNbr');
  const Min(-10).validate(instance.numNbr, 'numNbr');
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IgnoredGetter _$IgnoredGetterFromJson(Map<String, dynamic> json) =>
    IgnoredGetter(
      json['value'] as int,
    );

const _$IgnoredGetterFieldMap = <String, String>{
  'value': 'value',
  'count3': 'count3',
};

Map<String, dynamic> _$IgnoredGetterToJson(IgnoredGetter instance) =>
    <String, dynamic>{
      'value': instance.value,
      'count3': instance.count3,
    };

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      json['value'] as String,
    );

const _$ModelFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'value': instance.value,
    };

Nested _$NestedFromJson(Map<String, dynamic> json) => Nested(
      value: json['value'] == null
          ? null
          : Nested.fromJson(json['value'] as Map<String, dynamic>),
      simple: json['simple'] as int?,
      valueList: (json['valueList'] as List<dynamic>?)
          ?.map((e) => Nested.fromJson(e as Map<String, dynamic>))
          .toList(),
      boolList:
          (json['boolList'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      stringList: (json['stringList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      numList:
          (json['numList'] as List<dynamic>?)?.map((e) => e as num).toList(),
      objectList: json['objectList'] as List<dynamic>?,
      dynamicList: json['dynamicList'] as List<dynamic>?,
      enumList: (json['enumList'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SimpleEnumEnumMap, e))
          .toList(),
    );

const _$NestedFieldMap = <String, String>{
  'value': 'value',
  'simple': 'simple',
  'valueList': 'valueList',
  'boolList': 'boolList',
  'stringList': 'stringList',
  'numList': 'numList',
  'objectList': 'objectList',
  'dynamicList': 'dynamicList',
  'enumList': 'enumList',
};

Map<String, dynamic> _$NestedToJson(Nested instance) => <String, dynamic>{
      'value': instance.value,
      'simple': instance.simple,
      'valueList': instance.valueList,
      'boolList': instance.boolList,
      'stringList': instance.stringList,
      'numList': instance.numList,
      'objectList': instance.objectList,
      'dynamicList': instance.dynamicList,
      'enumList':
          instance.enumList?.map((e) => _$SimpleEnumEnumMap[e]!).toList(),
    };

const _$SimpleEnumEnumMap = {
  SimpleEnum.enum1: 'enum1',
  SimpleEnum.enum2: 'enum2',
  SimpleEnum.enum3: 'enum3',
};

EmptyModel _$EmptyModelFromJson(Map<String, dynamic> json) => EmptyModel();

const _$EmptyModelFieldMap = <String, String>{};

Map<String, dynamic> _$EmptyModelToJson(EmptyModel instance) =>
    <String, dynamic>{};

MinValidation _$MinValidationFromJson(Map<String, dynamic> json) =>
    MinValidation(
      json['intNbr'] as int,
      (json['doubleNbr'] as num).toDouble(),
      json['numNbr'] as num,
    );

const _$MinValidationFieldMap = <String, String>{
  'intNbr': 'intNbr',
  'doubleNbr': 'doubleNbr',
  'numNbr': 'numNbr',
};

Map<String, dynamic> _$MinValidationToJson(MinValidation instance) =>
    <String, dynamic>{
      'intNbr': instance.intNbr,
      'doubleNbr': instance.doubleNbr,
      'numNbr': instance.numNbr,
    };

Root _$RootFromJson(Map<String, dynamic> json) => Root(
      json['nonNullable'] as String,
      json['nullable'] as int?,
    );

const _$RootFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

Map<String, dynamic> _$RootToJson(Root instance) => <String, dynamic>{
      'nonNullable': instance.nonNullable,
      'nullable': instance.nullable,
    };

EnumTest _$EnumTestFromJson(Map<String, dynamic> json) => EnumTest(
      $enumDecode(_$SimpleEnumEnumMap, json['nonNullable']),
    );

const _$EnumTestFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
};

Map<String, dynamic> _$EnumTestToJson(EnumTest instance) => <String, dynamic>{
      'nonNullable': _$SimpleEnumEnumMap[instance.nonNullable]!,
    };

OptionalJson _$OptionalJsonFromJson(Map<String, dynamic> json) => OptionalJson(
      json['value'] as int,
    );

const _$OptionalJsonFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$OptionalJsonToJson(OptionalJson instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

MixedJson _$MixedJsonFromJson(Map<String, dynamic> json) => MixedJson(
      json['value'] as int,
    );

const _$MixedJsonFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$MixedJsonToJson(MixedJson instance) => <String, dynamic>{
      'value': instance.value,
    };

Sub _$SubFromJson(Map<String, dynamic> json) => Sub(
      json['nonNullable'] as String,
      json['nullable'] as int?,
    );

const _$SubFieldMap = <String, String>{
  'nonNullable': 'nonNullable',
  'nullable': 'nullable',
};

Map<String, dynamic> _$SubToJson(Sub instance) => <String, dynamic>{
      'nonNullable': instance.nonNullable,
      'nullable': instance.nullable,
    };

CustomSubName _$CustomSubNameFromJson(Map<String, dynamic> json) =>
    CustomSubName(
      json['value'] as num,
    );

const _$CustomSubNameFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$CustomSubNameToJson(CustomSubName instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

AsCamelCase _$AsCamelCaseFromJson(Map<String, dynamic> json) => AsCamelCase(
      json['value'] as num,
    );

const _$AsCamelCaseFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$AsCamelCaseToJson(AsCamelCase instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

CustomClassPrefix _$CustomClassPrefixFromJson(Map<String, dynamic> json) =>
    CustomClassPrefix(
      json['value'] as num,
    );

const _$CustomClassPrefixFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$CustomClassPrefixToJson(CustomClassPrefix instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

ExplicitPath _$ExplicitPathFromJson(Map<String, dynamic> json) => ExplicitPath(
      json['value'] as num,
    );

const _$ExplicitPathFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$ExplicitPathToJson(ExplicitPath instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

ExplicitSubPath _$ExplicitSubPathFromJson(Map<String, dynamic> json) =>
    ExplicitSubPath(
      json['value'] as num,
    );

const _$ExplicitSubPathFieldMap = <String, String>{
  'value': 'value',
};

Map<String, dynamic> _$ExplicitSubPathToJson(ExplicitSubPath instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
