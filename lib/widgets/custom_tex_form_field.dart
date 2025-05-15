import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helper/text_styles.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.controller,
      this.labelText,
      this.type,
      this.hint,
      this.title,
      this.fillColor,
      this.textAlign,
      // required this.textDirection,
      this.prefixIcon,
      this.prefixText,
      this.suffixIcon,
      this.onChange,
      this.errorColor,
      this.hintColor,
      this.borderColor,
      this.validation,
      required this.ispassword,
      required this.isEnabled,
      this.maxLines,
      this.labelColor,
      this.textColor});
  TextEditingController? controller;
  TextInputType? type;
  final Color? textColor;
  String? hint;
  String? labelText;
  final Color? labelColor;
  final String? title;
  Color? titleColor = Colors.black;
  Color? fillColor = const Color(0xffEFEFEF);
  TextDirection? textDirection;
  Widget? prefixIcon;
  String? prefixText;
  Widget? suffixIcon;
  Function(String)? onChange;
  Color? errorColor;
  bool ispassword;
  bool isEnabled;
  String? Function(String?)? validation;
  int? maxLines;
  Color? hintColor;
  Color? borderColor;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      child: Column(
        children: [
          title == null
              ? const SizedBox.shrink()
              : Row(
                  //textdirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(title ?? '',
                          style: TextStyles.textstyle16.copyWith(
                              color: titleColor, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
          TextFormField(
            textAlign: textAlign ?? TextAlign.start,

            enabled: isEnabled,
            maxLines: maxLines ?? 1,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: textColor ?? Colors.black,
                fontSize: 14.sp),
            //textdirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
            obscureText: ispassword,
            onChanged: onChange,
            controller: controller,
            validator: validation,
            keyboardType: type,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
              labelText: labelText,
              labelStyle: TextStyles.textstyle14
                  .copyWith(color: labelColor ?? Colors.white.withOpacity(0.6)),
              //  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              errorStyle: TextStyle(
                  color: errorColor, fontSize: 14, fontWeight: FontWeight.bold),
              hintStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: hintColor ?? Colors.white.withOpacity(0.6),
              ),
              // hintTextDirection:
              //     TextDirection.rtl : TextDirection.ltr,
              prefixText: prefixText,
              prefixStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
              filled: true,
              fillColor: fillColor ?? const Color(0x0fffffff),
              hintText: hint,

              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.white,
                  width: 0.8.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey,
                  width: 0.8.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey,
                  width: 0.8.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: borderColor ?? Colors.grey,
                  width: 0.5.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
