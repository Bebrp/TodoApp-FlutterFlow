import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for semail widget.
  FocusNode? semailFocusNode;
  TextEditingController? semailTextController;
  String? Function(BuildContext, String?)? semailTextControllerValidator;
  String? _semailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email address... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Enter valid email address!';
    }
    return null;
  }

  // State field(s) for spassword widget.
  FocusNode? spasswordFocusNode;
  TextEditingController? spasswordTextController;
  late bool spasswordVisibility;
  String? Function(BuildContext, String?)? spasswordTextControllerValidator;
  String? _spasswordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Password must be > 7 characters long';
    }

    return null;
  }

  // State field(s) for spasswordconfirm widget.
  FocusNode? spasswordconfirmFocusNode;
  TextEditingController? spasswordconfirmTextController;
  late bool spasswordconfirmVisibility;
  String? Function(BuildContext, String?)?
      spasswordconfirmTextControllerValidator;
  String? _spasswordconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Password must be > 7 characters long';
    }

    return null;
  }

  // State field(s) for lemail widget.
  FocusNode? lemailFocusNode;
  TextEditingController? lemailTextController;
  String? Function(BuildContext, String?)? lemailTextControllerValidator;
  String? _lemailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email address... is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Enter valid email address!';
    }
    return null;
  }

  // State field(s) for lpassword widget.
  FocusNode? lpasswordFocusNode;
  TextEditingController? lpasswordTextController;
  late bool lpasswordVisibility;
  String? Function(BuildContext, String?)? lpasswordTextControllerValidator;
  String? _lpasswordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Password must be > 7 characters long';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    semailTextControllerValidator = _semailTextControllerValidator;
    spasswordVisibility = false;
    spasswordTextControllerValidator = _spasswordTextControllerValidator;
    spasswordconfirmVisibility = false;
    spasswordconfirmTextControllerValidator =
        _spasswordconfirmTextControllerValidator;
    lemailTextControllerValidator = _lemailTextControllerValidator;
    lpasswordVisibility = false;
    lpasswordTextControllerValidator = _lpasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    semailFocusNode?.dispose();
    semailTextController?.dispose();

    spasswordFocusNode?.dispose();
    spasswordTextController?.dispose();

    spasswordconfirmFocusNode?.dispose();
    spasswordconfirmTextController?.dispose();

    lemailFocusNode?.dispose();
    lemailTextController?.dispose();

    lpasswordFocusNode?.dispose();
    lpasswordTextController?.dispose();
  }
}
