import 'package:flutter/material.dart';
import 'package:useful_widgets/widgets/ink_container.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Some Text'),
              InkContainer(
                onTap: () {},
                borderRadius: BorderRadius.circular(30),
                color: Colors.yellow,
                splashColor: Colors.black45,
                padding: const EdgeInsets.all(16),
                child: const Column(
                  children: [
                    Text('Hello'),
                    Text('World'),
                    Text('Awesome!'),
                  ],
                ),
              ),
              const Text('Some Other Text'),
            ],
          ),
        ),
      ),
    );
  }
}
