import 'package:flutter/material.dart';

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

Future<T?> showGenericDialog<T>(
    {required BuildContext context,
    required String title,
    required String content,
    required DialogOptionBuilder optionsBuilder}) {
  final options = optionsBuilder();
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("title"),
        content: Text(content),
        actions: options.keys.map((optionsTitle) {
          final T value = options[optionsTitle];
          return TextButton(
              onPressed: () {
                if (value != null) {
                  Navigator.of(context).pop(value);
                } else {
                  Navigator.of(context).pop();
                }
              },
              child: Text(optionsTitle));
        }).toList(),
      );
    },
  );
}
