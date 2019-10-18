import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

// General Failures
class ServerFailure implements Failure {
  final List properties;

  ServerFailure([this.properties = const []]);
  
  @override
  List get props => properties;
}

class CacheFailure implements Failure {
  final List properties;

  CacheFailure([this.properties = const []]);
  
  @override
  List get props => properties;

}
