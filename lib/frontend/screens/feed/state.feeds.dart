import 'package:get/get.dart';
import 'package:wrgap/backend/models/model.feed.dart';
import 'package:wrgap/backend/network/executors/generalExecutor.dart';

class FeedState extends GetxController {
  List<FeedModel> feeds = [];
  RxInt selectedIcon = 0.obs;
  final List<String> options = ["All", "wanted", "sale"];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFeedItems();
  }

  getFeedItems() async {
    feeds = await GE.feed_getFeed();
    refresh;
  }
}
