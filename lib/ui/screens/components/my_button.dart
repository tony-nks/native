part of '../home_page.dart';

class MyButton extends StatelessWidget {
  final void Function() onPressed;

  const MyButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}
