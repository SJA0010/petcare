import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
  static var pinkcolor = const Color(0xffFF835D);
  static var lightpink = const Color.fromARGB(255, 250, 187, 168);
  static var bluecolor = const Color(0xff95E8E4);
  static var greencolor = const Color(0xff005551);
  static var primary = Colors.black;

  static Widget largeText(
    String? text, {
    var fontSize = 18.0,
    Color? textColor,
    var fontFamily,
    var fontWeight,
    var isCentered = false,
    var maxLine = 1,
    var latterSpacing = 0.5,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
  }) {
    return Text(
      textAllCaps ? text!.toUpperCase() : text!,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor ?? primary,
        height: 1.5,
        letterSpacing: latterSpacing,
        decoration:
            lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }

  static Widget appBar(
      String? text, var height, BuildContext context, var width,
      {bool pop = false}) {
    return SizedBox(
      height: height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            // onTap: pop == true
            //     ? () {
            //         Navigator.pop(context);
            //       }
            //     : () {},
            child: Container(
              height: height * 0.04,
              width: width * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset: const Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 3,
                    blurRadius: 15,
                    offset: const Offset(5, 0),
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.7,
            height: height * 0.15,
            child: Center(
              child: Stack(
                children: [
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 35,
                      height: 0.8,
                      fontFamily: GoogleFonts.coiny().fontFamily,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 35,
                      height: 0.8,
                      fontFamily: GoogleFonts.coiny().fontFamily,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1.5
                        ..color = Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox()
        ],
      ),
    );
  }

  static Widget heading(
    String text, {
    var fontSize = 16.0,
    double height = 25,
    double width = 150,
    Color? textColor,
    var fontFamily,
    var fontWeight,
    var isCentered = false,
    var maxLine = 1,
    var latterSpacing = 0.5,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
  }) {
    return SizedBox(
      height: height,
      width: width,
      child: Text(
        textAllCaps ? text.toUpperCase() : text,
        textAlign: isCentered ? TextAlign.center : TextAlign.start,
        maxLines: isLongText ? null : maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor ?? Apptheme.primary,
          height: 1.5,
          letterSpacing: latterSpacing,
          decoration:
              lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
    );
  }

  static Widget smalltext(
    String? text, {
    var fontSize = 14.0,
    Color? textColor,
    var fontFamily,
    var isCentered = false,
    var maxLine = 1,
    var latterSpacing = 0.5,
    bool textAllCaps = false,
    var isLongText = false,
    bool lineThrough = false,
  }) {
    return Text(
      textAllCaps ? text!.toUpperCase() : text!,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        color: textColor ?? Apptheme.primary,
        height: 1.5,
        letterSpacing: latterSpacing,
        decoration:
            lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }

  static Widget button(String? text, var height, var width, IconData? icon,
      {Color? color, Color? textcolor, int size = 12, Widget? lasticon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height * 0.05,
          width: icon == null ? width * 0.2 : width * 0.37,
          decoration: BoxDecoration(
              border: Border.all(width: 2, color: color ?? Apptheme.pinkcolor),
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: 15,
                ),
              Text(
                text!,
                style: GoogleFonts.coiny(
                    fontSize: size.toDouble(),
                    color: textcolor ?? Colors.black),
              ),
              const SizedBox(),
              if (lasticon != null)
                const SizedBox(
                  width: 100,
                ),
              if (lasticon != null) lasticon
            ],
          ),
        ),
      ],
    );
  }

  static Future<Object?> alert(
    BuildContext context,
    String? text,
    var height,
    var width,
  ) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        // Future.delayed(const Duration(microseconds: 10000), () {
        //   Navigator.pop(context);
        // });
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              height: height * 0.28,
              width: width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black54),
                  color: Apptheme.bluecolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.18,
                    width: width * 0.7,
                    child: Text(
                      textAlign: TextAlign.center,
                      text!,
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.075,
                    width: width * 0.6,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.055,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Text(
                            "Confirm",
                            style: GoogleFonts.coiny(fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.055,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Text(
                            "Delete",
                            style: GoogleFonts.coiny(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<Object?> alert1(
    BuildContext context,
    String? text,
    var height,
    var width,
  ) {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              height: height * 0.13,
              width: width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Apptheme.pinkcolor),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  // const
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 15,
                            child: Icon(
                              Icons.done_outlined,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.075,
                    width: width * 0.6,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.055,
                          width: width * 0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Text(
                            "",
                            style: GoogleFonts.coiny(fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.055,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Text(
                            "100",
                            style: GoogleFonts.coiny(fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.055,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(27)),
                          child: Text(
                            "SAR",
                            style: GoogleFonts.coiny(
                                fontSize: 15, color: Apptheme.pinkcolor),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static BoxDecoration boxDecoration(
      {double radius = 2,
      Color color = Colors.transparent,
      Color? bgColor,
      var showShadow = false}) {
    return BoxDecoration(
      color: bgColor ?? Colors.grey[300],
      boxShadow: showShadow
          ? [BoxShadow(color: bgColor!)]
          : [const BoxShadow(color: Colors.transparent)],
      border: Border.all(color: color),
      borderRadius: BorderRadius.all(Radius.circular(radius)),
    );
  }

  static Container smallcontainer(
      {double radius = 2,
      bordercolor = Colors.transparent,
      Color color = Colors.transparent,
      Color? bgColor,
      Widget? child,
      image = "",
      var showShadow = false,
      required height,
      required width}) {
    return Container(
      height: height * 0.025,
      width: width * 0.02,
      decoration: BoxDecoration(
        image: image != ""
            ? DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)
            : null,
        color: bgColor ?? Colors.grey[300],
        boxShadow: showShadow
            ? [BoxShadow(color: bgColor!)]
            : [const BoxShadow(color: Colors.transparent)],
        border: Border.all(color: bordercolor),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
      child: child,
    );
  }

  static SizedBox textformfield({
    required double width,
    required double height,
    Function(String)? onChanged,
    ValueChanged<String>? onFieldSubmitted,
    TextEditingController? controller,
    String? hinttext,
    Widget? prefixIcon,
    bool isWeb = false,
    bool isPassword = false,
    bool obscureText = false,
    String? labelText,
    bool showBorder = true,
    double borderRadius = 5.0,
    Color? borderColor,
    Color? focusedBorderColor,
    Color? errorBorderColor,
    Color? fillColor,
    Color? labelColor,
    Color? enableborder,
    TextStyle? labelStyle,
    Color? hintTextColor,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
    String? initialValue,
    int? maxLength,
    bool enabled = true,
    bool readOnly = false,
    bool autocorrect = true,
    bool enableSuggestions = true,
    TextInputAction textInputAction = TextInputAction.done,
    Function(String?)? onSaved,
    FocusNode? focusNode,
    int? maxLines,
    int? minLines,
    EdgeInsetsGeometry? contentPadding,
    TextCapitalization textCapitalization = TextCapitalization.none,
    AutovalidateMode? autovalidateMode,
    Key? key,
  }) {
    return SizedBox(
      width: width * 0.9,
      height: height * 0.04,
      child: TextFormField(
        key: key,
        style: const TextStyle(fontSize: 12.0),
        initialValue: initialValue,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        controller: controller,
        autofocus: false,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        obscureText: obscureText && isPassword,
        validator: validator,
        maxLength: maxLength,
        enabled: enabled,
        readOnly: readOnly,
        autocorrect: autocorrect,
        enableSuggestions: enableSuggestions,
        textInputAction: textInputAction,
        onSaved: onSaved,
        focusNode: focusNode,
        maxLines: maxLines,
        minLines: minLines,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
          hintText: hinttext,
          contentPadding:
              contentPadding ?? const EdgeInsets.fromLTRB(5.0, 0, 0, 5.0),
          border: showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                    color: borderColor ?? Colors.black45,
                    width: 1.5,
                  ),
                )
              : InputBorder.none,
          filled: true,
          fillColor: fillColor ?? Colors.transparent,
          labelText: labelText ?? hinttext,
          labelStyle: labelStyle ??
              TextStyle(
                color: labelColor ?? Colors.black,
                fontSize: isWeb ? width * 0.012 : width * 0.021,
                // fontWeight: FontWeight.w500,
              ),
          hintStyle: TextStyle(
            color: hintTextColor ?? Colors.black,
            fontSize: isWeb ? width * 0.012 : width * 0.032,
          ),
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10),
                  child: prefixIcon,
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: focusedBorderColor ?? Colors.transparent,
              width: 1.5,
              style: BorderStyle.solid,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: errorBorderColor ?? Colors.transparent,
              width: 1.5,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          enabledBorder: enableborder != null
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                    color: enableborder,
                    width: 1.5,
                  ),
                )
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.5,
                  ),
                ),
        ),
      ),
    );
  }

  static SizedBox textfield({
    required double width,
    required double height,
    Function(String)? onChanged,
    ValueChanged<String>? onFieldSubmitted,
    TextEditingController? controller,
    String? hinttext,
    Widget? prefixIcon,
    bool isWeb = false,
    bool isPassword = false,
    bool obscureText = false,
    String? labelText,
    bool showBorder = true,
    double borderRadius = 5.0,
    Color? borderColor,
    Color? focusedBorderColor,
    Color? errorBorderColor,
    Color? fillColor,
    Color? labelColor,
    Color? enableborder,
    TextStyle? labelStyle,
    Color? hintTextColor,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
    String? initialValue,
    int? maxLength,
    bool enabled = true,
    bool readOnly = false,
    bool autocorrect = true,
    bool enableSuggestions = true,
    TextInputAction textInputAction = TextInputAction.done,
    Function(String?)? onSaved,
    FocusNode? focusNode,
    int? maxLines,
    int? minLines,
    EdgeInsetsGeometry? contentPadding,
    TextCapitalization textCapitalization = TextCapitalization.none,
    AutovalidateMode? autovalidateMode,
    Key? key,
  }) {
    return SizedBox(
      width: width * 0.9,
      height: height * 0.04,
      child: TextFormField(
        key: key,
        style: const TextStyle(fontSize: 12.0),
        initialValue: initialValue,
        autovalidateMode:
            autovalidateMode ?? AutovalidateMode.onUserInteraction,
        controller: controller,
        autofocus: false,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        obscureText: obscureText && isPassword,
        validator: validator,
        maxLength: maxLength,
        enabled: enabled,
        readOnly: readOnly,
        autocorrect: autocorrect,
        enableSuggestions: enableSuggestions,
        textInputAction: textInputAction,
        onSaved: onSaved,
        focusNode: focusNode,
        maxLines: maxLines,
        minLines: minLines,
        textCapitalization: textCapitalization,
        decoration: InputDecoration(
          hintText: hinttext,
          labelStyle: labelStyle ??
              TextStyle(
                color: labelColor ?? Colors.black,
                fontSize: isWeb ? width * 0.012 : width * 0.021,
                // fontWeight: FontWeight.w500,
              ),
          hintStyle: TextStyle(
            color: hintTextColor ?? Colors.black,
            fontSize: isWeb ? width * 0.012 : width * 0.04,
          ),
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 5, right: 10),
                  child: prefixIcon,
                )
              : null,
        ),
      ),
    );
  }
}
