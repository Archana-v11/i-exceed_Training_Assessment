import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final nameProvider = Provider((ref) => "Archana");

// Main Entry Point
void main() {
  runApp(ProviderScope(child: MyApp()));
}

// App Root Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

// ConsumerWidget Example
class MyHome extends ConsumerWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String name = ref.watch(nameProvider);
    return Scaffold(
      body: Center(child: Text("Welcome $name")),
    );
  }
}

// Consumer in StatelessWidget using Consumer widget
class MyHome2 extends StatelessWidget {
  const MyHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          String name = ref.watch(nameProvider);
          return Center(child: Text("Welcome $name"));
        },
      ),
    );
  }
}

// ConsumerStatefulWidget Example
class MyHome3 extends ConsumerStatefulWidget {
  const MyHome3({super.key});  // Fix class name here

  @override
  ConsumerState<MyHome3> createState() => _MyHome3State();  // Also fixed
}

class _MyHome3State extends ConsumerState<MyHome3> {
  @override
  Widget build(BuildContext context) {
    String name = ref.watch(nameProvider);
    return Scaffold(
      body: Center(child: Text("Welcome $name")),
    );
  }
}
