import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // Routing
      getPages: AppPages.pages,
      initialRoute: AppRoutes.attendance,

      // Theme
      // theme: AppThemes.getAppTheme(),
      // darkTheme: AppThemes.getAppDarkTheme(),
      // themeMode: AppThemes.getAppThemeMode(),

      // Locale
      // locale: AppTranslations.getAppLocale(),
      // translations: AppTranslations(),
    );
  }
}
