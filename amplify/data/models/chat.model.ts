import { a } from "@aws-amplify/backend";

export default a
  .model({
    message: a.string(),
    // Relationships
    profileId: a.id(),
    profile: a.belongsTo("Profile", "profileId"),

    groupId: a.id(),
    group: a.belongsTo("Group", "groupId"),
  })
  .authorization((allow) => [allow.authenticated()]);