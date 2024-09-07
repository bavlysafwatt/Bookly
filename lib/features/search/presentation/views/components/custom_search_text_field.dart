import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: const Color(0xffD6BD98),
      style: Styles.textStyle16.copyWith(
        color: const Color(0xffC9DABF),
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.2),
        filled: true,
        hintText: 'Search',
        hintStyle: Styles.textStyle18.copyWith(color: Colors.white),
        suffixIcon: const Opacity(
          opacity: 0.5,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 22,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff808D7C),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff5F6F65),
          ),
        ),
        contentPadding: const EdgeInsets.all(18),
      ),
    );
  }
}
