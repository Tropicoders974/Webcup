import '/flutter_flow/flutter_flow_util.dart';
import 'double_agent_widget.dart' show DoubleAgentWidget;
import 'package:flutter/material.dart';

class DoubleAgentModel extends FlutterFlowModel<DoubleAgentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
