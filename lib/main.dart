import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'modules/product_dashboard/view/product_dashboard_screen.dart';
import 'modules/product_dashboard/provider/product_provider.dart';
import 'modules/product_dashboard/provider/order_provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,

        home: const ProductDashboardScreen(),
      ),
    );
  }
}

