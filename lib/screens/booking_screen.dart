import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() =>
      _BookingScreenState();
}

class _BookingScreenState
    extends State<BookingScreen> {

  String selectedTicket = "General Ticket";
  String selectedSlot = "Morning";
  String paymentMethod = "Wallet";

  DateTime selectedDate = DateTime.now();

  Future<void> pickDate() async {
    DateTime? pickedDate =
        await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2027),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text("Book Ticket"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            const Text(
              "Select Ticket Type",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            DropdownButtonFormField(
              value: selectedTicket,
              items: const [
                DropdownMenuItem(
                  value: "General Ticket",
                  child: Text("General Ticket"),
                ),
                DropdownMenuItem(
                  value: "VIP Ticket",
                  child: Text("VIP Ticket"),
                ),
                DropdownMenuItem(
                  value: "Group Ticket",
                  child: Text("Group Ticket"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedTicket = value!;
                });
              },
            ),

            const SizedBox(height: 25),

            const Text(
              "Select Date",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: pickDate,
              icon: const Icon(Icons.calendar_month),
              label: Text(
                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Select Time Slot",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text("Morning"),
              value: "Morning",
              groupValue: selectedSlot,
              onChanged: (value) {
                setState(() {
                  selectedSlot = value!;
                });
              },
            ),

            RadioListTile(
              title: const Text("Afternoon"),
              value: "Afternoon",
              groupValue: selectedSlot,
              onChanged: (value) {
                setState(() {
                  selectedSlot = value!;
                });
              },
            ),

            RadioListTile(
              title: const Text("Evening"),
              value: "Evening",
              groupValue: selectedSlot,
              onChanged: (value) {
                setState(() {
                  selectedSlot = value!;
                });
              },
            ),

            const SizedBox(height: 25),

            const Text(
              "Payment Method",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text("Wallet"),
              value: "Wallet",
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() {
                  paymentMethod = value!;
                });
              },
            ),

            RadioListTile(
              title: const Text("UPI"),
              value: "UPI",
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() {
                  paymentMethod = value!;
                });
              },
            ),

            RadioListTile(
              title: const Text("Card"),
              value: "Card",
              groupValue: paymentMethod,
              onChanged: (value) {
                setState(() {
                  paymentMethod = value!;
                });
              },
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                            "Booking Successful"),
                        content: Text(
                          "$selectedTicket booked for ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          )
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  "Confirm Booking",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}