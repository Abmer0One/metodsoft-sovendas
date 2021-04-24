import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:so_vendas/ui/pages/client/teste.dart';
import 'models/model_product.dart';
import 'ui/pages/seller/register_page_seller.dart';

void main() {
  runApp(
   ChangeNotifierProvider(
    create: (context) => ModelsMoreListen(),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'So Vendas Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      MyAppy(),
      //GridHeader(),
      //InitialPage(),
      //RegisterPageSeller()
    );
  }
}

