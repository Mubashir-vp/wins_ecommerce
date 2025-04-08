import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/theme/color_class.dart';
import '../core/theme/text_style_class.dart';

class TextFieldWidget extends StatefulWidget {
  final String? name;
  final String? label;
  final Widget? labelWidget;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final Function(String)? function;
  final FocusNode? focusNode;
  final FloatingLabelBehavior? floating;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool? suffixDropDown;
  final Function? onTapFunction;
  final Function? onEditComplete;
  final int? maxLine;
  final int? maxLength;
  final EdgeInsets? edgeInsets;
  final Widget? iconWithFunction;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final bool isFilled;
  final Color? fillColor;
  final bool isBorderNeeded;
  final bool isPrefixTextNeeded;
  final String? Function(String?)? validator;
  final List<String>? autofillHints;
  final double? borderRadius;
  final bool noPadding;
  final TextStyle? hintstyle;

  final bool needHintText;

  const TextFieldWidget({
    super.key,
    this.isBorderNeeded = true,
    this.isPrefixTextNeeded = false,
    this.validator,
    this.name,
    this.label,
    this.labelWidget,
    this.isFilled = false,
    this.fillColor,
    this.controller,
    required this.textInputType,
    this.suffixIcon,
    this.function,
    this.focusNode,
    this.floating,
    this.inputFormatters,
    this.textInputAction,
    this.textCapitalization,
    this.suffixDropDown,
    this.readOnly = false,
    this.onTapFunction,
    this.maxLine,
    this.maxLength,
    this.edgeInsets,
    this.iconWithFunction,
    this.prefixWidget,
    this.autofillHints,
    this.borderRadius,
    this.onEditComplete,
    this.noPadding = false,
    this.needHintText = true,
    this.hintstyle,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.edgeInsets ??
          const EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 0,
            right: 0,
          ),
      child: Padding(
        padding: widget.noPadding
            ? EdgeInsets.zero
            : const EdgeInsets.only(
                top: 8.0,
                bottom: 20.0,
              ),
        child: Builder(
          builder: (context) {
            return TextFormField(
              onFieldSubmitted: (value) {
                // Dismiss the keyboard when the user presses 'Done'
                FocusScope.of(context).unfocus();
              },
              autofocus: false,
              readOnly: widget.readOnly,
              validator: widget.validator,
              autofillHints: widget.autofillHints,
              onTap: () {
                if (widget.onTapFunction != null) {
                  widget.onTapFunction!();
                }
              },
              inputFormatters: widget.inputFormatters,
              textCapitalization:
                  widget.textCapitalization ?? TextCapitalization.none,
              textInputAction: widget.textInputAction ?? TextInputAction.done,
              keyboardType: widget.textInputType,
              controller: widget.controller,
              obscureText: !_passwordVisible &&
                  widget.textInputType == TextInputType.visiblePassword,
              enableSuggestions: false,
              autocorrect: false,
              style: TextStyleClass.textFieldStyle,
              focusNode: widget.focusNode,
              maxLines: widget.maxLine ?? 1,
              maxLength: widget.maxLength ?? 500,
              onChanged: widget.function
              /*(value) {
                    if (widget.function != null) {
                      widget.function!();
                    }
                  }*/
              ,
              onEditingComplete: () {
                if (widget.onEditComplete != null) {
                  widget.onEditComplete!();
                }
              },
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.zero,
                filled: widget.isFilled,
                fillColor:
                    widget.isFilled ? widget.fillColor : ColorsClass.white,
                label: widget.labelWidget,
                errorText: null,
                isDense: true,
                labelText: widget.maxLine == null
                    ? widget.name ?? widget.label
                    : widget.label,
                hintText: widget.needHintText ? widget.label : null,
                counterText: "",
                hintStyle: widget.hintstyle ?? TextStyleClass.hintTextStyle,
                labelStyle: TextStyleClass.labelTextStyle,
                border: widget.isBorderNeeded
                    ? const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsClass.divider,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(06),
                        ),
                      )
                    : InputBorder.none,
                enabledBorder: widget.isBorderNeeded
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorsClass.divider,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius ?? 06),
                        ),
                      )
                    : InputBorder.none,
                focusedBorder: widget.isBorderNeeded
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorsClass.divider,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius ?? 06),
                        ),
                      )
                    : InputBorder.none,
                errorBorder: widget.isBorderNeeded
                    ? OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: ColorsClass.redColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius ?? 06),
                        ),
                      )
                    : InputBorder.none,
                focusedErrorBorder: widget.isBorderNeeded
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsClass.redColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(widget.borderRadius ?? 06),
                        ),
                      )
                    : InputBorder.none,
                floatingLabelBehavior: widget.floating,
                floatingLabelStyle: TextStyleClass.labelTextStyle,
                //  prefix: widget.prefixWidget,
                prefixIcon: widget.prefixWidget,

                suffixIcon:
                    widget.textInputType == TextInputType.visiblePassword
                        ? IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                              size: 20,
                            ),
                            onPressed: () {
                              _passwordVisible = !_passwordVisible;

                              setState(() {});
                            },
                          )
                        : widget.suffixDropDown == true &&
                                widget.iconWithFunction != null
                            ? widget.iconWithFunction
                            : widget.suffixDropDown == true
                                ? Icon(
                                    Icons.arrow_drop_down_outlined,
                                    size: 25,
                                    color: ColorsClass.darkGray,
                                  )
                                : widget.suffixIcon,
              ),
            );
          },
        ),
      ),
    );
  }
}
