import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text("My Tickets"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const Text(
            "Upcoming Tickets",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ticketCard(
            parkName: "Aqua Kingdom",
            date: "15 July 2026",
            slot: "Morning",
            status: "Active",
          ),

          ticketCard(
            parkName: "Splash World",
            date: "20 July 2026",
            slot: "Evening",
            status: "Active",
          ),

          const SizedBox(height: 25),

          const Text(
            "Past Visits",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ticketCard(
            parkName: "Fun Valley",
            date: "12 June 2026",
            slot: "Afternoon",
            status: "Used",
          ),
        ],
      ),
    );
  }

  Widget ticketCard({
    required String parkName,
    required String date,
    required String slot,
    required String status,
  }) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Icon(
                  Icons.qr_code_2,
                  size: 80,
                  color: Colors.black54,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  parkName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Chip(
                  label: Text(status),
                  backgroundColor:
                      status == "Active"
                          ? Colors.green.shade100
                          : Colors.grey.shade300,
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                const Icon(Icons.calendar_today),
                const SizedBox(width: 8),
                Text(date),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.access_time),
                const SizedBox(width: 8),
                Text(slot),
              ],
            ),
          ],
        ),
      ),
    );
  }
}