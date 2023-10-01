import 'package:flutter/material.dart';

class PatientDetail extends StatefulWidget {
  const PatientDetail({super.key});

  @override
  State<PatientDetail> createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fiche patient"),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Nom:"),
                Text(
                  "Kasereka charming Aubin",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Maladie:"),
                Text(
                  "Malaria-Typhoide-Diabet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Temperature:"),
                Text(
                  "37.9 C",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Poid:"),
                Text(
                  "78 kg",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Etat de Syrhome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(),
            const SizedBox(
              height: 64,
            ),
            const Text(
              "45 %",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            const Text(
              "Pourcentage",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "450 ml",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
            const Text(
              "Niveau restant",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 72,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("Refresh"),
            ),
          ],
        ),
      ),
    );
  }
}
