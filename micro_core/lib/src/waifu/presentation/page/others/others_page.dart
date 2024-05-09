import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

class OthersPage extends StatefulWidget {
  const OthersPage({super.key});

  @override
  State<OthersPage> createState() => _OthersPageState();
}

class _OthersPageState extends State<OthersPage> {
  final TextStyles textStyles = TextStyles();
  final TextSize textSize = TextSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Others tag',
          style: textStyles.appBarTitle(
            textColor: Colors.white,
            size: textSize.big,
          ),
        ),
      ),
    );
  }
}
