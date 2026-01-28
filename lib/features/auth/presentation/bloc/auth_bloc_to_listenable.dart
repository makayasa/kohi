import 'dart:async';

import 'package:flutter/material.dart';

class AuthBlocToListenable extends ChangeNotifier {
  late final StreamSubscription _subscription;

  AuthBlocToListenable(Stream stream) {
    _subscription = stream.listen(
      (event) {
        notifyListeners();
      },
    );
  }
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
