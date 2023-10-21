import 'package:bloc_application_4/adddata.dart';
import 'package:bloc_application_4/cubit/res_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResCubit(),
      child: MaterialApp(
        home: Adddata(),
      ),
    );
  }
}
