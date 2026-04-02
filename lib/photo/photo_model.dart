import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'photo_widget.dart' show PhotoWidget;
import 'package:flutter/material.dart';

class PhotoModel extends FlutterFlowModel<PhotoWidget> {
  ///  Local state fields for this page.

  int? listIndex = 0;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData6e = false;
  FFUploadedFile uploadedLocalFile_uploadData6e =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (evx)] action in Button widget.
  ApiCallResponse? apiResultEvxCopy;
  // Stores action output result for [Backend Call - API (csbUploadfiletoFireBase)] action in Button widget.
  ApiCallResponse? uplloadresponseURLCsb;
  bool isDataUploading_uploadData6e9 = false;
  FFUploadedFile uploadedLocalFile_uploadData6e9 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (evx)] action in Button widget.
  ApiCallResponse? apiResultEvxCopy2;
  // Stores action output result for [Backend Call - API (hrkUploadFirebase)] action in Button widget.
  ApiCallResponse? uplloadresponseURLHrk;
  bool isDataUploading_uploadData = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData = [];
  List<String> uploadedFileUrls_uploadData = [];

  bool isDataUploading_uploadDataHc = false;
  FFUploadedFile uploadedLocalFile_uploadDataHc =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataHc = '';

  bool isDataUploading_uploadDataHcs = false;
  FFUploadedFile uploadedLocalFile_uploadDataHcs =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataHcs = '';

  bool isDataUploading_uploadData6 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData6 = [];

  // Stores action output result for [Backend Call - API (hrkUploadFirebase)] action in Button widget.
  ApiCallResponse? uplloadresponseURL2Hrk;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
