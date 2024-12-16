import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:testing_gen_2/models/ModelProvider.dart';

class GroupService {
  static Future<List<Group?>> listGroupsByName(String name) async {
    final request =
        ModelQueries.list(Group.classType, where: Group.NAME.beginsWith(name));

    final response = await Amplify.API.query(request: request).response;

    if (response.hasErrors || response.data == null) {
      throw "Error creating group ${response.errors}";
    }

    return response.data!.items;
  }

  static Future<Group> createGroup(String name) async {
    final group = Group(name: name);
    final request = ModelMutations.create(group);
    final response = await Amplify.API.mutate(request: request).response;

    if (response.hasErrors || response.data == null) {
      throw "Error creating group ${response.errors}";
    }

    return response.data!;
  }

  static Future<List<Group?>> fetchGroup() async {
    final request = ModelQueries.list(Group.classType);
    final response = await Amplify.API.query(request: request).response;

    if (response.hasErrors || response.data == null) {
      throw "Error creating group ${response.errors}";
    }

    return response.data!.items;
  }
}
