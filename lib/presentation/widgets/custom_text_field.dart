import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import '../../helper/theme/text_styles.dart';

/// Reusable widget for application's TextFields.
class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? errorText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final bool? enabled;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? hintColor;
  final int? maxLines;
  final int? minLines;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final AutovalidateMode? autoValidateMode;
  final InputBorder? errorBorder;
  final Function(String? value)? onChanged;
  final Function(String? value)? onFieldSubmitted;
  final String? Function(String? value)? validator;
  final InputBorder? border;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;
  final Function()? onEditingComplete;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? prefix;
  final TextAlignVertical? textAlignVertical;
  final bool? isDense;
  final BoxConstraints? prefixIconConstraints;

  const CustomTextField({
    super.key,
    this.readOnly,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText,
    this.enabled = true,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.prefix,
    this.onChanged,
    this.isDense,
    this.fillColor,
    this.maxLines,
    this.minLines,
    this.textStyle,
    this.textAlignVertical,
    this.hintStyle,
    this.errorStyle,
    this.hintColor,
    this.errorText,
    this.contentPadding,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
    this.autoValidateMode,
    this.errorBorder,
    this.border,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.borderRadius,
    this.enabledBorder,
    this.onTap,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.done,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      enabled: enabled,
      focusNode: focusNode,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      style: textStyle ??
          textTheme.labelMedium?.copyWith(
            fontSize: DimensionsResource.D_14.sp,
            fontWeight: FontWeight.w400,
            color: ColorsResource.TEXT_FIELD_FONT_COLOR,
          ),
      textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
      textAlign: TextAlign.left,
      onChanged: onChanged,
      validator: validator,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding:
            contentPadding ?? EdgeInsets.all(DimensionsResource.D_16.h),
        isDense: isDense ?? true,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide:
                    const BorderSide(color: ColorsResource.PRIMARY_COLOR)),
        enabledBorder: enabledBorder ??
            border ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide: const BorderSide(
                    color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
        border: border ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide: const BorderSide(
                    color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
        hintText: hintText,
        hintStyle: hintStyle ??
            textTheme.labelLarge?.copyWith(
              color: hintColor ?? ColorsResource.TEXT_FIELD_HINT_COLOR,
              fontWeight: FontWeight.normal,
            ),
        errorStyle: errorStyle ??
            textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.error),
        errorText: errorText,
        prefixIcon: prefixIcon,
        prefix: prefix,
        prefixIconConstraints: prefixIconConstraints,
        suffixIcon: suffixIcon,
        fillColor: !(enabled ?? false)
            ? ColorsResource.DISABLED_FIELD_COLOR
            : fillColor ?? ColorsResource.WHITE_COLOR,
        filled: true,
        errorMaxLines: 2,
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide: const BorderSide(
                    color: ColorsResource.TEXT_FIELD_BORDER_ERROR_COLOR)),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide:
                    const BorderSide(color: ColorsResource.PRIMARY_COLOR)),
        disabledBorder: disabledBorder ??
            OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(DimensionsResource.D_5.r),
                borderSide: const BorderSide(
                    color: ColorsResource.TEXT_FIELD_BORDER_COLOR)),
      ),
      cursorColor: ColorsResource.BLACK_COLOR,
      onFieldSubmitted: onFieldSubmitted,
      onEditingComplete: onEditingComplete,
    );
  }
}
