import "package:flutter/material.dart";

class CappuccinoPage extends StatefulWidget {
  const CappuccinoPage({super.key});

  @override
  State<CappuccinoPage> createState() => _CappuccinoPageState();
}

class _CappuccinoPageState extends State<CappuccinoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cappuccino"),
        centerTitle: true,
      ),
    );
  }
}
