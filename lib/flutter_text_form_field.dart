library flutter_text_form_field;

/// A Flutter Custom Text Form FieldSetElement
///
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController _controller;
  bool obscure;
  String hint;
  bool password;
  BoxBorder border;
  BorderRadiusGeometry borderRadius;
  bool readOnly;
  Function(String) onPress;
  Function() onEditingComplete;
  Function(String) onFieldSubmitted;
  String Function(String) validator;

  CustomTextField(this._controller,
      {Key key,
      this.password = true,
      this.obscure = false,
      this.hint = '',
      this.border,
      this.borderRadius,
      this.readOnly = false,
      this.onPress,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.validator})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Icon visibility = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
        border: widget.border ?? Border.all(color: Colors.purple, width: 2.0),
      ),
      child: TextFormField(
        key: widget.key,
        controller: widget._controller,
        obscureText: widget.obscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: widget.password == true
              ? GestureDetector(
                  key: widget.key,
                  onTap: () {
                    //Show and hide password
                    if (widget.obscure == true) {
                      setState(() {
                        widget.obscure = false;
                        visibility = const Icon(Icons.visibility_off);
                      });
                    } else {
                      setState(() {
                        widget.obscure = true;
                        visibility = const Icon(Icons.visibility);
                      });
                    }
                  },
                  child: visibility,
                )
              : const Text(""),
          isDense: true,
          contentPadding: const EdgeInsets.only(
            top: 15,
            bottom: 10,
          ),
          hintText: widget.hint,
        ),
        readOnly: widget.readOnly,
        onChanged: widget.onPress,
        onEditingComplete: widget.onEditingComplete,
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
      ),
    );
  }
}
