import 'package:flutter/material.dart';

// class PrivacyPolicyPage extends StatefulWidget {
//   @override
//   _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
// }
//
// class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Text("Privacy Policy Page"),
//       ),
//     );
//   }
// }


class AboutTeams extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {
      "name": " ທ້າວ ນີ່ ຫຼ້າທອງຈັນ ",
      "phone": " (+85520) 92577881 ",
      "email": "Neeltc7@gmail.com",
      "country": "LAOS",
      "image": "assets/images/ny.jpg"
    },
    {
      "name": " ທ້າວ ສຸພານິດ ວົງສະໄໝ ",
      "phone": " (+85520) 95612897 ",
      "email": " souphanith1412@gmail.com ",
      "country": "LAOS",
      "image": "assets/images/nit.png"
    },
    {
      "name": " ນາງ ກັນລະຍາ ສັນຕິພາບ ",
      "phone": "(+85520) 54417398",
      "email": " santiphapkanlayq09@gmail.com  ",
      "country": "LAOS",
      "image": "assets/images/fon.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return ProfileCard(
            name: profiles[index]['name']!,
            phone: profiles[index]['phone']!,
            email: profiles[index]['email']!,
            country: profiles[index]['country']!,
            image: profiles[index]['image']!,
          );
        },
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String phone;
  final String email;
  final String country;
  final String image;

  ProfileCard({
    required this.name,
    required this.phone,
    required this.email,
    required this.country,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: $name"),
                Text("Tell: $phone"),
                Text("Email: $email"),
                Text("Country: $country"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
