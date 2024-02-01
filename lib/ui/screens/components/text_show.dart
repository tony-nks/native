part of '../home_page.dart';

class TextShow extends StatelessWidget {
  final bool isShowView;

  const TextShow({
    required this.isShowView,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: UiPlatform(),
    );
  }
}
