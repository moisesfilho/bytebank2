import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display the main image when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);
    expect(mainImage, findsOneWidget);
  });

  testWidgets('should display greater than one feature when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final anyFeature = find.byType(FeatureItem);
    expect(anyFeature, findsWidgets);
  });

  testWidgets('should display the transfer feature when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final iconTransferFeatureItem = find.widgetWithIcon(FeatureItem, Icons.monetization_on);
    expect(iconTransferFeatureItem, findsOneWidget);
    final nameTransferFeatureItem = find.widgetWithText(FeatureItem, 'Transfer');
    expect(nameTransferFeatureItem, findsOneWidget);
  });

  testWidgets('should display the transaction feed feature when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final iconTransactionFeedFeatureItem = find.widgetWithIcon(FeatureItem, Icons.description);
    expect(iconTransactionFeedFeatureItem, findsOneWidget);
    final nameTransactionFeedFeatureItem = find.widgetWithText(FeatureItem, 'Transaction Feed');
    expect(nameTransactionFeedFeatureItem, findsOneWidget);
  });

  testWidgets('should display the transfer feature when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final transferFeatureItem = find.byWidgetPredicate(
        (widget) => widget is FeatureItem && widget.name == 'Transfer' && widget.icon == Icons.monetization_on);
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets('should display the transaction feed feature when the dashboard is opened', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final transactionFeedFeatureItem = find.byWidgetPredicate(
        (widget) => widget is FeatureItem && widget.name == 'Transaction Feed' && widget.icon == Icons.description);
    expect(transactionFeedFeatureItem, findsOneWidget);
  });
}
