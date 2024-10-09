import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemPage extends StatelessWidget {
  final Item itemArgs;
  const ItemPage({super.key, required this.itemArgs});

  @override
  Widget build(BuildContext context) {
    // final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    // final itemArgs = GoRouterState.of(context).extra as Item;
    // throw UnimplementedError();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Detail groceries',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Hero(
                  tag: itemArgs.name,
                  child: Image.network(
                    itemArgs.photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(itemArgs.name),
              Text('Rp ${itemArgs.price}'),
              Text('Stock: ${itemArgs.stock}'),
              Text('Rating: ${itemArgs.rating}'),
            ],
          ),
        ),
      ),
    );
  }
}
