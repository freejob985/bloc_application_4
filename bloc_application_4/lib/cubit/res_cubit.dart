import 'package:bloc/bloc.dart';
import 'package:bloc_application_4/Apihelper.dart';
import 'package:bloc_application_4/cubit/Reservations.dart';
import 'package:meta/meta.dart';

part 'res_state.dart';

class ResCubit extends Cubit<ResState> {
  ResCubit() : super(ResInitial()){
    fetchData();
  }
    void fetchData() async {
    try {
      List<dynamic> dataapi = [];
      emit(DataLoading());
      Apihelper api = Apihelper();
      final Cate = await api.fetchData('Reservations',
          tableName: 'Reservations',
          fromJson: (json) => Reservations.fromJson(json));
      if (Cate.data != null && Cate.data is List<dynamic>) {
        dataapi = Cate.data as List<dynamic>;
        emit(DataLoaded(dataapi));
      } else {
        emit(DataError('فشل في جلب البيانات'));
      }
      print(Cate);
    } catch (e) {
      print('حدث خطأ غير متوقع: $e');
      emit(DataError('حدث خطأ غير متوقع: $e'));
    }
  }
}
