class UnknownFailure {
  @override
  String get code => "UnknownFailure";

  @override
  final String? message;

  final String? details;

  UnknownFailure({this.message = "Unknown Error", this.details});

  static fromException(dynamic originalException) {
    String? message;
    try {
      message = "Unknown Error Occurred";
      if (originalException.notification != null) {
        message = originalException.notification;
      }
      return UnknownFailure(message: message);
    } catch (e) {
      try {
        if (originalException.error != null) {
          message = originalException.error.toString();
        }
        return UnknownFailure(message: message, details: originalException.toString());
      } catch (e) {
        try {
          if (originalException.message != null) {
            message = originalException.message;
          }
          return UnknownFailure(message: message, details: originalException.toString());
        } catch (e) {
          return UnknownFailure(details: e.toString());
        }
      }
    }
  }

  @override
  String toString() => "$runtimeType: $message";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UnknownFailure && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
