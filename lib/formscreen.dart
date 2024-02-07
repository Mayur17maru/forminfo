import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'form_cubit.dart';
import 'form_weiget.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // added this widget
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form with Bloc'),
        ),
        body: BlocProvider(
          create: (context) => Form_Cubit(), // fixed the typo
          child: FormWidget(),
        ),
      ),
    );
  }
}