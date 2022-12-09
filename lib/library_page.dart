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

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          children: [
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/81wgcld4wxL.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/916r5w-WVJL.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/81kRU7+lLPL.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/81bsw6fnUiL.jpg'),
            Image.network(
                'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529358577l/39939417._SY475_.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/615IUDTbGDL.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/81Lb75rUhLL.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg'),
            Image.network(
                'https://rukminim2.flixcart.com/image/416/416/ki4w0i80-0/book/q/b/n/dark-matter-original-imafxzubmczqshju.jpeg?q=70'),
            Image.network(
                'http://madelinemiller.com/wp-content/uploads/2011/08/circe-madeline-miller.jpg'),
            Image.network(
                'https://images.squarespace-cdn.com/content/v1/59e0ddd2e45a7c74ca0ebfe6/1555101295878-N2NAK0P7HJ48QDRVXIZE/dark+shores+large.jpg'),
            Image.network(
                'https://static.wikia.nocookie.net/ultimatepopculture/images/5/5a/It_cover.jpg/revision/latest?cb=20190903145009'),
            Image.network(
                'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1334659192l/7913305.jpg'),
            Image.network(
                'https://temple-publications.com/wp-content/uploads/2022/03/80.jpg'),
            Image.network(
                'https://images-na.ssl-images-amazon.com/images/I/81gXqxyFrxL.jpg'),
          ],
        ),
      );
}
