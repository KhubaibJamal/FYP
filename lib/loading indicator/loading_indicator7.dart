import 'package:flutter/cupertino.dart';

class LoadingIndicator7 extends StatelessWidget {
  const LoadingIndicator7({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(
      radius: 20.0,
      color: CupertinoColors.black,
    );
  }
}
