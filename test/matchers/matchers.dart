import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

bool featureItemMatcher(Widget widget, String name, IconData icon) {
  return widget is FeatureItem && widget.name == name && widget.icon == icon;
}

bool textFielMatcherByLabelText(Widget widget, String labelText) {
  return widget is TextField && widget.decoration.labelText == labelText;
}
