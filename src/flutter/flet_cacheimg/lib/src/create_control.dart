import 'package:flet/flet.dart';
import 'package:flet_cacheimg/src/flet_cacheimg.dart';

CreateControlFactory createControl = (CreateControlArgs args) {
  final type = args.control.type.trim().toLowerCase();
  print("createControleeeee called with type: '$type'");

    if (type == "flet_cacheimg") {
        print("return FletCacheImgControl");
        return FletCacheImgControl(
          key: args.key,
          parent: args.parent,
          children: args.children,
          control: args.control,
          parentDisabled: args.parentDisabled,
          parentAdaptive: args.parentAdaptive,
          backend: args.backend,
        );
    }

  print("No matchiiing control for type: '$type', returning null");
  return null;
};

void ensureInitialized() {
  print("flet_cacheimg.ensureInitialized called");
}
