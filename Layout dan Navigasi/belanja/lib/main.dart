import 'package:belanja/models/item.dart';
import 'package:belanja/pages/homepage.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  // runApp(MaterialApp(
  //   initialRoute: '/',
  //   routes: {
  //     '/': (context) => HomePage(),
  //     '/item': (context) => const ItemPage(),
  //   },
  // ));
  runApp(MaterialApp.router(
    routerConfig: _router,
  ));
}

GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: '/item',
    builder: (context, state) {
      final item = state.extra as Item?;
      if (item == null) {
        // Handle null case (optional)
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('No item found')),
        );
      }
      return ItemPage(itemArgs: item);
    },
  ),
]);
