import 'package:flutter/material.dart';


class UniformStudents extends StatelessWidget {
  final List<Item> items = [
    Item(name: "ເສື້ອຂ່າວນັກຮຽນຊາຍ", imagePath: 'assets/images/shirt.png'),
    Item(name: "ເສື້ອຂ່າວນັກຮຽນຍີງ", imagePath: 'assets/images/women.png'),
    Item(name: "ໂສ້ງດຳຊາຍ", imagePath: 'assets/images/Pants.png'),
    Item(name: "ສີນນັກສືກສາຍີງ", imagePath: 'assets/images/sin.png'),
    Item(name: "ເກີບນັກສືກສາຊາຍ", imagePath: 'assets/images/shoes_m.png'),
    Item(name: "ເກີບນັກສືກສາຍີງ", imagePath: 'assets/images/shoes_f.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ເຄືອງແບບ ນັກສືກສາ ຄະນະວິສະວະກຳສາດ"),
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(item: items[index]),
                ),
              );
            },
            child: Card(
              color: Colors.green,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(items[index].imagePath, height: 160, width: 200),
                    Text(items[index].name, style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String name;
  final String imagePath;

  Item({required this.name, required this.imagePath});
}

class DetailScreen extends StatelessWidget {
  final Item item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${item.name} ດ້ານລຸ່ມ:"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item.imagePath, height: 500, width: 500),
            Text(item.name, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}