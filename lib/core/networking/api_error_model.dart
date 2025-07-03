import 'package:book_a_doctor/core/helpers/extensions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: "data")
  final Map<String, dynamic>? errors;

  ApiErrorModel({this.message, this.code, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// Returns a String containing all the error messages
  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) return message ?? "Unknown Error occurred";
    final errorMessage = errors!.entries
        .map((entry) {
          final value = entry.value;
          return "${value.join(",")}";
        })
        .join("\n");
    return errorMessage;
    // return errors!.entries
    //     .map((entry) {
    //       final value = entry.value;
    //       return "${value.join(",")}";
    //     })
    //     .join("\n");
  }
}
