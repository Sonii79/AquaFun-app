import 'package:flutter/material.dart';
import 'booking_screen.dart';

class ParkDetailsScreen extends StatelessWidget {

  final String parkName;
  final String city;
  final String rating;

  const ParkDetailsScreen({
    super.key,
    required this.parkName,
    required this.city,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text("Park Details"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 250,
              width: double.infinity,
              color: Colors.blue.shade100,
              child: const Icon(
                Icons.pool,
                size: 100,
                color: Colors.blue,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                   Text(
                    parkName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                   Row(
                    children: [
                      Icon(Icons.star,
                          color: Colors.amber),
                      SizedBox(width: 5),
                      Text(rating),
                    ],
                  ),

                  const SizedBox(height: 5),

                   Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Colors.red),
                      SizedBox(width: 5),
                      Text(city),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "About",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Experience thrilling water rides, family pools and exciting attractions for all age groups.",
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  featureTile(
                    Icons.pool,
                    "Wave Pool",
                  ),

                  featureTile(
                    Icons.water,
                    "Water Slides",
                  ),

                  featureTile(
                    Icons.fastfood,
                    "Food Court",
                  ),

                  featureTile(
                    Icons.local_parking,
                    "Parking",
                  ),

                  featureTile(
                    Icons.lock,
                    "Locker Facility",
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Ticket Options",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  ticketCard(
                    "General Ticket",
                    "₹499",
                  ),

                  ticketCard(
                    "VIP Ticket",
                    "₹999",
                  ),

                  ticketCard(
                    "Group Ticket",
                    "₹1999",
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const BookingScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Book Ticket",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget featureTile(
      IconData icon,
      String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
    );
  }

  static Widget ticketCard(
      String title,
      String price) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}