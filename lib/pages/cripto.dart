import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cripto extends StatefulWidget {
  const Cripto({super.key});

  @override
  State<Cripto> createState() => _CriptoState();
}

class _CriptoState extends State<Cripto> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("CRIPTO"),
    );
  }
}
