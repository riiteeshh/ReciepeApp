class ResponseModel {
  final dynamic data;
  final String message;
  final int status;

  const ResponseModel({
    required this.data,
    required this.message,
    required this.status,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
        data: json['data'] ?? [],
        message: json['message'],
        status: json['status']);
  }
}
