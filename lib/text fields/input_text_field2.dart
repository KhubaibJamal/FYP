import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField2 extends StatefulWidget {
  const CustomTextField2(
      {Key? key,
      this.minLines,
      this.maxLength,
      required this.readOnly,
      this.maxLines,
      this.prefix,
      this.suffix,
      this.errorText,
      required this.controller,
      required this.hintText,
      this.onFieldSubmitted,
      this.onChanged,
      required this.enabled,
      this.validator,
      this.focusNode,
      this.isPasswordField = false,
      this.inputFormatters,
      this.type})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final FocusNode? focusNode;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final int? maxLines;
  final String? errorText;
  final int? minLines;
  final Widget? prefix;
  final Widget? suffix;
  final int? maxLength;
  final bool readOnly;
  final bool enabled;
  final String? Function(String? value)? validator;
  final TextInputType? type;
  final bool isPasswordField;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      style: Theme.of(context).textTheme.titleSmall,
      focusNode: widget.focusNode,
      autofocus: false,
      maxLength: widget.maxLength,
      minLines: widget.minLines,
      readOnly: widget.readOnly,
      maxLines: widget.isPasswordField ? 1 : widget.maxLines,
      enabled: widget.enabled,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      keyboardType: widget.type,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      textInputAction: TextInputAction.next,
      obscureText: widget.isPasswordField && !isPasswordVisible,
      decoration: InputDecoration(
        errorText: widget.errorText,
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffix == null && widget.isPasswordField
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(isPasswordVisible
                    ? Icons.visibility_off
                    : Icons.visibility),
                color: Theme.of(context).primaryColor,
              )
            : widget.suffix,
        contentPadding: const EdgeInsets.all(20.0),
        fillColor: const Color(0xFFeef4fb).withOpacity(0.7),
        filled: true,
        label: Text(widget.hintText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Color(0xff7e0102)),
        ),
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14.0,
            color: Theme.of(context).primaryColor.withOpacity(.5)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Color(0xff7e0102)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Color(0xff7e0102)),
        ),
      ),
      controller: widget.controller,
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final FocusNode? focusNode;
  final int? maxLength;
  final bool isPasswordField;
  final String? Function(String? value)? validator;
  final TextInputType? type;

  const CustomPasswordTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.focusNode,
      required this.isPasswordField,
      this.type,
      this.maxLength})
      : super(key: key);

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      focusNode: widget.focusNode,
      autofocus: false,
      maxLength: widget.maxLength,
      validator: widget.validator,
      keyboardType: widget.type,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: !widget.isPasswordField
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {});
                  obscureText = !obscureText;
                },
                icon: passwordIcon(obscureText),
              ),
        contentPadding: const EdgeInsets.all(20.0),
        fillColor: const Color(0xFFeef4fb).withOpacity(0.7),
        filled: true,
        label: Text(widget.hintText),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14.0,
            color: Theme.of(context).primaryColor.withOpacity(.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
      ),
      controller: widget.controller,
    );
  }

  Icon passwordIcon(bool obscure) {
    return obscure
        ? const Icon(
            Icons.visibility,
          )
        : const Icon(
            Icons.visibility_off,
          );
  }
}
