import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';


class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Header with image
            Stack(
              children: <Widget>[
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  width: double.infinity,
                  height: 90,
                ),
                Container(
                  width: double.infinity,
                  height: 240,
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      'ENGINEERING FOR SUSTAINABLE DEVELOPMENT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '       ຄະນະວິສະວະກຳສາດໄດ້ສ້າງຕັ້ງຂຶ້ນໃນປີ  1995, ໂດຍມີຊື່ວ່າ “ຄະນະວິສະວະກໍາ ແລະ ສະຖາປັດຕະຍະກໍາສາດ”(FEA) ເປັນໜຶ່ງໃນ11 ຄະນະວິຊາຂອງມະຫາວິທະຍາໄລແຫ່ງຊາດລາວ ຕາມດໍາລັດຂອງນາຍົກລັດຖະມົນຕີ ສະບັບເລກທີ 50/ນຍ/95.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '       ປັດຈຸບັນ ຄະນະວິສະວະກຳສາດປະກອບມີ  10 ພາກວິຊາ  ເຊິ່ງນັກສຶກສາປີທີ 1 ຈະໄດ້ຮຽນວິຊາພື້ນຖານໃນທຸກສາຂາວິຊາວິສະວະກຳ. ໂດຍທົ່ວໄປແລ້ວ,ຫຼັງຈາກຈົບປີທໍາອິດ, ນັກສຶກສາຈະໄດ້ເລືອກສາຍທີ່ນອນໃນສິບຫົກວິຊາຮຽນ ໂດຍອີງໃສ່ຄວາມມັກ  ແລະ  ຜົນການຮຽນໃນປີທໍາອິດຂອງເຂົາເຈົ້າ.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '       ນອກຈາກຫຼັກສູດການຮຽນການສອນກ່ຽວກັບວິຊາວິສະວະກຳແລ້ວ, ຄະນະວິຊາຍັງໄດ້ໃຫ້ນັກສຶກສາມີຄວາມຮູ້ທາງພາກປະຕິບັດ   ພ້ອມທັງປູກຈິດສໍານຶກກ່ຽວກັບບັນຫາສັງຄົມ   ແລະ ສິ່ງແວດລ້ອມເຊິ່ງມັນມີຄວາມສໍາຄັນຕໍ່ກັບສັງຄົມ ແລະ ວິຊາຊີບຂອງເຂົາເຈົ້າ.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ປັດຈຸບັນ ຄະນະວິສະວະກຳສາດປະກອບມີ  10 ພາກວິຊາ  ເຊິ່ງນັກສຶກສາປີທີ 1 ຈະໄດ້ຮຽນວິຊາພື້ນຖານໃນທຸກສາຂາວິຊາວິສະວະກຳ. ໂດຍທົ່ວໄປແລ້ວ,ຫຼັງຈາກຈົບປີທໍາອິດ, ນັກສຶກສາຈະໄດ້ເລືອກສາຍທີ່ນອນໃນສິບຫົກວິຊາຮຽນ ໂດຍອີງໃສ່ຄວາມມັກ  ແລະ  ຜົນການຮຽນໃນປີທໍາອິດຂອງເຂົາເຈົ້າ.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ນັບຕັ້ງແຕ່ການລວມຕົວຂອງມະຫາວິທະຍາໄລ, ໃນແຕ່ລະປີຄະນະວິສະວະກຳສາດ ມີຈຳນວນນັກສຶກສາສະເລ່ຍປະມານ  1,054  ຄົນ ທີ່ໄດ້ສຳເລັດການສຶກສາຈາກຄະນະວິສະວະກໍາສາດ  ເພື່ອຜົນປະໂຫຍດຂອງສັງຄົມ  ແລະ  ເສດຖະກິດຂອງປະເທດ. ນັກສຶກສາທີ່ຈົບການສຶກສາຫຼາຍຄົນໄດ້ກາຍເປັນວິສະວະກອນທີ່ປະສົບຜົນສໍາເລັດ ແລະ ໄດ້ປະກອບສ່ວນທີ່ສໍາຄັນຕໍ່ສັງຄົມ  ແລະ ປະເທດຊາດ.',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
