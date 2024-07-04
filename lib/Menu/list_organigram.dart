import 'package:flutter/material.dart';


class ListOrganigram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ລາຍຊື່ການຈັດຕັ້ງ ຂອງຄະນະວິສະວະກຳສາດ'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              buildCategoryList('ຄະນະບໍລິຫານ', [
                '   1. ຄະນະບໍດີ: ຮສ ປອ ຄຳຜຸຍ ສຸດທິສົມບັດ',
                '   2. ຮອງຄະນະບໍດີຝ່າຍວິຊາການ: ປທ ຈັນຄະຈອນ ສອນມະນີວົງ',
                '   3. ຮອງຄະນະບໍດີຝ່າຍກິດຈະກຳນັກສຶກສາ: ຮສ ປອ ສຸລິພັນ ກັນນິຖາ',
                '   4. ຮອງຄະນະບໍດີຝ່າຍບໍລິຫານ ແລະ ບໍລິຫານວິຊາການ: ປອ ສົມພອນ ກັນທະວົງ',
              ]),
              buildCategoryList('ຫົວໜ້າພາກວິຊາ', [
                '   1. ຮສ ປອ ຄຳປະເສີດ ເທບວົງສາ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳໂຍທາ',
                '   2. ຮສ ປທ ໄຊພອນ ຮຸ່ງບຸນຍວງ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳກົນຈັກ',
                '   3. ຮສ ປທ ຄຳຜາ ສີຫານະຄອນ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳໄຟຟ້າ',
                '   4. ຮສ ປທ ນາງ ນວນຈັນ ປັນຍານຸວົງ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳເອເລັກໂຕຣນິກ ແລະ ໂທລະຄົມມະນາຄົມ',
                '   5. ຮສ ປທ ທາ ບຸນທັນ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳຄອມພິວເຕີ ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ',
                '   6. ປທ ຄຳເສີມ ສຸລິຍະມາດ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳຂົວ-ທາງ',
                '   7. ອຈ ປທ ສຸລິສັກ ວີໃສຜ່ອນ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳບໍ່ແຮ່',
                '   8. ຮສ ປທ ຄຳປະສິດ ທັມມະເທໂວ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳສິ່ງແວດລ້ອມ',
                '   9. ອຈ ປທ ສີສຸພັນ ພົມມະນີວົງ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳຂົນສົ່ງ ແລະ ພາລາທິການ',
                '   10. ອຈ ປທ ນາງ ປີປອງ ພິມພະຈັນ: ຫົວໜ້າພາກວິຊາ ວິສະວະກຳເຄມີ'
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryList(String category, List<String> names) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ...names.map((name) => Text(name)).toList(),
          ],
        ),
      ),
    );
  }
}