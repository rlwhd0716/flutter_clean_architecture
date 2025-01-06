import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: () {}, child: Text('test')),
    );
  }
  // => MultiBlocProvider(
  //       providers: [],
  //       child: MaterialApp(
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
  //       ),
  //     );
}
