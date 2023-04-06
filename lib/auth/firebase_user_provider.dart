import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Examen1InstrumentosFirebaseUser {
  Examen1InstrumentosFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Examen1InstrumentosFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Examen1InstrumentosFirebaseUser>
    examen1InstrumentosFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<Examen1InstrumentosFirebaseUser>(
          (user) {
            currentUser = Examen1InstrumentosFirebaseUser(user);
            return currentUser!;
          },
        );
