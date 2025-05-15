import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:petra/navigation/navigation_service.dart';

// Provider pour gérer les dates autorisées
final allowedDatesProvider = StateProvider<List<DateTime>>((ref) {
  // Exemple de dates autorisées - à adapter selon votre logique métier
  return [
    DateTime(2024, 9, 12),
    DateTime(2024, 9, 13),
    DateTime(2024, 9, 14),
    DateTime(2024, 9, 15),
    // Ajoutez d'autres dates selon vos besoins
  ];
});

// Provider pour la date sélectionnée
final selectedDateProvider = StateProvider<DateTime?>((ref) => null);

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allowedDates = ref.watch(allowedDatesProvider);
    final selectedDate = ref.watch(selectedDateProvider);
    final navigationProvider = ref.read(navigationServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi,Jon Doe'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Action pour les notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Partie centrée (image et calendrier)
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/logo-with-pod.png',
                    height: 100,
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FCalendar(
                      controller: FCalendarController.date(
                        initialSelection: DateTime.now(),
                        //selectable: (date) => allowedDates.contains(date),
                      ),
                      dayBuilder: (context, data, child) => child!,
                      start: DateTime(2024),
                      end: DateTime.now(),
                      today: DateTime.now(),
                      initialType: FCalendarPickerType.day,
                      initialMonth: DateTime.now(),
                      onMonthChange: (date) {
                        print('Mois changé: $date');
                        // Vous pouvez aussi mettre à jour un provider si nécessaire
                      },
                      onPress: (date) {
                        print('Date sélectionnée: $date');
                        navigationProvider.goToCycleReportCreation(
                          reportDate: date,
                        );
                      },
                      onLongPress: (date) {
                        print('Appui long sur: $date');
                        // Action personnalisée pour l'appui long
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Partie alignée à gauche ("My cycles" et FCard)
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: const Text(
                  'My cycles',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: FCard(
                  style: FCardStyle(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 242, 243, 254),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentStyle: FCardContentStyle(
                      titleTextStyle: Theme.of(context).textTheme.titleMedium!,
                      subtitleTextStyle: Theme.of(context).textTheme.bodySmall!,
                    ),
                  ),
                  title: const Text('Flow level'),
                  subtitle: RichText(
                    text: TextSpan(
                      text: 'Cycle history',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              //TODO: go to cycle history screen
                            },
                    ),
                  ),
                ),
              ),
            ),

            // Affichage de la date sélectionnée si elle existe
            if (selectedDate != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Date sélectionnée: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            // Ajout d'espace en bas pour faciliter le défilement
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
