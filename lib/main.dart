import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterpath/config/routes/routes.dart';
import 'package:flutterpath/config/themes/dark_theme.dart';
import 'package:flutterpath/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ro'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('ro'),
      assetLoader: CodegenLoader(),
      child: AwesomeApp(),
    ),
  );
}

class AwesomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Path',
      theme: darkThemeData(context),
      initialRoute: AppRoutes.completeProfile,
      routes: routes,
    );
  }
}
