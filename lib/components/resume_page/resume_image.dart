import 'package:flutter/material.dart';

class ResumeImageCell extends StatelessWidget {
  const ResumeImageCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:250,
      child: Card(
        child: Image.asset('assets/Img83205.jpg'),
      ),
    );
  }
}
