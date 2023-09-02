import 'package:flutter/material.dart';
import 'package:flutter_example/widget/inherited_widget/inherited_example.dart';

class InheritedExampleChild extends StatelessWidget {
  const InheritedExampleChild({super.key});

  @override
  Widget build(BuildContext context) {
    /// 해당 context는 InheritedExample위젯의 하위 BuildContext이므로 동작함
    final color = InheritedExample.of(context).color;
    return const Placeholder();
  }
}
