// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarUserCollection on Isar {
  IsarCollection<IsarUser> get isarUsers => this.collection();
}

const IsarUserSchema = CollectionSchema(
  name: r'IsarUser',
  id: 7024295720452343342,
  properties: {
    r'cell': PropertySchema(
      id: 0,
      name: r'cell',
      type: IsarType.string,
    ),
    r'dateOfBirth': PropertySchema(
      id: 1,
      name: r'dateOfBirth',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 3,
      name: r'gender',
      type: IsarType.string,
    ),
    r'identification': PropertySchema(
      id: 4,
      name: r'identification',
      type: IsarType.object,
      target: r'IsarIdentification',
    ),
    r'location': PropertySchema(
      id: 5,
      name: r'location',
      type: IsarType.object,
      target: r'IsarLocation',
    ),
    r'login': PropertySchema(
      id: 6,
      name: r'login',
      type: IsarType.object,
      target: r'IsarLogin',
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.object,
      target: r'IsarName',
    ),
    r'nat': PropertySchema(
      id: 8,
      name: r'nat',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 9,
      name: r'phone',
      type: IsarType.string,
    ),
    r'picture': PropertySchema(
      id: 10,
      name: r'picture',
      type: IsarType.object,
      target: r'IsarPicture',
    )
  },
  estimateSize: _isarUserEstimateSize,
  serialize: _isarUserSerialize,
  deserialize: _isarUserDeserialize,
  deserializeProp: _isarUserDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'IsarName': IsarNameSchema,
    r'IsarLocation': IsarLocationSchema,
    r'IsarLogin': IsarLoginSchema,
    r'IsarIdentification': IsarIdentificationSchema,
    r'IsarPicture': IsarPictureSchema
  },
  getId: _isarUserGetId,
  getLinks: _isarUserGetLinks,
  attach: _isarUserAttach,
  version: '3.1.0+1',
);

int _isarUserEstimateSize(
  IsarUser object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cell.length * 3;
  bytesCount += 3 + object.dateOfBirth.length * 3;
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.gender.length * 3;
  bytesCount += 3 +
      IsarIdentificationSchema.estimateSize(
          object.identification, allOffsets[IsarIdentification]!, allOffsets);
  bytesCount += 3 +
      IsarLocationSchema.estimateSize(
          object.location, allOffsets[IsarLocation]!, allOffsets);
  bytesCount += 3 +
      IsarLoginSchema.estimateSize(
          object.login, allOffsets[IsarLogin]!, allOffsets);
  bytesCount += 3 +
      IsarNameSchema.estimateSize(
          object.name, allOffsets[IsarName]!, allOffsets);
  bytesCount += 3 + object.nat.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 +
      IsarPictureSchema.estimateSize(
          object.picture, allOffsets[IsarPicture]!, allOffsets);
  return bytesCount;
}

void _isarUserSerialize(
  IsarUser object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cell);
  writer.writeString(offsets[1], object.dateOfBirth);
  writer.writeString(offsets[2], object.email);
  writer.writeString(offsets[3], object.gender);
  writer.writeObject<IsarIdentification>(
    offsets[4],
    allOffsets,
    IsarIdentificationSchema.serialize,
    object.identification,
  );
  writer.writeObject<IsarLocation>(
    offsets[5],
    allOffsets,
    IsarLocationSchema.serialize,
    object.location,
  );
  writer.writeObject<IsarLogin>(
    offsets[6],
    allOffsets,
    IsarLoginSchema.serialize,
    object.login,
  );
  writer.writeObject<IsarName>(
    offsets[7],
    allOffsets,
    IsarNameSchema.serialize,
    object.name,
  );
  writer.writeString(offsets[8], object.nat);
  writer.writeString(offsets[9], object.phone);
  writer.writeObject<IsarPicture>(
    offsets[10],
    allOffsets,
    IsarPictureSchema.serialize,
    object.picture,
  );
}

