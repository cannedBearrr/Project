import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_based_learning_model.dart';
export 'project_based_learning_model.dart';

class ProjectBasedLearningWidget extends StatefulWidget {
  const ProjectBasedLearningWidget({super.key});

  @override
  State<ProjectBasedLearningWidget> createState() =>
      _ProjectBasedLearningWidgetState();
}

class _ProjectBasedLearningWidgetState
    extends State<ProjectBasedLearningWidget> {
  late ProjectBasedLearningModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectBasedLearningModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://picsum.photos/seed/542/600',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: MediaQuery.sizeOf(context).height * 0.76,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Project - Based Learning',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Our Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjfOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjf\nOur Currisum is sndskdnskdnsknsfdfdf\nsdfsdfdfkjdsfdsklfjlsdjfOur Currisum is sndskdnskdnsknsfdfdf\n',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ]
                      .divide(SizedBox(height: 40.0))
                      .addToStart(SizedBox(height: 60.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
