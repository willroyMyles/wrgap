import 'package:get/get.dart';
import 'package:wrgap/backend/models/model.feed.dart';
import 'package:wrgap/backend/store/store.data.dart';

class CreateFeedState extends GetxController {
  RxMap<String, dynamic> creationModel = RxMap({});
  final List<String> ignores = [
    "id",
    "createdAt",
    "updatedAt",
    "status",
    "section",
    "username",
    "userId",
    "userImage",
    "views",
  ];
  final List<String> dropDowns = ["category", "subCategory", "make", "model"];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    var mod = FeedModel(
        make: carsList[0][0],
        model: carsList[0][2],
        category: partsCategory[0][0],
        subCategory: partsCategory[0][1]);
    creationModel = mod.toMap().obs;
  }

  updateMake(String make) {
    var modelList = carsList.firstWhere((element) => element.contains(make),
        orElse: () => []);

    creationModel.updateAll((key, value) => key == "make"
        ? make
        : key == "model"
            ? modelList[0]
            : value);
  }

  updateCategory(String cat) {
    var catList = partsCategory.firstWhere((element) => element.contains(cat),
        orElse: () => []);

    creationModel.updateAll((key, value) => key == "category"
        ? cat
        : key == "subCategory"
            ? catList[0]
            : value);
  }

  onCreate() {
    var year = DateTime(int.tryParse("${creationModel['year']}") ?? 2010);
    creationModel["year"] = year.millisecondsSinceEpoch;
    var model = FeedModel.fromMap(creationModel);
    print(model);
  }
}
