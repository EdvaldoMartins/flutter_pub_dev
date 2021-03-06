import 'package:flutter_package/src/domain/packages/entities/pubspec.dart';

class Version {
  final String version;
  final String archive_url;
  final Pubspec pubspec;

  Version({required this.version, required this.archive_url, required this.pubspec});

  Map<String, dynamic> toMap() {
    return {
      'version': this.version,
      'archive_url': this.archive_url,
      'pubspec': this.pubspec,
    };
  }


}
