import { type ClientSchema, a, defineData, defineFunction } from "@aws-amplify/backend";
import { postConfirmation } from "../auth/post-confirmation/resource";
import profileModel from "./models/profile.model";
import groupModel from "./models/group.model";
import profileGroupModel from "./models/profileGroup.model";
import chatModel from "./models/chat.model";

const schema = a
  .schema({
    Profile: profileModel,
    Group: groupModel,
    ProfileGroup: profileGroupModel,
    Chat: chatModel,
  })
  .authorization((allow) => [allow.resource(postConfirmation)]);

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
    lambdaAuthorizationMode: {
      function: defineFunction({
        entry: "./custom-authorizer.ts",
      }),
      timeToLiveInSeconds: 300,
    },
  },
});
