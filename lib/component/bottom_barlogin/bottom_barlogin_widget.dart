import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bottom_barlogin_model.dart';
export 'bottom_barlogin_model.dart';

class BottomBarloginWidget extends StatefulWidget {
  const BottomBarloginWidget({super.key});

  @override
  _BottomBarloginWidgetState createState() => _BottomBarloginWidgetState();
}

class _BottomBarloginWidgetState extends State<BottomBarloginWidget> {
  late BottomBarloginModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomBarloginModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Container(
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.house_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                Text(
                  'Dasboard',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.bar_chart,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                Text(
                  'Market',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.swap_calls,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                Text(
                  'Buy/Sell',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_sharp,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                Text(
                  'Akun',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
