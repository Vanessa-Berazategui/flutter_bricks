class TimeoutOptions {
  TimeoutOptions({
    int connectTimeout = 3000,
    int receiveTimeout = 30000,
    int sendTimeout = 3000,
  })  : connectTimeout = Duration(milliseconds: connectTimeout),
        receiveTimeout = Duration(milliseconds: receiveTimeout),
        sendTimeout = Duration(milliseconds: sendTimeout);

  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Duration sendTimeout;
}
