import 'package:flutter_tdd_architechture/core/error/failures.dart';
import 'package:flutter_tdd_architechture/core/usecases/usecase.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  // api.com/2
  // api.com/random
  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;
  Params({ @required this.number });
  
  @override
  List<Object> get props => [number];
}
