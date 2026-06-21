import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          notificationCard(
            Icons.local_offer,
            "Weekend Splash Sale",
            "Get 20% OFF on VIP Tickets",
            Colors.orange,
          ),

          notificationCard(
            Icons.confirmation_number,
            "Booking Confirmed",
            "Your Aqua Kingdom ticket is confirmed.",
            Colors.green,
          ),

          notificationCard(
            Icons.card_giftcard,
            "Referral Reward",
            "You earned ₹100 referral bonus.",
            Colors.purple,
          ),

          notificationCard(
            Icons.warning,
            "Park Maintenance",
            "Fun Valley will remain closed on Sunday.",
            Colors.red,
          ),
        ],
      ),
    );
  }

  Widget notificationCard(
    IconData icon,
    String title,
    String subtitle,
    Color color,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}