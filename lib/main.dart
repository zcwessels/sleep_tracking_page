import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double random(int min, int max) {
    return (min + Random().nextInt(max - min)).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: const AssetImage('assets/bg.jpeg'), fit: BoxFit.fill, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 50, height: 50, decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(14))), child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(24)), child: Image.network('https://avatars.githubusercontent.com/u/31216542?v=4', scale: 11))),
                        Container(width: 50, height: 50, decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(14))), child: const Icon(Icons.notifications_none, size: 30)),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text('Hi, Mr. Zander', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 16),
                    const Text('How is your sleeping progress?', style: TextStyle(color: Colors.white54, fontSize: 16, fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
            ),
            Container(
              height: 653,
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50))),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Ongoing Tracking', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800)),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: const BorderRadius.all(Radius.circular(20))),
                        width: double.infinity,
                        height: 190,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50))),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                                      child: Image.network('https://avatars.githubusercontent.com/u/31216542?v=4', fit: BoxFit.fill),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Zander Wessels', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
                                      const SizedBox(height: 16),
                                      Row(
                                        children: const [
                                          Icon(Icons.alarm, size: 20),
                                          SizedBox(width: 8),
                                          Text('Alarm on 06:00 AM', style: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.normal)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50), backgroundColor: Colors.purple),
                                child: const Text('See Details', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('Sleep Score', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w800)),
                        Text('See More', style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w800)),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: const BorderRadius.all(Radius.circular(20))),
                        width: double.infinity,
                        height: 190,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Weekly Score', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal)),
                                  Container(
                                    width: 140,
                                    height: 30,
                                    decoration: BoxDecoration(color: Colors.green.shade200, borderRadius: const BorderRadius.all(Radius.circular(20))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.arrow_circle_up_sharp, color: Colors.green.shade800),
                                        const SizedBox(width: 2),
                                        Text('Progress +5%', style: TextStyle(color: Colors.green.shade800, fontSize: 16, fontWeight: FontWeight.normal)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 5,
                                  scrollDirection: Axis.horizontal,
                                  // shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Column(
                                          children: [Container(decoration: const BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.all(Radius.circular(20))), height: random(20, 80), width: 60), const SizedBox(height: 6), Text('W${index + 1}', style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold))],
                                        ),
                                        const SizedBox(width: 8),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CircleAvatar(
// backgroundColor: Colors.white.withAlpha(_whiteAlpha),
// child: ClipOval(
// child: Image.network('https://avatars.githubusercontent.com/u/31216542?v=4', scale: 6),
// ),
