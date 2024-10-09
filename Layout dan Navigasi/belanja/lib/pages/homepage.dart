import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvt91vTsohXj07VmirArZpFzGRUBw8hritcg&s',
      stock: 16,
      rating: 4.8,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS673pW3rqS3mIPR4sHi-NTeOJPLhLXCwPx8A&s',
      stock: 10,
      rating: 4.9,
    ),
  ];

  Widget footerSection = Container(
    width: double.infinity,
    color: Colors.green,
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    child: const Text(
      'Stefanus Ageng Budi Utomo - 2241720126',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Groceries',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, '/item', arguments: item);
                      context.go('/item', extra: item);
                    },
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 120,
                              child: Hero(
                                tag: item.name,
                                child: Image.network(
                                  item.photo,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(item.name),
                            Text('Rp ${item.price}'),
                            Text('Stock: ${item.stock}'),
                            Text('Rating: ${item.rating}'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          footerSection,
        ],
      ),
    );
  }
}
