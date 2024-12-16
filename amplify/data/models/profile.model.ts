import { a } from "@aws-amplify/backend";

export default a.model({
  email: a.string().required(),
  username: a.string(),
  avatar: a.string(),
  owner: a.string().authorization((allow) => [allow.owner().to(["read"])]),
  // Relationships
  groups: a.hasMany("ProfileGroup", "profileId"),
  chats: a.hasMany("Chat", "profileId"),
})
  .identifier(["email"])
  .authorization((allow) => [allow.authenticated().to(["read"]), allow.owner()]);
