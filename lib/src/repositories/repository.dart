import 'package:voletdesign/src/entities/practitioner.dart';

class Repository {
  List<Practitioner> practitioners = [
    Practitioner(
      avatar: "assets/user1.png",
      name: "Desiree Castaneda Md,PhD",
      title: "General Praticioner",
      location: "Miguel Hidalgo",
      prince: 300,
      rating: 9,
      avaliations: 32,
      schedule: DateTime.utc(2024, 10, 26, 9, 00),
    ),
    Practitioner(
      avatar: "assets/user2.png",
      name: "Oliver Mullens",
      title: "General Praticioner",
      location: "Miguel Hidalgo",
      prince: 350,
      rating: 9.5,
      avaliations: 144,
      schedule: DateTime.utc(2024, 10, 26, 9, 00),
    ),
    Practitioner(
      avatar: "assets/user3.png",
      name: "Dora Becheanu",
      title: "General Praticioner",
      location: "Iztacalco",
      prince: 380,
      rating: 9.4,
      avaliations: 32,
      schedule: DateTime.utc(2024, 10, 26, 9, 30),
    ),
    Practitioner(
      avatar: "assets/user4.png",
      name: "Elidia Cristina Lazar",
      title: "General Praticioner",
      location: "Miguel Hidalgo",
      prince: 350,
      rating: 9.8,
      avaliations: 192,
      schedule: DateTime.utc(2024, 10, 26, 9, 30),
    ),
    Practitioner(
      avatar: "assets/user5.png",
      name: "Stewart Ross",
      title: "General Praticioner",
      location: "Iztacalco",
      prince: 400,
      rating: 9.7,
      avaliations: 540,
      schedule: DateTime.utc(2024, 10, 26, 10, 00),
    ),
  ];
  List<Practitioner> getAll() {
    return practitioners;
  }
}
