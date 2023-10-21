import 'package:bloc_application_4/cubit/res_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Adddata extends StatelessWidget {
  const Adddata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataCubit = context.read<ResCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('sss'),
      ),
      body: BlocConsumer<ResCubit, ResState>(
        builder: (context, state) {
         if (state is DataLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DataLoaded) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                final item = state.data[index];
                final seat =
                    item['seat']; // افترض هنا أن "seat" هو مفتاح البيانات
                return ListTile(
                  title: Text('Seat: $seat'),
                );
              },
            );
          } else if (state is DataError) {
            return Center(
              child: Text('حدث خطأ: ${state.error}'),
            );
          } else {
            return ElevatedButton(
              onPressed: () {
                dataCubit.fetchData();
              },
              child: Text('احصل على البيانات'),
            );
          }
        }, listener: (BuildContext context, ResState state) { 
          print("state::::${state}");
         },
      ),
    );
  }
}
