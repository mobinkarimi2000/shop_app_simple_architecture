part of 'splash_cubit.dart';

abstract class ConnectionStatus {}

class ConnectionInitial extends ConnectionStatus {}

class ConnectionON extends ConnectionStatus {}

class ConnectionOFF extends ConnectionStatus {}

class ConnectionError extends ConnectionStatus {
  final String errorMessage;
  ConnectionError(this.errorMessage);
}
