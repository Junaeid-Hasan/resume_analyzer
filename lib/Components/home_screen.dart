import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'home_page.dart'; // Your existing homepage

// Dummy placeholders for other tabs
class PostPage extends StatelessWidget {
  const PostPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Post Page", style: TextStyle(fontSize: 20)));
  }
}

class AnalyzePage extends StatelessWidget {
  const AnalyzePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Analyze Page", style: TextStyle(fontSize: 20)));
  }
}

class AssistantPage extends StatelessWidget {
  const AssistantPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Assistant Page", style: TextStyle(fontSize: 20)));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomePage(),
    PostPage(),
    AnalyzePage(),
    AssistantPage(),
  ];

  final iconList = <IconData>[
    Icons.home_rounded,
    Icons.post_add_rounded,
    Icons.analytics_outlined,
    Icons.smart_toy_outlined,
  ];

  final labelList = ['Home', 'Post', 'Analyze', 'Assistant'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (index, isActive) {
          final color = isActive ? Colors.blue : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconList[index], size: 24, color: color),
              const SizedBox(height: 4),
              Text(
                labelList[index],
                style: TextStyle(
                  fontSize: 12,
                  color: color,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          );
        },
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 24,
        rightCornerRadius: 24,
        onTap: (index) => setState(() => _selectedIndex = index),
        backgroundColor: Colors.white,
      ),
    );
  }
}
