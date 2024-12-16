import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:testing_gen_2/models/ModelProvider.dart';

class ProfileService {
  static Future<Profile> fetchMeProfile() async {
    final auth = await Amplify.Auth.getCurrentUser();
    dynamic signInDetails = auth.signInDetails;
    final String email = signInDetails.username;

    safePrint("starting fetching");

    final request = ModelQueries.get(
        Profile.classType, ProfileModelIdentifier(email: email));
    final response = await Amplify.API.query(request: request).response;

    safePrint("response.data");
    safePrint(response.data);

    if (response.hasErrors || response.data == null) {
      throw "Error fetching me profile ${response.errors}";
    }

    return response.data!;
  }
}
