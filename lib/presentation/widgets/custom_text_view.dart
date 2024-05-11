import 'package:flutter/cupertino.dart';

import '../../helper/constant/dimensions_resource.dart';

/// Reusable widget for application's Texts.
class CustomTextView extends StatelessWidget {
  const CustomTextView(
      {super.key,
      required String text,
      required TextStyle? textStyle,
      bool isEllipsis = false,
      TextAlign? align,
      this.maxLines,
      this.textScaleFactor = false,
      this.height,
      this.alignment,
      this.width,
      Function()? onTap})
      : _text = text,
        _textStyle = textStyle,
        _align = align,
        _isEllipsis = isEllipsis,
        _onTap = onTap;

  final String _text;
  final TextStyle? _textStyle;
  final TextAlign? _align;
  final bool _isEllipsis;
  final bool textScaleFactor;
  final int? maxLines;
  final Function()? _onTap;
  final double? height;
  final Alignment? alignment;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        alignment: alignment ?? Alignment.centerLeft,
        height: height,
        width: width,
        child: Text(
          _text,
          textScaleFactor: textScaleFactor ? DimensionsResource.D_1 : null,
          overflow: _isEllipsis ? TextOverflow.ellipsis : null,
          softWrap: true,
          style: _textStyle,
          maxLines: maxLines,
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: _align ?? TextAlign.center,
        ),
      ),
    );
  }
}
