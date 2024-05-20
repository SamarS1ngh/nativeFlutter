import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mahawanti_task/Utils/provider/app_providers.dart';
import 'package:mahawanti_task/View/Pages/Part%201/textfield.dart';
import 'package:mahawanti_task/View/shared/app_text.dart';
import 'package:mahawanti_task/View/shared/centred_text_button.dart';
import 'package:mahawanti_task/View/shared/vertical_gap.dart';

// ignore: must_be_immutable
class HomePage extends ConsumerWidget {
  HomePage({super.key});
  TextEditingController nameCtrlr = TextEditingController();
  TextEditingController addCtrlr = TextEditingController();
  TextEditingController cityCtrlr = TextEditingController();
  TextEditingController stateCtrlr = TextEditingController();
  TextEditingController cntyCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.bigTextDefault('Part 1', context: context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            VerticalGap.big(),
            CustomTextField(ctrlr: nameCtrlr, label: 'Name'),
            CustomTextField(ctrlr: addCtrlr, label: 'Address Line 1'),
            CustomTextField(ctrlr: cityCtrlr, label: 'City'),
            CustomTextField(ctrlr: stateCtrlr, label: 'State'),
            CustomTextField(ctrlr: cntyCtrlr, label: 'Country'),
            VerticalGap.huge(),
            CenteredTextButton.primary(
                label: 'Initiate',
                onTap: () {
                  ref.watch(contactProvider.notifier).speakUserInfo(
                      nameCtrlr.text,
                      cityCtrlr.text,
                      stateCtrlr.text,
                      addCtrlr.text,
                      cntyCtrlr.text);
                },
                context: context)
          ],
        ),
      ),
    );
  }
}
