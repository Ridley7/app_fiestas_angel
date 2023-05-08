import 'package:app_fiestas_angel/pages/historia.dart';
import 'package:app_fiestas_angel/pages/home_page.dart';
import 'package:app_fiestas_angel/pages/penas.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> app_routes = {
  'home_page': ( _ ) => const HomePage(),
  'historia' : ( _ ) => Historia(),
  'penas' : ( _ ) => Penas(),
};