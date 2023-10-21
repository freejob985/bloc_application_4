part of 'res_cubit.dart';

@immutable
sealed class ResState {}

final class ResInitial extends ResState {}
class DataLoading extends ResState {}

class DataLoaded extends ResState {
  final List<dynamic> data;

  DataLoaded(this.data);
}

class DataError extends ResState {
  final String error;

  DataError(this.error);
}




// abstract class DataState {}

// class DataInitial extends DataState {}

// class DataLoading extends DataState {}

// class DataLoaded extends DataState {
//   final List<dynamic> data;

//   DataLoaded(this.data);
// }

// class DataError extends DataState {
//   final String error;

//   DataError(this.error);
// }
