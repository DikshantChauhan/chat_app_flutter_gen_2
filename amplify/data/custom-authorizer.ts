import type { AppSyncAuthorizerHandler } from "aws-lambda";

type ResolverContext = {
  userid: string;
  info: string;
  more_info: string;
};

//event
// {
//     "authorizationToken": "ExampleAuthToken123123123", # Authorization token specified by client
//     "requestContext": {
//         "apiId": "aaaaaa123123123example123", # AppSync API ID
//         "accountId": "111122223333", # AWS Account ID
//         "requestId": "f4081827-1111-4444-5555-5cf4695f339f",
//         "queryString": "mutation CreateEvent {...}\n\nquery MyQuery {...}\n", # GraphQL query
//         "operationName": "MyQuery", # GraphQL operation name
//         "variables": {} # any additional variables supplied to the operation
//     }
// }

export const handler: AppSyncAuthorizerHandler<ResolverContext> = async (event) => {
  console.log(`EVENT: ${JSON.stringify(event)}`);
  const {
    authorizationToken,
    requestContext: { apiId, accountId },
  } = event;
  const response = {
    isAuthorized: authorizationToken === "custom-authorized",
    resolverContext: {
      // eslint-disable-next-line spellcheck/spell-checker
      userid: "user-id",
      info: "contextual information A",
      more_info: "contextual information B",
    },
    deniedFields: [
      `arn:aws:appsync:${process.env.AWS_REGION}:${accountId}:apis/${apiId}/types/Event/fields/comments`,
      `Mutation.createEvent`,
    ],
    ttlOverride: 300,
  };
  console.log(`RESPONSE: ${JSON.stringify(response, null, 2)}`);
  return response;
};

//response
// {
//   // required
//   "isAuthorized": true, // if "false" then an UnauthorizedException is raised, access is denied
//   "resolverContext": { "banana": "very yellow" }, // JSON object visible as $ctx.identity.resolverContext in VTL resolver templates

//   // optional
//   "deniedFields": ["TypeName.FieldName"], // Forces the fields to "null" when returned to the client
//   "ttlOverride": 10 // The number of seconds that the response should be cached for. Overrides default specified in "amplify update api"
// }