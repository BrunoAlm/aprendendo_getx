import 'package:flutter/material.dart';

InputDecoration meuInputDec(String text) => InputDecoration(
      labelText: text,
      labelStyle: const TextStyle(color: Colors.white, fontSize: 15),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.white, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.white, width: 2),
      ),
    );
