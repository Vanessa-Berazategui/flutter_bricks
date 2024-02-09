export 'exceptions.dart';

class ServerException implements Exception {
  const ServerException({
    required this.message,
  });

  final String message;

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {}
