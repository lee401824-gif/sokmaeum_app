import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmotionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EmotionPage extends StatefulWidget {
  const EmotionPage({super.key});

  @override
  State<EmotionPage> createState() => _EmotionPageState();
}

class _EmotionPageState extends State<EmotionPage> {

  String result = "버튼을 눌러 감정을 선택하세요";

  void detectEmotion(String emotion) {
    setState(() {
      if (emotion == "angry") {
        result = "집안청소를 해야겠습니다";
      } else if (emotion == "happy") {
        result = "오늘은 외박가능 친구부르세요";
      } else if (emotion == "bored") {
        result = "넷플릭스라도 틀어봐요";
      } else if (emotion == "excited") {
        result = "오늘 둘째생기겠네";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("속마음 해석기 MVP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              result,
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () => detectEmotion("angry"),
              child: const Text("화남"),
            ),

            ElevatedButton(
              onPressed: () => detectEmotion("happy"),
              child: const Text("기쁨"),
            ),

            ElevatedButton(
              onPressed: () => detectEmotion("bored"),
              child: const Text("지루함"),
            ),

            ElevatedButton(
              onPressed: () => detectEmotion("excited"),
              child: const Text("흥분"),
            ),
          ],
        ),
      ),
    );
  }
}
