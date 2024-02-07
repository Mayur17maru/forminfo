import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'form_cubit.dart';
import 'form_state.dart';

class FormWidget extends StatefulWidget {

  FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) => previous.name != current.name,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      errorText: state.nameValid ? '' : 'Name is required',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().nameChanged(value),
                  );
                },
              ),
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) => previous.email != current.email,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      errorText: state.emailValid ? '' : 'Invalid email',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().emailChanged(value),
                  );
                },
              ),
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) => previous.phone != current.phone,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      errorText: state.phoneValid
                          ? null
                          : 'Phone must be 10 digits long',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().phoneChanged(value),
                  );
                },
              ),
              // BlocBuilder<Form_Cubit, Form_State>(
              //   buildWhen: (previous, current) =>
              //   previous.gender != current.gender,
              //   builder: (context, state) {
              //     return DropdownButtonFormField<String>(
              //       value: state.gender,
              //       items: ['Male', 'Female', 'Other']
              //           .map((e) =>
              //           DropdownMenuItem<String>(
              //             value: e,
              //             child: Text(e),
              //           ))
              //           .toList(),
              //       decoration: InputDecoration(
              //         labelText: 'Gender',
              //         errorText: state.genderValid ? '' : 'Gender is required',
              //       ),
              //       onChanged: (value) =>
              //           context.read<Form_Cubit>().genderChanged(value!),
              //     );
              //   },
              // ),
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) =>
                previous.country != current.country,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Country',
                      errorText: state.countryValid
                          ? null
                          : 'Country is required',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().countryChanged(value),
                  );
                },
              ),
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) => previous.state != current.state,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'State',
                      errorText: state.stateValid ? '' : 'State is required',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().stateChanged(value),
                  );
                },
              ),
              BlocBuilder<Form_Cubit, Form_State>(
                buildWhen: (previous, current) => previous.city != current.city,
                builder: (context, state) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'City',
                      errorText: state.cityValid ? '' : 'City is required',
                    ),
                    onChanged: (value) =>
                        context.read<Form_Cubit>().cityChanged(value),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<Form_Cubit>().submitForm();
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}