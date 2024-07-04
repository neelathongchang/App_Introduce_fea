import 'package:flutter/material.dart';
import 'package:introduce_fea/Notes/real_tim_crud.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController snController = TextEditingController();
final TextEditingController addressController = TextEditingController();

void createBottomSheet(BuildContext context) {
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
                  hintText: "eg.UK",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: snController,
                decoration: const InputDecoration(
                  labelText: "ລະຫັດໂນ໊ດ",
                  hintText: "eg.UK",
                ),
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: "ລາຍລະອຽດຂອງໂນ້ດ",
                  hintText: "eg.UK",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    final id = DateTime.now().microsecond.toString();
                    databaseReference.child(id).set({
                      'name': nameController.text.toString(),
                      'sn': snController.text.toString(),
                      'address': addressController.text.toString(),
                      'id': id //It's give the unique id every time.
                    });
                    // For clear the controller
                    nameController.clear();
                    snController.clear();
                    addressController.clear();
                    //For Dismiss the keyboard afte adding items
                    Navigator.pop(context);
                  },
                  child: const Text("add"))
            ],
          ),
        );
      });
}
