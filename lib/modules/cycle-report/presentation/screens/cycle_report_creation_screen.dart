import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:intl/intl.dart';
import 'package:petra/modules/cycle-report/presentation/controller/cycle_report_controller.dart';
import 'package:petra/navigation/navigation_service.dart';

class CycleReportCreationScreen extends ConsumerWidget {
  const CycleReportCreationScreen({this.logDate, super.key});
  final DateTime? logDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formattedDate = DateFormat('MMMM d, yyyy').format(logDate!);
    final controller = ref.watch(
      cycleReportControllerProvider(initialDate: logDate),
    );

    final selectCtrl = FSelectGroupController<int>.radio(
      value: controller.flowLevel,
    );

    final _noteCtrl = TextEditingController(text: controller.note);

    final navigationProvider = ref.read(navigationServiceProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formattedDate,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              const Text('Menstruation'),
              const SizedBox(height: 16),

              //* period part
              FCard(
                style: FCardStyle(
                  // Couleur et coins du "bloc" extérieur
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      242,
                      243,
                      254,
                    ), // <- couleur de fond
                    borderRadius: BorderRadius.circular(8),
                  ),

                  // Obligatoire : le style interne du contenu.
                  // Le plus simple est de reprendre la typo du thème.
                  contentStyle: FCardContentStyle(
                    titleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    subtitleTextStyle: Theme.of(context).textTheme.bodySmall!,
                  ),
                ),

                // Votre contenu
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/circle.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text('Period'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              FCard(
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

                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    FSelectGroup<int>(
                      controller: selectCtrl,
                      onSelect: (value) {
                        final (int level, bool _) = value;
                        ref
                            .read(
                              cycleReportControllerProvider(
                                initialDate: logDate,
                              ).notifier,
                            )
                            .setFlowLevel(level);
                      },
                      children: [
                        FRadio.grouped(value: 0, label: const Text('None')),
                        FRadio.grouped(value: 1, label: const Text('Light')),
                        FRadio.grouped(value: 2, label: const Text('Medium')),
                        FRadio.grouped(value: 3, label: const Text('Heavy')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              //*¨symptomes part
              const SizedBox(height: 16),
              const Text('Other Data'),
              const SizedBox(height: 16),
              FCard(
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

                // Votre contenu
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/triangle.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text('Symptoms'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              FCard(
                //TODO: conect that to state manager
                style: FCardStyle(
                  // Couleur et coins du "bloc" extérieur
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 243, 254),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  contentStyle: FCardContentStyle(
                    titleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    subtitleTextStyle: Theme.of(context).textTheme.bodySmall!,
                  ),
                ),

                child: Column(
                  children: [
                    FSelectGroup<String>(
                      controller: FSelectGroupController(
                        values: Set<String>.from(controller.symptoms),
                      ),
                      onSelect: (value) {
                        final (String selectedValue, bool isSelected) = value;

                        final updatedSymptoms = Set<String>.from(
                          controller.symptoms,
                        );

                        if (isSelected) {
                          updatedSymptoms.add(selectedValue);
                        } else {
                          updatedSymptoms.remove(selectedValue);
                        }

                        ref
                            .read(
                              cycleReportControllerProvider(
                                initialDate: logDate,
                              ).notifier,
                            )
                            .setSymptoms(updatedSymptoms);
                      },
                      children: [
                        FCheckbox.grouped(
                          value: "Fatigue",
                          label: const Text('Fatigue'),
                        ),
                        FCheckbox.grouped(
                          value: "Axiety",
                          label: const Text('Anxiety'),
                        ),
                        FCheckbox.grouped(
                          value: "Mood Swings",
                          label: const Text('Mood Swings'),
                        ),
                        FCheckbox.grouped(
                          value: "Swelling of the body",
                          label: const Text('Swelling of the body'),
                        ),
                        FCheckbox.grouped(
                          value: "Irritation",
                          label: const Text('Irritation'),
                        ),
                        FCheckbox.grouped(
                          value: "Headache",
                          label: const Text('Headache'),
                        ),
                        FCheckbox.grouped(
                          value: "Change in appetite",
                          label: const Text('Change in appetite'),
                        ),
                        FCheckbox.grouped(
                          value: "Cramps",
                          label: const Text('Cramps'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('Notes'),
              const SizedBox(height: 16),
              FTextField(
                controller: _noteCtrl,
                hint: 'e.g. Medications',
                maxLines: 1,
              ),
              const SizedBox(
                height: 16,
              ), // Extra padding at the bottom for better scrolling experience
              //TODO; add buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FButton(
                    style: FButtonStyle.outline,
                    onPress: () {
                      //TODO: add delete function
                    },
                    child: const Text('Delete'),
                  ),
                  const SizedBox(width: 50),
                  FButton(
                    style: FButtonStyle.outline,
                    onPress: () {
                      navigationProvider.goToHome();
                    },
                    child: const Text('Cancel'),
                  ),
                  FButton(
                    onPress: () {
                      if (controller.flowLevel > 0 ||
                          controller.symptoms.isNotEmpty) {
                        // Si les conditions sont remplies, sauvegarder et retourner à l'accueil
                        ref
                            .read(
                              cycleReportControllerProvider(
                                initialDate: logDate,
                              ).notifier,
                            )
                            .saveReport()
                            .then((_) {
                              navigationProvider.goToHome();
                            });
                      } else {
                        // Si les conditions ne sont pas remplies, montrer une alerte
                        showDialog(
                          context: context,
                          builder:
                              (context) => AlertDialog(
                                title: const Text('caution'),
                                content: const Text(
                                  'Please select at least one flow level or symptom before saving.',
                                ),
                                
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                        );
                      }
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
