part of '../home_page.dart';

class MyField extends StatelessWidget {
  final TextEditingController controller;

  const MyField({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelsHome[keyInput]!,
      ),
    );
  }
}
