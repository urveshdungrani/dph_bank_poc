import 'package:dataphion_bank/constants/navigation.dart';
import 'package:dataphion_bank/constants/provider.dart';
import 'package:dataphion_bank/constants/variables.dart';
import 'package:dataphion_bank/screens/account_details.dart';
import 'package:dataphion_bank/screens/accounts.dart';
import 'package:dataphion_bank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dataphion Bank',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: navigatorKey,
        initialRoute: '/',
        routes: {
          dashboardRoute: (context) => const Dashboard(),
          accountdetailRoute: (context) => const AccountDetails(),
          accountRoute: (context) => const Accounts(),

        });
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runZonedGuarded(() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
      runApp(
        MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => AppProvider())],
          child: ShowCaseWidget(
            blurValue: 1,
            builder: Builder(builder: (context) => const MaterialApp(home: MyApp())),
            autoPlayDelay: const Duration(seconds: 3),
          ),
        ),
      );
    });
  }, (error, stack) {
    // print(stack);
    // print(error);
  });
}
