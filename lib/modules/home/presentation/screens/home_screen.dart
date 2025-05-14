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
        title: const Text('Calendrier'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FCalendar(
                controller: FCalendarController.date(
                  initialSelection: DateTime.now(),
                  //selectable: (date) => allowedDates.contains(date),
                ),
                dayBuilder: (context, data, child) => child!,
                start: DateTime(2024),
                end: DateTime(2030),
                today: DateTime.now(),
                initialType: FCalendarPickerType.day,
                initialMonth: DateTime.now(),
                onMonthChange: (date) {
                  print('Mois changé: $date');
                  // Vous pouvez aussi mettre à jour un provider si nécessaire
                },
                onPress: (date) {
                  print('Date sélectionnée: $date');
                  navigationProvider.goToCycleReportCreation(reportDate: date);
                },
                onLongPress: (date) {
                  print('Appui long sur: $date');
                  // Action personnalisée pour l'appui long
                },
              ),
            ),
          ),
          if (selectedDate != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Date sélectionnée: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}