IsarUser _isarUserDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUser(
    cell: reader.readString(offsets[0]),
    dateOfBirth: reader.readString(offsets[1]),
    email: reader.readString(offsets[2]),
    gender: reader.readString(offsets[3]),
    id: id,
    identification: reader.readObjectOrNull<IsarIdentification>(
          offsets[4],
          IsarIdentificationSchema.deserialize,
          allOffsets,
        ) ??
        IsarIdentification(),
    location: reader.readObjectOrNull<IsarLocation>(
          offsets[5],
          IsarLocationSchema.deserialize,
          allOffsets,
        ) ??
        IsarLocation(),
    login: reader.readObjectOrNull<IsarLogin>(
          offsets[6],
          IsarLoginSchema.deserialize,
          allOffsets,
        ) ??
        IsarLogin(),
    name: reader.readObjectOrNull<IsarName>(
          offsets[7],
          IsarNameSchema.deserialize,
          allOffsets,
        ) ??
        IsarName(),
    nat: reader.readString(offsets[8]),
    phone: reader.readString(offsets[9]),
    picture: reader.readObjectOrNull<IsarPicture>(
          offsets[10],
          IsarPictureSchema.deserialize,
          allOffsets,
        ) ??
        IsarPicture(),
  );
  return object;
}

P _isarUserDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<IsarIdentification>(
            offset,
            IsarIdentificationSchema.deserialize,
            allOffsets,
          ) ??
          IsarIdentification()) as P;
    case 5:
      return (reader.readObjectOrNull<IsarLocation>(
            offset,
            IsarLocationSchema.deserialize,
            allOffsets,
          ) ??
          IsarLocation()) as P;
    case 6:
      return (reader.readObjectOrNull<IsarLogin>(
            offset,
            IsarLoginSchema.deserialize,
            allOffsets,
          ) ??
          IsarLogin()) as P;
    case 7:
      return (reader.readObjectOrNull<IsarName>(
            offset,
            IsarNameSchema.deserialize,
            allOffsets,
          ) ??
          IsarName()) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<IsarPicture>(
            offset,
            IsarPictureSchema.deserialize,
            allOffsets,
          ) ??
          IsarPicture()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarUserGetId(IsarUser object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarUserGetLinks(IsarUser object) {
  return [];
}

void _isarUserAttach(IsarCollection<dynamic> col, Id id, IsarUser object) {
  object.id = id;
}

extension IsarUserQueryWhereSort on QueryBuilder<IsarUser, IsarUser, QWhere> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarUserQueryWhere on QueryBuilder<IsarUser, IsarUser, QWhereClause> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarUserQueryFilter
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {
  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cell',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cell',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cell',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cell',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> cellIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cell',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition>
      dateOfBirthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOfBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dateOfBirth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dateOfBirth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> dateOfBirthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition>
      dateOfBirthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dateOfBirth',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nat',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> natIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nat',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }
}

extension IsarUserQueryObject
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {
  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> identification(
      FilterQuery<IsarIdentification> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'identification');
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> location(
      FilterQuery<IsarLocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> login(
      FilterQuery<IsarLogin> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'login');
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> name(
      FilterQuery<IsarName> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'name');
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> picture(
      FilterQuery<IsarPicture> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'picture');
    });
  }
}

extension IsarUserQueryLinks
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {}

extension IsarUserQuerySortBy on QueryBuilder<IsarUser, IsarUser, QSortBy> {
  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByCell() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByCellDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByNat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByNatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension IsarUserQuerySortThenBy
    on QueryBuilder<IsarUser, IsarUser, QSortThenBy> {
  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByCell() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByCellDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cell', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByNat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByNatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nat', Sort.desc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }
}

extension IsarUserQueryWhereDistinct
    on QueryBuilder<IsarUser, IsarUser, QDistinct> {
  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByCell(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cell', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByDateOfBirth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfBirth', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByGender(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByNat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }
}

extension IsarUserQueryProperty
    on QueryBuilder<IsarUser, IsarUser, QQueryProperty> {
  QueryBuilder<IsarUser, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> cellProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cell');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> dateOfBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfBirth');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<IsarUser, IsarIdentification, QQueryOperations>
      identificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'identification');
    });
  }

  QueryBuilder<IsarUser, IsarLocation, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<IsarUser, IsarLogin, QQueryOperations> loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<IsarUser, IsarName, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> natProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nat');
    });
  }

  QueryBuilder<IsarUser, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<IsarUser, IsarPicture, QQueryOperations> pictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'picture');
    });
  }
}
