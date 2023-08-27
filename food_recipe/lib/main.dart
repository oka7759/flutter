import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "수제버거",
        "imgUrl":
            "https://i.ibb.co/HBGKYn4/foodiesfeed-com-summer-juicy-beef-burger.jpg",
      },
      {
        "category": "건강식",
        "imgUrl":
            "https://i.ibb.co/mB5YNs2/foodiesfeed-com-pumpkin-soup-with-pumpkin-seeds-on-top.jpg",
      },
      {
        "category": "한식",
        "imgUrl":
            "https://i.ibb.co/Kzzpc97/Beautiful-vibrant-shot-of-traiditonal-Korean-meals.jpg",
      },
      {
        "category": "디저트",
        "imgUrl":
            "https://i.ibb.co/DL5vJVZ/foodiesfeed-com-carefully-putting-a-blackberry-on-tiramisu.jpg",
      },
      {
        "category": "피자",
        "imgUrl": "https://i.ibb.co/qsm8QH4/pizza.jpg",
      },
      {
        "category": "볶음밥",
        "imgUrl":
            "https://i.ibb.co/yQDkq2X/foodiesfeed-com-hot-shakshuka-in-a-cast-iron-pan.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Food Recipe',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("object");
              },
              icon: Icon(
                Icons.person_outline,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "상품을 검색하세요",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("돋보기 클릭");
                  },
                ),
              ),
            ),
          ),
          Divider(height: 1),
        ],
      ),
    );
  }
}
