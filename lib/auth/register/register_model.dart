import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode1;
  TextEditingController? usernameController1;
  String? Function(BuildContext, String?)? usernameController1Validator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode2;
  TextEditingController? usernameController2;
  String? Function(BuildContext, String?)? usernameController2Validator;
  // State field(s) for no_tlpn widget.
  FocusNode? noTlpnFocusNode;
  TextEditingController? noTlpnController;
  String? Function(BuildContext, String?)? noTlpnControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for referall widget.
  FocusNode? referallFocusNode;
  TextEditingController? referallController;
  String? Function(BuildContext, String?)? referallControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode1?.dispose();
    usernameController1?.dispose();

    usernameFocusNode2?.dispose();
    usernameController2?.dispose();

    noTlpnFocusNode?.dispose();
    noTlpnController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    referallFocusNode?.dispose();
    referallController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
