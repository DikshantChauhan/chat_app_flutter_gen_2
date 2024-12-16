import { a } from "@aws-amplify/backend";

export default a
  .model({
    name: a.string().required(),
    type: a.enum(["private", "group", "channel"]),
    // Relationships
    profiles: a.hasMany("ProfileGroup", "groupId"),
    chats: a.hasMany("Chat", "groupId"),
  })
  .secondaryIndexes((index) => [index("name").queryField("listByName")])
  .authorization((allow) => [allow.authenticated().to(["read"]), allow.owner()]);
