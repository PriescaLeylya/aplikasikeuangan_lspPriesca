import 'package:lsppriesca/constant/route_constants.dart';
import 'package:lsppriesca/pages/Pengeluaran.dart';
import 'package:lsppriesca/pages/Pemasukan.dart';
import 'package:lsppriesca/pages/DetailCashFlowPage.dart';
import 'package:lsppriesca/pages/HomePage.dart';
import 'package:lsppriesca/pages/LoginPage.dart';
import 'package:lsppriesca/pages/SettingsPage.dart';
import 'package:lsppriesca/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lsppriesca",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
