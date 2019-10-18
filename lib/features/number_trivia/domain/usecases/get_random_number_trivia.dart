import 'package:flutter_tdd_architechture/core/error/failures.dart';
import 'package:flutter_tdd_architechture/core/usecases/usecase.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}

