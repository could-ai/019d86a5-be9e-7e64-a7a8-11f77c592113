import 'package:flutter/material.dart';

void main() {
  runApp(const MoroccoTravelApp());
}

class MoroccoTravelApp extends StatelessWidget {
  const MoroccoTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Morocco: A Thousand and One Nights Experience',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morocco Experience'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Section
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.orange.shade300, Colors.orange.shade600],
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Morocco: A Thousand and One Nights Experience',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Journey to the Heart of Marrakesh and the Atlas Mountains',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Somewhere north of the Atlas Mountains lies the city of Marrakesh, the beating heart of the Kingdom of Morocco. The city is divided into several fascinating areas, primarily the ancient walled Medina with its magnificent market where thousands of craftsmen work alongside hundreds of colorful shops. At its center lies the world-famous Jemaa el-Fnaa square, where residents and tourists gather every evening for the most delicious street food, magic shows, snake charmers, and Gnaoua dancers.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Introduction Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey.shade100,
              child: const Column(
                children: [
                  Text(
                    'Another area is the modern Gueliz, where Yves Saint Laurent chose to live, featuring modern shops showcasing contemporary Moroccan fashion, art galleries, and beautiful botanical gardens.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Itinerary Section
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '🗺️ The Itinerary',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Day 1
            const ItineraryCard(
              day: 'Day 1: Arrival in Marrakesh',
              activities: [
                'Flight: Direct flight from Israel to Marrakesh',
                'Check-in: Transfer and distribution to hotels',
                'Activities: Refreshment time followed by a panoramic "Lights of Marrakesh" city tour and an evening event at the hotel',
              ],
            ),

            // Days 2-3
            const ItineraryCard(
              day: 'Days 2-3: Marrakesh and Surroundings',
              activities: [
                'Participants can choose from various tours and activities (subject to pre-registration):',
                'Self-Drive Jeep Tour: Exploration at the foot of the Atlas Mountains, including a visit to a local home and lunch',
                'Mule Trek: A light 4-hour hike in the heart of nature at the foot of Mount Toubkal (4,160m), meeting Berber tribes and enjoying lunch in a local home',
                'Essaouira Day Trip: Visit the most beautiful port city in Morocco on the Atlantic Ocean, exploring ancient Jewish heritage and enjoying a meal at a famous fish restaurant',
                'Marrakesh City Discovery: A tour of Jewish heritage sites, ancient architectural monuments, street food, and markets',
                'Evening Highlights: Cocktail and dinner at Nikki Beach, followed by a party',
                'Private Gala Event in a desert encampment on the outskirts of Marrakesh, featuring local bands, Gnaoua dancers, and a party into the night',
              ],
            ),

            // Day 4
            const ItineraryCard(
              day: 'Day 4: Return to Reality',
              activities: [
                'Leisure time based on flight schedule',
                'Room checkout at 12:00 and departure for the flight home',
              ],
            ),

            // Accommodation Section
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '🏨 Accommodation Options',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const AccommodationCard(
              name: 'Kenzi Rose Garden (5-Star)',
              details: [
                'Located in the new city center, 5 minutes from the Old City',
                'Features 384 spacious rooms, a luxury spa, large outdoor and indoor pools, and free internet',
              ],
            ),

            const AccommodationCard(
              name: 'Savoy Le Grand Hotel (5-Star)',
              details: [
                'Located on Menara Gardens Boulevard',
                'Featuring a large central pool, spacious rooms, and a luxury hammam',
              ],
            ),

            // Pricing Section
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '💰 Pricing Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is Included:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    BulletPoint(text: 'Direct flights from Israel to Marrakesh'),
                    BulletPoint(text: 'Accommodation in 5-star luxury hotels'),
                    BulletPoint(text: 'Transportation and transfers as per the itinerary'),
                    BulletPoint(text: 'Guided tours and activities listed in the program'),
                    BulletPoint(text: 'Specified meals (including lunches in local homes and gala dinners)'),
                    BulletPoint(text: 'Professional guides and evening entertainment'),
                    SizedBox(height: 20),
                    Text(
                      'What is NOT Included:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    BulletPoint(text: 'Personal travel and health insurance'),
                    BulletPoint(text: 'Personal expenses and shopping'),
                    BulletPoint(text: 'Gratuities for local service providers'),
                    BulletPoint(text: 'Any activities or meals not explicitly mentioned in the itinerary'),
                  ],
                ),
              ),
            ),

            // Registration Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.orange.shade50,
              child: Column(
                children: [
                  const Text(
                    '📝 Registration',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Click here for Registration Terms and Conditions',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle registration
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
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
}

class ItineraryCard extends StatelessWidget {
  const ItineraryCard({
    super.key,
    required this.day,
    required this.activities,
  });

  final String day;
  final List<String> activities;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ...activities.map((activity) => BulletPoint(text: activity)),
          ],
        ),
      ),
    );
  }
}

class AccommodationCard extends StatelessWidget {
  const AccommodationCard({
    super.key,
    required this.name,
    required this.details,
  });

  final String name;
  final List<String> details;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ...details.map((detail) => BulletPoint(text: detail)),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}