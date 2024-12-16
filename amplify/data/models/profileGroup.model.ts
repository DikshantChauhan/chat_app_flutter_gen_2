import { a } from "@aws-amplify/backend";

export default a
  .model({
    profileId: a.id().required(),
    groupId: a.id().required(),

    profile: a.belongsTo("Profile", "profileId"),
    group: a.belongsTo("Group", "groupId"),
  })
  .authorization((allow) => [allow.authenticated()]);
