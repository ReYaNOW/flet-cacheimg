import 'package:flet/flet.dart';
import 'package:flet_cacheimg/src/flet_cacheimg.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  print("createControl called with type: ${args.control.type}");

  switch (args.control.type) {
    case "flet_cacheimg":
      return FletCacheImgControl(
        parent: args.parent,
        control: args.control,
      );
    default:
      return null;
  }
};

void ensureInitialized() {
  print("flet_cacheimg.ensureInitialized called");
}
