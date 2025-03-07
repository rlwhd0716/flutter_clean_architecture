// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CodesTable extends Codes with TableInfo<$CodesTable, CodeEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _codeDescriptorMeta =
      const VerificationMeta('codeDescriptor');
  @override
  late final GeneratedColumn<String> codeDescriptor = GeneratedColumn<String>(
      'code_descriptor', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _codeNameMeta =
      const VerificationMeta('codeName');
  @override
  late final GeneratedColumn<String> codeName = GeneratedColumn<String>(
      'code_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _upperCodeMeta =
      const VerificationMeta('upperCode');
  @override
  late final GeneratedColumn<String> upperCode = GeneratedColumn<String>(
      'upper_code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [code, codeDescriptor, codeName, upperCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'codes';
  @override
  VerificationContext validateIntegrity(Insertable<CodeEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('code_descriptor')) {
      context.handle(
          _codeDescriptorMeta,
          codeDescriptor.isAcceptableOrUnknown(
              data['code_descriptor']!, _codeDescriptorMeta));
    } else if (isInserting) {
      context.missing(_codeDescriptorMeta);
    }
    if (data.containsKey('code_name')) {
      context.handle(_codeNameMeta,
          codeName.isAcceptableOrUnknown(data['code_name']!, _codeNameMeta));
    } else if (isInserting) {
      context.missing(_codeNameMeta);
    }
    if (data.containsKey('upper_code')) {
      context.handle(_upperCodeMeta,
          upperCode.isAcceptableOrUnknown(data['upper_code']!, _upperCodeMeta));
    } else if (isInserting) {
      context.missing(_upperCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  CodeEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CodeEntry(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      codeDescriptor: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}code_descriptor'])!,
      codeName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code_name'])!,
      upperCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}upper_code'])!,
    );
  }

  @override
  $CodesTable createAlias(String alias) {
    return $CodesTable(attachedDatabase, alias);
  }
}

class CodeEntry extends DataClass implements Insertable<CodeEntry> {
  final String code;
  final String codeDescriptor;
  final String codeName;
  final String upperCode;
  const CodeEntry(
      {required this.code,
      required this.codeDescriptor,
      required this.codeName,
      required this.upperCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['code_descriptor'] = Variable<String>(codeDescriptor);
    map['code_name'] = Variable<String>(codeName);
    map['upper_code'] = Variable<String>(upperCode);
    return map;
  }

  CodesCompanion toCompanion(bool nullToAbsent) {
    return CodesCompanion(
      code: Value(code),
      codeDescriptor: Value(codeDescriptor),
      codeName: Value(codeName),
      upperCode: Value(upperCode),
    );
  }

  factory CodeEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CodeEntry(
      code: serializer.fromJson<String>(json['code']),
      codeDescriptor: serializer.fromJson<String>(json['codeDescriptor']),
      codeName: serializer.fromJson<String>(json['codeName']),
      upperCode: serializer.fromJson<String>(json['upperCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'codeDescriptor': serializer.toJson<String>(codeDescriptor),
      'codeName': serializer.toJson<String>(codeName),
      'upperCode': serializer.toJson<String>(upperCode),
    };
  }

  CodeEntry copyWith(
          {String? code,
          String? codeDescriptor,
          String? codeName,
          String? upperCode}) =>
      CodeEntry(
        code: code ?? this.code,
        codeDescriptor: codeDescriptor ?? this.codeDescriptor,
        codeName: codeName ?? this.codeName,
        upperCode: upperCode ?? this.upperCode,
      );
  CodeEntry copyWithCompanion(CodesCompanion data) {
    return CodeEntry(
      code: data.code.present ? data.code.value : this.code,
      codeDescriptor: data.codeDescriptor.present
          ? data.codeDescriptor.value
          : this.codeDescriptor,
      codeName: data.codeName.present ? data.codeName.value : this.codeName,
      upperCode: data.upperCode.present ? data.upperCode.value : this.upperCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CodeEntry(')
          ..write('code: $code, ')
          ..write('codeDescriptor: $codeDescriptor, ')
          ..write('codeName: $codeName, ')
          ..write('upperCode: $upperCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, codeDescriptor, codeName, upperCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CodeEntry &&
          other.code == this.code &&
          other.codeDescriptor == this.codeDescriptor &&
          other.codeName == this.codeName &&
          other.upperCode == this.upperCode);
}

class CodesCompanion extends UpdateCompanion<CodeEntry> {
  final Value<String> code;
  final Value<String> codeDescriptor;
  final Value<String> codeName;
  final Value<String> upperCode;
  final Value<int> rowid;
  const CodesCompanion({
    this.code = const Value.absent(),
    this.codeDescriptor = const Value.absent(),
    this.codeName = const Value.absent(),
    this.upperCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CodesCompanion.insert({
    required String code,
    required String codeDescriptor,
    required String codeName,
    required String upperCode,
    this.rowid = const Value.absent(),
  })  : code = Value(code),
        codeDescriptor = Value(codeDescriptor),
        codeName = Value(codeName),
        upperCode = Value(upperCode);
  static Insertable<CodeEntry> custom({
    Expression<String>? code,
    Expression<String>? codeDescriptor,
    Expression<String>? codeName,
    Expression<String>? upperCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (codeDescriptor != null) 'code_descriptor': codeDescriptor,
      if (codeName != null) 'code_name': codeName,
      if (upperCode != null) 'upper_code': upperCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CodesCompanion copyWith(
      {Value<String>? code,
      Value<String>? codeDescriptor,
      Value<String>? codeName,
      Value<String>? upperCode,
      Value<int>? rowid}) {
    return CodesCompanion(
      code: code ?? this.code,
      codeDescriptor: codeDescriptor ?? this.codeDescriptor,
      codeName: codeName ?? this.codeName,
      upperCode: upperCode ?? this.upperCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (codeDescriptor.present) {
      map['code_descriptor'] = Variable<String>(codeDescriptor.value);
    }
    if (codeName.present) {
      map['code_name'] = Variable<String>(codeName.value);
    }
    if (upperCode.present) {
      map['upper_code'] = Variable<String>(upperCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CodesCompanion(')
          ..write('code: $code, ')
          ..write('codeDescriptor: $codeDescriptor, ')
          ..write('codeName: $codeName, ')
          ..write('upperCode: $upperCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CodesTable codes = $CodesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [codes];
}

typedef $$CodesTableCreateCompanionBuilder = CodesCompanion Function({
  required String code,
  required String codeDescriptor,
  required String codeName,
  required String upperCode,
  Value<int> rowid,
});
typedef $$CodesTableUpdateCompanionBuilder = CodesCompanion Function({
  Value<String> code,
  Value<String> codeDescriptor,
  Value<String> codeName,
  Value<String> upperCode,
  Value<int> rowid,
});

class $$CodesTableFilterComposer extends Composer<_$AppDatabase, $CodesTable> {
  $$CodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get codeDescriptor => $composableBuilder(
      column: $table.codeDescriptor,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get codeName => $composableBuilder(
      column: $table.codeName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get upperCode => $composableBuilder(
      column: $table.upperCode, builder: (column) => ColumnFilters(column));
}

class $$CodesTableOrderingComposer
    extends Composer<_$AppDatabase, $CodesTable> {
  $$CodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get codeDescriptor => $composableBuilder(
      column: $table.codeDescriptor,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get codeName => $composableBuilder(
      column: $table.codeName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get upperCode => $composableBuilder(
      column: $table.upperCode, builder: (column) => ColumnOrderings(column));
}

class $$CodesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CodesTable> {
  $$CodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get codeDescriptor => $composableBuilder(
      column: $table.codeDescriptor, builder: (column) => column);

  GeneratedColumn<String> get codeName =>
      $composableBuilder(column: $table.codeName, builder: (column) => column);

  GeneratedColumn<String> get upperCode =>
      $composableBuilder(column: $table.upperCode, builder: (column) => column);
}

class $$CodesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CodesTable,
    CodeEntry,
    $$CodesTableFilterComposer,
    $$CodesTableOrderingComposer,
    $$CodesTableAnnotationComposer,
    $$CodesTableCreateCompanionBuilder,
    $$CodesTableUpdateCompanionBuilder,
    (CodeEntry, BaseReferences<_$AppDatabase, $CodesTable, CodeEntry>),
    CodeEntry,
    PrefetchHooks Function()> {
  $$CodesTableTableManager(_$AppDatabase db, $CodesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CodesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CodesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CodesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> code = const Value.absent(),
            Value<String> codeDescriptor = const Value.absent(),
            Value<String> codeName = const Value.absent(),
            Value<String> upperCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CodesCompanion(
            code: code,
            codeDescriptor: codeDescriptor,
            codeName: codeName,
            upperCode: upperCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String code,
            required String codeDescriptor,
            required String codeName,
            required String upperCode,
            Value<int> rowid = const Value.absent(),
          }) =>
              CodesCompanion.insert(
            code: code,
            codeDescriptor: codeDescriptor,
            codeName: codeName,
            upperCode: upperCode,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CodesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CodesTable,
    CodeEntry,
    $$CodesTableFilterComposer,
    $$CodesTableOrderingComposer,
    $$CodesTableAnnotationComposer,
    $$CodesTableCreateCompanionBuilder,
    $$CodesTableUpdateCompanionBuilder,
    (CodeEntry, BaseReferences<_$AppDatabase, $CodesTable, CodeEntry>),
    CodeEntry,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CodesTableTableManager get codes =>
      $$CodesTableTableManager(_db, _db.codes);
}
