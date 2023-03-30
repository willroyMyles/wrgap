import 'package:faker/faker.dart';
import 'package:wrgap/backend/enum/enum.status.dart';
import 'package:wrgap/backend/models/model.feed.dart';

mixin FeedExecutor {
  final String _path = "/feed";

  Future<List<FeedModel>> feed_getFeed({Map<String, dynamic>? params}) async {
    try {
      List<FeedModel> list = [];
      for (var i = 0; i <= 10; i++) {
        var mod = FeedModel(status: Status.New);
        mod.body = "body text";
        mod.title = "title";
        mod.id = faker.guid.guid();
        list.add(mod);
      }

      return list;
    } catch (e) {
      return [];
    }
  }
}
