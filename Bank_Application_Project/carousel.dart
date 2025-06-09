import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(CarouselApp());
}

class CarouselApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final PageController _controller = PageController(viewportFraction: 1.0);
  int _currentIndex = 0;

  final List<String> imagePaths = [
    'assets/carousel/image1.jpg',
    'assets/carousel/image2.jpg',
    'assets/carousel/image3.jpg',
    'assets/carousel/image4.jpg',
  ];

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentIndex < imagePaths.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _controller.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Auto-Sliding Carousel"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          SizedBox(
            height: 160, // reduced height for full image fit
            child: PageView.builder(
              controller: _controller,
              itemCount: imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.contain, // full image visible, may show empty space
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagePaths.map((url) {
              int index = imagePaths.indexOf(url);
              return Container(
                width: 5,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                // decoration: BoxDecoration(
                //   shape: BoxShape.circle,
                //   color: _currentIndex == index ? Colors.teal : Colors.grey[400],
                // ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
