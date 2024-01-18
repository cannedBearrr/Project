import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/Group_4.png',
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).height * 0.1,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'ABOUT US',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
          Text(
            'PAST PROJECTS',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            'BUSNESS',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            'BENEFITS',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            'GOALS',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            'GET STARTED',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
          Text(
            'WORK WITH US',
            style: FlutterFlowTheme.of(context).bodyMedium,
          ),
        ].divide(const SizedBox(height: 50.0)).addToStart(const SizedBox(height: 50.0)),
      ),
    );
  }
}
