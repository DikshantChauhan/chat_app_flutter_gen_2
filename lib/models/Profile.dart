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


/** This is an auto generated class representing the Profile type in your schema. */
class Profile extends amplify_core.Model {
  static const classType = const _ProfileModelType();
  final String? _email;
  final String? _username;
  final String? _avatar;
  final String? _owner;
  final List<ProfileGroup>? _groups;
  final List<Chat>? _chats;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();
  
  ProfileModelIdentifier get modelIdentifier {
    try {
      return ProfileModelIdentifier(
        email: _email!
      );
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get username {
    return _username;
  }
  
  String? get avatar {
    return _avatar;
  }
  
  String? get owner {
    return _owner;
  }
  
  List<ProfileGroup>? get groups {
    return _groups;
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
  
  const Profile._internal({required email, username, avatar, owner, groups, chats, createdAt, updatedAt}): _email = email, _username = username, _avatar = avatar, _owner = owner, _groups = groups, _chats = chats, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Profile({required String email, String? username, String? avatar, String? owner, List<ProfileGroup>? groups, List<Chat>? chats}) {
    return Profile._internal(
      email: email,
      username: username,
      avatar: avatar,
      owner: owner,
      groups: groups != null ? List<ProfileGroup>.unmodifiable(groups) : groups,
      chats: chats != null ? List<Chat>.unmodifiable(chats) : chats);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Profile &&
      _email == other._email &&
      _username == other._username &&
      _avatar == other._avatar &&
      _owner == other._owner &&
      DeepCollectionEquality().equals(_groups, other._groups) &&
      DeepCollectionEquality().equals(_chats, other._chats);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Profile {");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("username=" + "$_username" + ", ");
    buffer.write("avatar=" + "$_avatar" + ", ");
    buffer.write("owner=" + "$_owner" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Profile copyWith({String? username, String? avatar, String? owner, List<ProfileGroup>? groups, List<Chat>? chats}) {
    return Profile._internal(
      email: email,
      username: username ?? this.username,
      avatar: avatar ?? this.avatar,
      owner: owner ?? this.owner,
      groups: groups ?? this.groups,
      chats: chats ?? this.chats);
  }
  
  Profile copyWithModelFieldValues({
    ModelFieldValue<String?>? username,
    ModelFieldValue<String?>? avatar,
    ModelFieldValue<String?>? owner,
    ModelFieldValue<List<ProfileGroup>?>? groups,
    ModelFieldValue<List<Chat>?>? chats
  }) {
    return Profile._internal(
      email: email,
      username: username == null ? this.username : username.value,
      avatar: avatar == null ? this.avatar : avatar.value,
      owner: owner == null ? this.owner : owner.value,
      groups: groups == null ? this.groups : groups.value,
      chats: chats == null ? this.chats : chats.value
    );
  }
  
  Profile.fromJson(Map<String, dynamic> json)  
    : _email = json['email'],
      _username = json['username'],
      _avatar = json['avatar'],
      _owner = json['owner'],
      _groups = json['groups']  is Map
        ? (json['groups']['items'] is List
          ? (json['groups']['items'] as List)
              .where((e) => e != null)
              .map((e) => ProfileGroup.fromJson(new Map<String, dynamic>.from(e)))
              .toList()
          : null)
        : (json['groups'] is List
          ? (json['groups'] as List)
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
    'email': _email, 'username': _username, 'avatar': _avatar, 'owner': _owner, 'groups': _groups?.map((ProfileGroup? e) => e?.toJson()).toList(), 'chats': _chats?.map((Chat? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'email': _email,
    'username': _username,
    'avatar': _avatar,
    'owner': _owner,
    'groups': _groups,
    'chats': _chats,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ProfileModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ProfileModelIdentifier>();
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final USERNAME = amplify_core.QueryField(fieldName: "username");
  static final AVATAR = amplify_core.QueryField(fieldName: "avatar");
  static final OWNER = amplify_core.QueryField(fieldName: "owner");
  static final GROUPS = amplify_core.QueryField(
    fieldName: "groups",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ProfileGroup'));
  static final CHATS = amplify_core.QueryField(
    fieldName: "chats",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Chat'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Profile";
    modelSchemaDefinition.pluralName = "Profiles";
    
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
      amplify_core.ModelIndex(fields: const ["email"], name: null)
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Profile.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Profile.USERNAME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Profile.AVATAR,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Profile.OWNER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Profile.GROUPS,
      isRequired: false,
      ofModelName: 'ProfileGroup',
      associatedKey: ProfileGroup.PROFILE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Profile.CHATS,
      isRequired: false,
      ofModelName: 'Chat',
      associatedKey: Chat.PROFILE
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

class _ProfileModelType extends amplify_core.ModelType<Profile> {
  const _ProfileModelType();
  
  @override
  Profile fromJson(Map<String, dynamic> jsonData) {
    return Profile.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Profile';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Profile] in your schema.
 */
class ProfileModelIdentifier implements amplify_core.ModelIdentifier<Profile> {
  final String email;

  /** Create an instance of ProfileModelIdentifier using [email] the primary key. */
  const ProfileModelIdentifier({
    required this.email});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'email': email
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ProfileModelIdentifier(email: $email)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProfileModelIdentifier &&
      email == other.email;
  }
  
  @override
  int get hashCode =>
    email.hashCode;
}