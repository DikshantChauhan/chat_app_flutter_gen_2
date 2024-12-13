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


/** This is an auto generated class representing the ProfileGroup type in your schema. */
class ProfileGroup extends amplify_core.Model {
  static const classType = const _ProfileGroupModelType();
  final String id;
  final Profile? _profile;
  final Group? _group;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ProfileGroupModelIdentifier get modelIdentifier {
      return ProfileGroupModelIdentifier(
        id: id
      );
  }
  
  Profile? get profile {
    return _profile;
  }
  
  Group? get group {
    return _group;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ProfileGroup._internal({required this.id, profile, group, createdAt, updatedAt}): _profile = profile, _group = group, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ProfileGroup({String? id, Profile? profile, Group? group}) {
    return ProfileGroup._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      profile: profile,
      group: group);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileGroup &&
      id == other.id &&
      _profile == other._profile &&
      _group == other._group;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ProfileGroup {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("profile=" + (_profile != null ? _profile!.toString() : "null") + ", ");
    buffer.write("group=" + (_group != null ? _group!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ProfileGroup copyWith({Profile? profile, Group? group}) {
    return ProfileGroup._internal(
      id: id,
      profile: profile ?? this.profile,
      group: group ?? this.group);
  }
  
  ProfileGroup copyWithModelFieldValues({
    ModelFieldValue<Profile?>? profile,
    ModelFieldValue<Group?>? group
  }) {
    return ProfileGroup._internal(
      id: id,
      profile: profile == null ? this.profile : profile.value,
      group: group == null ? this.group : group.value
    );
  }
  
  ProfileGroup.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _profile = json['profile'] != null
        ? json['profile']['serializedData'] != null
          ? Profile.fromJson(new Map<String, dynamic>.from(json['profile']['serializedData']))
          : Profile.fromJson(new Map<String, dynamic>.from(json['profile']))
        : null,
      _group = json['group'] != null
        ? json['group']['serializedData'] != null
          ? Group.fromJson(new Map<String, dynamic>.from(json['group']['serializedData']))
          : Group.fromJson(new Map<String, dynamic>.from(json['group']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'profile': _profile?.toJson(), 'group': _group?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'profile': _profile,
    'group': _group,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ProfileGroupModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ProfileGroupModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final PROFILE = amplify_core.QueryField(
    fieldName: "profile",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Profile'));
  static final GROUP = amplify_core.QueryField(
    fieldName: "group",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Group'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ProfileGroup";
    modelSchemaDefinition.pluralName = "ProfileGroups";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ProfileGroup.PROFILE,
      isRequired: false,
      targetNames: ['profileId'],
      ofModelName: 'Profile'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: ProfileGroup.GROUP,
      isRequired: false,
      targetNames: ['groupId'],
      ofModelName: 'Group'
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

class _ProfileGroupModelType extends amplify_core.ModelType<ProfileGroup> {
  const _ProfileGroupModelType();
  
  @override
  ProfileGroup fromJson(Map<String, dynamic> jsonData) {
    return ProfileGroup.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ProfileGroup';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ProfileGroup] in your schema.
 */
class ProfileGroupModelIdentifier implements amplify_core.ModelIdentifier<ProfileGroup> {
  final String id;

  /** Create an instance of ProfileGroupModelIdentifier using [id] the primary key. */
  const ProfileGroupModelIdentifier({
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
  String toString() => 'ProfileGroupModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProfileGroupModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}