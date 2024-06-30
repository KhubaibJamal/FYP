import 'package:flutter/material.dart';

class Carousel4 extends StatefulWidget {
  const Carousel4({super.key});

  @override
  _Carousel4State createState() => _Carousel4State();
}

class _Carousel4State extends State<Carousel4> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildPageContent('Power', Icons.flash_on, Colors.purple),
              _buildPageContent('Light', Icons.lightbulb_outline, Colors.blue),
              _buildPageContent('Temperature', Icons.thermostat, Colors.green),
            ],
          ),
        ),
        _buildPageIndicator(),
      ],
    );
  }

  Widget _buildPageContent(String text, IconData icon, Color color) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.6), color.withOpacity(0.3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 64.0,
                color: Colors.white,
              ),
              const SizedBox(height: 16.0),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _indicator(0),
        _indicator(1),
        _indicator(2),
      ],
    );
  }

  Widget _indicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: _currentPage == index ? 24.0 : 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
