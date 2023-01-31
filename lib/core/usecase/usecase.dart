import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';

/*abstract class UseCase<T, P> {
  Future<T> call({required P params});
}*/

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// abstract class Params extends Equatable {}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
