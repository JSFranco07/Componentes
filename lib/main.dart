import 'package:flutter/material.dart';
 
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/routes/routes.dart';
// import 'package:componentes/src/pages/card_page.dart';
//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,

      //Agregar diferentes idiomas 
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        
      ],

      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Spanish
      ],

      // home: HomePage()
      initialRoute: '/',
      routes: getAplicationPage(),

      // onGenerateRoute: (RouteSettings settings){
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => CardPage(),
      //   );
      // },

    );
  }
}
