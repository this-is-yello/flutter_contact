import 'package:flutter_contact_1/sub.dart';

class ProfileList {
  final List<Profilee> _dummyProfile = [
    Profilee(name: '홍길동', number: '010-2345-6789'),
    Profilee(name: '이영희', number: '010-1234-5618'),
    Profilee(name: '홍길동', number: '010-3456-7890'),
  ];
  List<Profilee> getProfile() {
    return _dummyProfile;
  }
}

// https://yj95.tistory.com/226