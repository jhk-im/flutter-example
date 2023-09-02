import 'package:flutter/material.dart';

// https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html
class InheritedExample extends InheritedWidget {
  const InheritedExample({
    super.key,
    required this.color,
    required super.child,
  });

  final Color color;

  /// mabeOf -> null을 허용하는 인스턴스를 반환
  static InheritedExample? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedExample>();
  }

  /// of -> 일반적으로 null을 허용하지 않는 인스턴스 반환
  static InheritedExample of(BuildContext context) {
    final InheritedExample? result = maybeOf(context);
    assert(result != null, 'No InheritedWidgetSample found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedExample oldWidget) => color != oldWidget.color;
}