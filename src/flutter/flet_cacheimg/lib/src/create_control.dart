import 'package:flet/flet.dart';
import 'package:flet_cacheimg/src/flet_cacheimg.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  final type = args.control.type.trim().toLowerCase();
  print("createControleeeee called with type: '$type'");

  if (type == "flet_cacheimg") {
    print("return FletCacheImgControl");
    return FletCacheImgControl(
      parent: args.parent,
      control: args.control,
    );
  }

  print("No matchiiing control for type: '$type', returning null");
  return null;
};

void ensureInitialized() {
  print("flet_cacheimg.ensureInitialized called");
}
