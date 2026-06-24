part of 'extensions.dart';

extension QueueTypeExtension on QueueType {
  String get title {
    switch (this) {
      case QueueType.wait:
        return 'Menunggu';
      case QueueType.called:
        return 'Dipanggil';
      case QueueType.done:
        return 'Selesai';
    }
  }
}
