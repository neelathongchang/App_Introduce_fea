import 'package:flutter/material.dart';
import 'package:introduce_fea/Notes/real_tim_crud.dart';



final TextEditingController nameController = TextEditingController();
final TextEditingController snController = TextEditingController();
final TextEditingController addressController = TextEditingController();

void updateBottomSheet(BuildContext context, name, id, sn, address) {
  nameController.text = name;
  snController.text = sn;
  addressController.text = address;
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.blue[100],
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text(
                  "ສ້າງສະໝຸດບັນທືກ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "ຊື່",
                  hintText: "eg.Elon",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: snController,
                decoration: const InputDecoration(
                  labelText: "ລະຫັດໂນ້ດ",
                  hintText: "eg.1",
                ),
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: "ລາຍລະອຽດຂອງໂນດ",
                  hintText: "eg.UK",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    databaseReference.child(id).update({
                      'name': nameController.text.toString(),
                      'sn': snController.text.toString(),
                      'address': addressController.text.toString(),
                    });

                    //For Dismiss the keyboard afte adding items
                    Navigator.pop(context);
                  },
                  child: const Text("Update"))
            ],
          ),
        );
      });
}
