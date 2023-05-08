// class ApiResponse<T extends Serializable> {
//   bool? status;
//   final String message;
//   T? data;
//   ApiResponse({
//     this.status,
//     this.message='',
//     this.data,
//   });

//   void ApiError()

//   factory ApiResponse.fromJson(
//       Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
//     return ApiResponse<T>(
//       status: json["status"],
//       message: json["message"],
//       data: create(json["data"]),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "status": this.status,
//         "message": this.message,
//         "data": this.data?.toJson(),
//       };
// }

// abstract class Serializable {
//   Map<String, dynamic> toJson();
// }

class ApiResponse {
  late Object _data;
  late Object _apiError;
  // late String _error;

  // ApiResponse({
  //   required String error,
  // }) {
  //   _error = error;
  // }

  // String get error => _error;
  // set error(String error) => _error = error;

  // ApiResponse.fromJson(Map<String, dynamic> json) {
  //   _error = json['error'];
  // }

  Object get Data => _data;
  set Data(Object data) => _data = data;

  Object get ApiError => _apiError as Object;
  set ApiError(Object error) => _apiError = error;

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['error'] = this._error;
  //   return data;
  // }
}
