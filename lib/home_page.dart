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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Bestsellers',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[900],
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/615IUDTbGDL.jpg',
                                title: 'Verity',
                                subtitle: '\₹399')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/81Lb75rUhLL.jpg',
                                title: 'Psycology Money',
                                subtitle: '₹299')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg',
                                title: 'The Alchemist',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Featured',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[900],
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                                    'https://rukminim2.flixcart.com/image/416/416/ki4w0i80-0/book/q/b/n/dark-matter-original-imafxzubmczqshju.jpeg?q=70',
                                title: 'Dark Matter',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/916r5w-WVJL.jpg',
                                title: 'Hannibal',
                                subtitle: '\₹399')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1419952134l/13615.jpg',
                                title: 'Death Note',
                                subtitle: '₹299')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/81wgcld4wxL.jpg',
                                title: 'Atomic Habits',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[900],
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                                    'https://images-na.ssl-images-amazon.com/images/I/81kRU7+lLPL.jpg',
                                title: 'King of Scars',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'http://madelinemiller.com/wp-content/uploads/2011/08/circe-madeline-miller.jpg',
                                title: 'Circe',
                                subtitle: '\₹399')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images.squarespace-cdn.com/content/v1/59e0ddd2e45a7c74ca0ebfe6/1555101295878-N2NAK0P7HJ48QDRVXIZE/dark+shores+large.jpg',
                                title: 'Dark Shores',
                                subtitle: '₹299')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://static.wikia.nocookie.net/ultimatepopculture/images/5/5a/It_cover.jpg/revision/latest?cb=20190903145009',
                                title: 'IT: Stephen King',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'New Releases',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[900],
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                                    'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1334659192l/7913305.jpg',
                                title: 'Immortals',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://images-na.ssl-images-amazon.com/images/I/81gXqxyFrxL.jpg',
                                title: 'God of War',
                                subtitle: '\₹399')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://temple-publications.com/wp-content/uploads/2022/03/80.jpg',
                                title: 'Think Rich',
                                subtitle: '₹299')),
                        SizedBox(width: 12),
                        buildCard(
                            item: CardItem(
                                urlImage:
                                    'https://m.media-amazon.com/images/I/51RB9dl1HXL.jpg',
                                title: 'Dark Souls',
                                subtitle: '₹249')),
                        SizedBox(width: 12),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
