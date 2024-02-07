import 'package:bloc/bloc.dart';
import 'package:validators/validators.dart';

import 'form_state.dart';
import 'main.dart';

class Form_Cubit extends Cubit<Form_State> {
  Form_Cubit() : super(const Form_State());

  void nameChanged(String value) {
    final nameValid = value.isNotEmpty;
    emit(state.copyWith(name: value, nameValid: nameValid));
  }

  void emailChanged(String value) {
    final emailValid = isEmail(value);
    emit(state.copyWith(email: value, emailValid: emailValid));
  }

  void phoneChanged(String value) {
    final phoneValid = isNumeric(value) && value.length == 10;
    emit(state.copyWith(phone: value, phoneValid: phoneValid));
  }

  void genderChanged(String value) {
    final genderValid = value == 'Male' || value == 'Female' || value == 'Other';
    emit(state.copyWith(gender: value, genderValid: genderValid));
  }

  void countryChanged(String value) {
    final countryValid = value.isNotEmpty;
    emit(state.copyWith(country: value, countryValid: countryValid));
  }

  void stateChanged(String value) {
    final stateValid = value.isNotEmpty;
    emit(state.copyWith(state: value, stateValid: stateValid));
  }

  void cityChanged(String value) {
    final cityValid = value.isNotEmpty;
    emit(state.copyWith(city: value, cityValid: cityValid));
  }

  void submitForm() {
    if (state.nameValid &&
        state.emailValid &&
        state.phoneValid &&
        state.genderValid &&
        state.countryValid &&
        state.stateValid &&
        state.cityValid) {
      // TODO: submit the form data to the backend or perform any other action
      print('Form submitted successfully');
    } else {
      // TODO: show an error message to the user
      print('Form validation failed');
    }
  }
}