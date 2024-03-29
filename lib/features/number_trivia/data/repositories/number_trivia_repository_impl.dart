import 'package:flutter_tdd_architechture/core/error/failures.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_tdd_architechture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    return null;
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    return null;
  }
}