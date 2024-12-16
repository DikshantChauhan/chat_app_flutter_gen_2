/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Group type in your schema. */
class Group extends amplify_core.Model {
  static const classType = const _GroupModelType();
  final String id;
  final String? _name;
  final GroupType? _type;
  final List<ProfileGroup>? _profiles;
  final List<Chat>? _chats;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GroupModelIdentifier get modelIdentifier {
      return GroupModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  GroupType? get type {
    return _type;
  }
  
  List<ProfileGroup>? get profiles {
    return _profiles;
  }
  
  List<Chat>? get chats {
    return _chats;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Group._internal({required this.id, required name, type, profiles, chats, createdAt, updatedAt}): _name = name, _type = type, _profiles = profiles, _chats = chats, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Group({String? id, required String name, GroupType? type, List<ProfileGroup>? profiles, List<Chat>? chats}) {
    return Group._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      type: type,
      profiles: profiles != null ? List<ProfileGroup>.unmodifiable(profiles) : profiles,
      chats: chats != null ? List<Chat>.unmodifiable(chats) : chats);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Group &&
      id == other.id &&
      _name == other._name &&
      _type == other._type &&
      DeepCollectionEquality().equals(_profiles, other._profiles) &&
      DeepCollectionEquality().equals(_chats, other._chats);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Group {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Group copyWith({String? name, GroupType? type, List<ProfileGroup>? profiles, List<Chat>? chats}) {
    return Group._internal(
      id: id,
      name: name ?? this.name,
      type: type ?? this.type,
      profiles: profiles ?? this.profiles,
      chats: chats ?? this.chats);
  }
  
  Group copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<GroupType?>? type,
    ModelFieldValue<List<ProfileGroup>?>? profiles,
    ModelFieldValue<List<Chat>?>? chats
  }) {
    return Group._internal(
      id: id,
      name: name == null ? this.name : name.value,
      type: type == null ? this.type : type.value,
      profiles: profiles == null ? this.profiles : profiles.value,
      chats: chats == null ? this.chats : chats.value
    );
  }
  
  Group.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _type = amplify_core.enumFromString<GroupType>(json['type'], GroupType.values),
      _profiles = json['profiles']  is Map
        ? (json['profiles']['items'] is List
          ? (json['profiles']['items'] as List)
              .where((e) => e != null)
              .map((e) => ProfileGroup.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['profiles'] is List
          ? (json['profiles'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => ProfileGroup.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _chats = json['chats']  is Map
        ? (json['chats']['items'] is List
          ? (json['chats']['items'] as List)
              .where((e) => e != null)
              .map((e) => Chat.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['chats'] is List
          ? (json['chats'] as List)
              .where((e) => e?['serializedData'] != null)
              .map((e) => Chat.fromJson(new Map<String, dynamic>.from(e?['serializedData'])))
              .toList()
          : null),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'type': amplify_core.enumToString(_type), 'profiles': _profiles?.map((ProfileGroup? e) => e?.toJson()).toList(), 'chats': _chats?.map((Chat? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'type': _type,
    'profiles': _profiles,
    'chats': _chats,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<GroupModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<GroupModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final PROFILES = amplify_core.QueryField(
    fieldName: "profiles",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ProfileGroup'));
  static final CHATS = amplify_core.QueryField(
    fieldName: "chats",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Chat'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Group";
    modelSchemaDefinition.pluralName = "Groups";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["name"], name: "groupsByName")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Group.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Group.TYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Group.PROFILES,
      isRequired: false,
      ofModelName: 'ProfileGroup',
      associatedKey: ProfileGroup.GROUP
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Group.CHATS,
      isRequired: false,
      ofModelName: 'Chat',
      associatedKey: Chat.GROUP
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _GroupModelType extends amplify_core.ModelType<Group> {
  const _GroupModelType();
  
  @override
  Group fromJson(Map<String, dynamic> jsonData) {
    return Group.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Group';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Group] in your schema.
 */
class GroupModelIdentifier implements amplify_core.ModelIdentifier<Group> {
  final String id;

  /** Create an instance of GroupModelIdentifier using [id] the primary key. */
  const GroupModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'GroupModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GroupModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}