import { type ClientSchema, a, defineData } from "@aws-amplify/backend";

const schema = a.schema({
  Profile: a
    .model({
      username: a.string(),
      avatar: a.string(),
      status: a.string(),
      lastSeen: a.datetime(),
      // Relationships
      groups: a.hasMany("ProfileGroup", "profileId"),
      chats: a.hasMany("Chat", "profileId"),
    })
    .authorization((allow) => [allow.authenticated().to(["read"]), allow.owner()]),

  Group: a
    .model({
      name: a.string(),
      type: a.enum(["private", "group", "channel"]),
      // Relationships
      profiles: a.hasMany("ProfileGroup", "groupId"),
      chats: a.hasMany("Chat", "groupId"),
    })
    .authorization((allow) => [allow.authenticated().to(["read"]), allow.owner()]),

  ProfileGroup: a
    .model({
      profileId: a.id().required(),
      groupId: a.id().required(),

      profile: a.belongsTo("Profile", "profileId"),
      group: a.belongsTo("Group", "groupId"),
    })
    .authorization((allow) => [allow.authenticated()]),

  Chat: a
    .model({
      message: a.string(),
      // Relationships
      profileId: a.id(),
      profile: a.belongsTo("Profile", "profileId"),

      groupId: a.id(),
      group: a.belongsTo("Group", "groupId"),
    })
    .authorization((allow) => [allow.authenticated()]),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
  },
});
