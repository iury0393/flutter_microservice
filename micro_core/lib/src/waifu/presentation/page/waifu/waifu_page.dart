import 'package:flutter/material.dart';
import 'package:micro_dependency/micro_dependency.dart';

class WaifuPage extends StatefulWidget {
  const WaifuPage({super.key});

  @override
  State<WaifuPage> createState() => _WaifuPageState();
}

class _WaifuPageState extends State<WaifuPage> {
  final TextStyles textStyles = TextStyles();
  final TextSize textSize = TextSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Waifu tag',
          style: textStyles.appBarTitle(
            textColor: Colors.white,
            size: textSize.big,
          ),
        ),
      ),
    );
  }
}
