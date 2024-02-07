import 'package:equatable/equatable.dart';

class Form_State extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String country;
  final String state;
  final String city;
  final bool nameValid;
  final bool emailValid;
  final bool phoneValid;
  final bool genderValid;
  final bool countryValid;
  final bool stateValid;
  final bool cityValid;

  const Form_State({
    this.name = '',
    this.email = '',
    this.phone = '',
    this.gender = '',
    this.country = '',
    this.state = '',
    this.city = '',
    this.nameValid = false,
    this.emailValid = false,
    this.phoneValid = false,
    this.genderValid = false,
    this.countryValid = false,
    this.stateValid = false,
    this.cityValid = false,
  });

  Form_State copyWith({
    String? name,
    String? email,
    String? phone,
    String? gender,
    String? country,
    String? state,
    String? city,
    bool? nameValid,
    bool? emailValid,
    bool? phoneValid,
    bool? genderValid,
    bool? countryValid,
    bool? stateValid,
    bool? cityValid,
  }) {
    return Form_State(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      state: state ?? this.state,
      city: city ?? this.city,
      nameValid: nameValid ?? this.nameValid,
      emailValid: emailValid ?? this.emailValid,
      phoneValid: phoneValid ?? this.phoneValid,
      genderValid: genderValid ?? this.genderValid,
      countryValid: countryValid ?? this.countryValid,
      stateValid: stateValid ?? this.stateValid,
      cityValid: cityValid ?? this.cityValid,
    );
  }

  @override
  List<Object?> get props => [
    name,
    email,
    phone,
    gender,
    country,
    state,
    city,
    nameValid,
    emailValid,
    phoneValid,
    genderValid,
    countryValid,
    stateValid,
    cityValid,
  ];
}