/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025

  Unit test example for ChatRepository

*/

import 'package:flutter_test/flutter_test.dart';
import 'package:hilol_chat_flutter/hilol_chat_flutter.dart';

void main() {
  group('ChatRepository Tests', () {
    late MockChatRepository repository;

    setUp(() {
      repository = MockChatRepository();
    });

    tearDown(() async {
      await repository.dispose();
    });

    test('initialize should return success', () async {
      // Arrange
      final config = HilolChatConfig(
        baseUrl: 'https://test.com',
        companyToken: 'test-token',
        appKey: 'test-key',
        appSecret: 'test-secret',
        socketUrl: 'wss://test.com',
        defaultEndpoint: '/chat',
      );

      // Act
      final result = await repository.initialize(config: config);

      // Assert
      expect(result.isRight(), true);
      result.fold((failure) => fail('Should not fail'), (success) {
        expect(success.isRegistered, false);
      });
    });

    test('initialize should return failure when shouldFail is true', () async {
      // Arrange
      repository.setShouldFail(true);
      final config = HilolChatConfig(
        baseUrl: 'https://test.com',
        companyToken: 'test-token',
        appKey: 'test-key',
        appSecret: 'test-secret',
        socketUrl: 'wss://test.com',
        defaultEndpoint: '/chat',
      );

      // Act
      final result = await repository.initialize(config: config);

      // Assert
      expect(result.isLeft(), true);
      result.fold((failure) {
        expect(failure, isA<NetworkFailure>());
        expect(failure.message, contains('Network error'));
      }, (success) => fail('Should not succeed'));
    });

    test('register should fail if not initialized', () async {
      // Act
      final result = await repository.register(
        userData: {'name': 'Test User', 'email': 'test@example.com'},
      );

      // Assert
      expect(result.isLeft(), true);
      result.fold((failure) {
        expect(failure, isA<ChatNotInitializedFailure>());
      }, (success) => fail('Should not succeed'));
    });

    test('sendMessage should add message to list', () async {
      // Arrange
      final config = HilolChatConfig(
        baseUrl: 'https://test.com',
        companyToken: 'test-token',
        appKey: 'test-key',
        appSecret: 'test-secret',
        socketUrl: 'wss://test.com',
        defaultEndpoint: '/chat',
      );
      await repository.initialize(config: config);

      // Act
      final result = await repository.sendMessage(message: 'Hello');

      // Assert
      expect(result.isRight(), true);
      result.fold((failure) => fail('Should not fail'), (success) {
        expect(success.message.content, 'Hello');
      });
    });

    test('getMessages should return messages', () async {
      // Arrange
      final config = HilolChatConfig(
        baseUrl: 'https://test.com',
        companyToken: 'test-token',
        appKey: 'test-key',
        appSecret: 'test-secret',
        socketUrl: 'wss://test.com',
        defaultEndpoint: '/chat',
      );
      await repository.initialize(config: config);
      await repository.sendMessage(message: 'Test message 1');
      await repository.sendMessage(message: 'Test message 2');

      // Act
      final result = await repository.getMessages();

      // Assert
      expect(result.isRight(), true);
      result.fold((failure) => fail('Should not fail'), (success) {
        expect(success.messages.length, 2);
        expect(success.hasMore, false);
      });
    });

    test('messageStream should emit messages', () async {
      // Arrange
      final config = HilolChatConfig(
        baseUrl: 'https://test.com',
        companyToken: 'test-token',
        appKey: 'test-key',
        appSecret: 'test-secret',
        socketUrl: 'wss://test.com',
        defaultEndpoint: '/chat',
      );
      await repository.initialize(config: config);

      // Act & Assert
      expectLater(
        repository.messageStream,
        emitsInOrder([
          predicate((ChatMessage message) => message.content == 'Test'),
        ]),
      );

      await repository.sendMessage(message: 'Test');
    });
  });
}
