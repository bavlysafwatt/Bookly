import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromJsonData(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, dynamic> toJsonData() => {
        'isAvailable': isAvailable,
      };

  @override
  List<Object?> get props => [isAvailable];
}
