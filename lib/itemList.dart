import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  var titleList = [
    "Samsung Galaxy Note 10 Plus",
    "Samsung Galaxy Note 20",
    "Samsung Galaxy S21 Ultra 5G",
    "Samsung Galaxy Z Flip",
    "Oppo X3 Pro",
    "Huwaei Mate 40 Pro",
    "iPhone 11 Pro Max",
    "iPhone 12 Pro",
    "Samsung Galaxy Note 20 Ultra",
  ];

  var descList = [
    "Android 11, One UI 3.1, 6GB/8GB Ram, 256GB/512GB Storage, Exynos 9825 (7 nm)",
    "Android 11, One UI 3.0, 10GB/12GB Ram, 256GB storage, Exynos 990 (7 nm+)",
    "Android 11, One UI 3.0, 10GB/12GB Ram, 256GB/512GB storage, Exynos 2100 (5 nm)",
    "Android 11, One UI 3.1, 8GB Ram, 256GB/512GB Storage, Exynos 9825 (7 nm)",
    "Android 11, One UI 3.1, 6GB/8GB Ram, 256GB Storage, Qualcomm SM8150 Snapdragon 855+ (7 nm)",
    "Android 10, EMUI 11, no Google Play Services, 8GB Ram, 128GB/256GB/512GB storage, Kirin 9000 5G (5 nm)",
    "iOS 14.6, 4GB Ram, 64GB/256GB/512GB storage, Apple A13 Bionic (7 nm+)",
    "iOS 14.6, 6GB Ram, 64GB/256GB/512GB storage, Apple A14 Bionic (5 nm)",
    "Android 11, One UI 3.0, 12GB Ram, 128GB/256GB/512GB storage, Exynos 990 (7 nm+)",
    "Android 11, ColorOS 11.2, 8GB/12GB Ram, 256GB/512GB storage, Qualcomm SM8350 Snapdragon 888 5G (5 nm)",
  ];

  var imgList = [
    "assets/GalaxyNote10.jpg",
    "assets/GalaxyNote20.jpg",
    "assets/GalaxyS21Ultra.jpg",
    "assets/GalaxyZFlip.jpg",
    "assets/OppoX3Pro.jpg",
    "assets/HuwaeiMate40Pro.jpg",
    "assets/iPhone11ProMax.jpg",
    "assets/iPhone12Pro.jpg",
    "assets/Note20Ultra.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
        body: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(imgList[index]),
                    ),
                    Padding(padding: const EdgeInsets.all(10.0)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey[500],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )),
              );
            }));
  }
}
