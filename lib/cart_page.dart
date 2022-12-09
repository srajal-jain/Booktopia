import 'package:flutter/material.dart';

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

Widget buildCard({
  required CardItem item,
}) =>
    Container(
      width: 120,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item.urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            item.title,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            item.subtitle,
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          title: Text('My Cart'),
          leading: IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: Column(
          children: [
            Card(
              color: Colors.grey[300],
              child: Container(
                height: 256,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCard(
                          item: CardItem(
                              urlImage:
                                  'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529358577l/39939417._SY475_.jpg',
                              title: 'Five Feet Apart',
                              subtitle: '₹249')),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
