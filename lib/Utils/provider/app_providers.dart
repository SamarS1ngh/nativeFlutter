import 'package:mahawanti_task/ViewModel/someClass_VM/contact_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contactProvider =
    StateNotifierProvider<ContactViewModel, int>((ref) => ContactViewModel());
