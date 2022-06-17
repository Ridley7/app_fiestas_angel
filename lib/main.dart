import 'package:app_fiestas_angel/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiestas del Angel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: app_routes,
      initialRoute: 'home_page',
    );
  }
}

/*
*
* Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => AuthService()),
        ChangeNotifierProvider(create: ( _ ) => SocketService()),
        ChangeNotifierProvider(create: ( _ ) => ChatService()),
      ],
      child: MaterialApp(
        title: 'Chat App',
        initialRoute: 'loading',
        routes: app_routes,
      ),
    );
  }
* */