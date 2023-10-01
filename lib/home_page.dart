import 'package:charming/patient_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste de patient"),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.refresh),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: ListView.builder(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 80),
          itemCount: 25,
          itemExtent: 110,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PatientDetail(),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.only(top: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    title: const Text(
                      "Kasereka Masasi aubin",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: const Text("sexe:homme"),
                    trailing: Text(
                      "N:${(index + 2) ~/ 3}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
