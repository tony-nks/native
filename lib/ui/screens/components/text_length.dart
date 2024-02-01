part of '../home_page.dart';

class TextLength extends StatelessWidget {
  final int? length;

  const TextLength({
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    if (length == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelsHome[keyLength]!,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Text('$length'),
          ),
        ],
      ),
    );
  }
}
