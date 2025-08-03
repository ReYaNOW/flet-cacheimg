import 'package:flet/flet.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FletCacheImgControl extends StatelessWidget {
  final Control? parent;
  final Control control;

  const FletCacheImgControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    String imageUrl = control.attrString("src", "")!;
    double? width = control.attrDouble("width");
    double? height = control.attrDouble("height");
    BoxFit fit = parseBoxFit(control.attrString("fit", "")!);

    // 🔍 Лог для отладки
    print("FletCacheImgControl: src=$imageUrl width=$width height=$height fit=$fit");

    Widget myControl = CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) {
        print("⏳ Loading image: $url");
        return const Center(child: CircularProgressIndicator());
      },
      errorWidget: (context, url, error) {
        print("❌ Error loading image: $url\n$error");
        return const Icon(Icons.error);
      },
    );

    return constrainedControl(context, myControl, parent, control);
  }

  BoxFit parseBoxFit(String fit) {
    switch (fit.toLowerCase()) {
      case "fill":
        return BoxFit.fill;
      case "cover":
        return BoxFit.cover;
      case "fitwidth":
        return BoxFit.fitWidth;
      case "fitheight":
        return BoxFit.fitHeight;
      case "none":
        return BoxFit.none;
      case "scaledown":
        return BoxFit.scaleDown;
      default:
        return BoxFit.contain;
    }
  }
}
