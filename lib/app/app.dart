import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/config.dart';
import 'package:flutter_clean_architecture/routes_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Flutter Clean Architecture',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        localizationsDelegates: const [
          // AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: Language.values.map((e) => e.locale).toList(),
        locale: Language.ko.locale,
        routerConfig: RouteGenerator.getRoute(),
      );

  // @override
  // Widget build(BuildContext context) => MultiBlocProvider(
  //       providers: [
  //         BlocProvider<PostsBloc>(
  //             create: (BuildContext context) => getIt<PostsBloc>())
  //       ],
  //       child: MaterialApp.router(
  //         title: 'Flutter Clean Architecture',
  //         debugShowCheckedModeBanner: false,
  //         theme: ThemeData(
  //           primarySwatch: Colors.blue,
  //           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //           useMaterial3: true,
  //         ),
  //         localizationsDelegates: const [
  //           // AppLocalizations.delegate,
  //           GlobalMaterialLocalizations.delegate,
  //           GlobalWidgetsLocalizations.delegate,
  //           GlobalCupertinoLocalizations.delegate,
  //         ],
  //         supportedLocales: Language.values.map((e) => e.locale).toList(),
  //         locale: Language.ko.locale,
  //         routerConfig: RouteGenerator.getRoute(),
  //       ),
  //     );
}
