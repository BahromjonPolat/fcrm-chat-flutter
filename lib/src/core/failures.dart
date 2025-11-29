/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025

*/

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int? code;

  const Failure({
    required this.message,
    this.code,
  });

  @override
  List<Object?> get props => [message, code];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.code,
  });
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    required super.message,
    super.code,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
    super.code,
  });
}

class UnknownFailure extends Failure {
  const UnknownFailure({
    required super.message,
    super.code,
  });
}

class ChatNotInitializedFailure extends Failure {
  const ChatNotInitializedFailure()
      : super(message: 'Chat is not initialized');
}

class UserAlreadyRegisteredFailure extends Failure {
  const UserAlreadyRegisteredFailure()
      : super(message: 'User is already registered');
}

class ImageProcessingFailure extends Failure {
  const ImageProcessingFailure({
    required super.message,
    super.code,
  });
}
