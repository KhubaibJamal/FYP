import 'package:flutter/material.dart';

class AuctionItem {
  final String name;
  final String username;
  final String description;
  final String imgUrl;

  final String time;
  final String price;

  AuctionItem({
    required this.name,
    required this.username,
    required this.description,
    required this.imgUrl,
    required this.time,
    required this.price,
  });
}

List<AuctionItem> auctionItems = [
  AuctionItem(
    name: "Purple splash",
    description:
        "This paint was made via the luxurious lorem ipsum celebration. If you are reading this you are amazing.",
    username: "@widgetworld",
    imgUrl:
        "https://images.unsplash.com/photo-1563089145-599997674d42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
    time: "20h: 35m: 08s",
    price: "15.97 ETH",
  ),
  AuctionItem(
    name: "Neon Glass",
    description:
        "This paint was made via the luxurious lorem ipsum celebration. If you are reading this you are amazing.",
    username: "@henry",
    imgUrl:
        "https://images.unsplash.com/photo-1544365558-35aa4afcf11f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80",
    time: "20h: 35m: 08s",
    price: "15.97 ETH",
  ),
];

class Carousel3 extends StatefulWidget {
  const Carousel3({Key? key}) : super(key: key);

  @override
  _Carousel3State createState() => _Carousel3State();
}

class _Carousel3State extends State<Carousel3> {
  final double carouselItemMargin = 16;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: auctionItems.length,
      onPageChanged: (int position) {},
      itemBuilder: (BuildContext context, int position) {
        return imageSlider(position);
      },
    );
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        return Container(
          margin: EdgeInsets.all(carouselItemMargin),
          child: Center(child: widget),
        );
      },
      child: CardFb1(item: auctionItems[position]),
    );
  }
}

class CardFb1 extends StatelessWidget {
  final AuctionItem item;

  const CardFb1({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height * 0.5,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.05),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  item.username,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            Hero(
              tag: item.imgUrl,
              child: Image.network(
                item.imgUrl,
                fit: BoxFit.cover,
                height: height / 3.75,
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.time,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  item.price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remaining Time",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Highest Bid",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
