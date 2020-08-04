import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/widgets.dart';

bool featureItemMatcher(Widget widget, String name, IconData icon) {
  return widget is FeatureItem && widget.name == name && widget.icon == icon;
}
