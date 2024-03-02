
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'project_based_learning_model.dart';
export 'project_based_learning_model.dart';

class ProjectBasedLearningWidget extends StatefulWidget {
  const ProjectBasedLearningWidget({super.key});

  @override
  State<ProjectBasedLearningWidget> createState() => _ProjectBasedLearningWidgetState();
}

class _ProjectBasedLearningWidgetState extends State<ProjectBasedLearningWidget> {
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
            Image.asset(
              'assets/images/DSC_1630.webp',
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: MediaQuery.sizeOf(context).height - 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Project - Based Learning',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: (responsiveVisibility(context: context, phone: false)) ? 55 : 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.symmetric(
                                    horizontal: (responsiveVisibility(context: context, phone: false)) ? 40 : 20),
                                child: Text(
                                  'Project-Based Learning (PBL) engages students in real-world projects, fostering critical thinking and collaboration. It mirrors authentic scenarios, promoting skills like inquiry-based learning and autonomy. Students actively contribute to project design, emphasizing the integration of subjects and the interconnectedness of real-world knowledge. PBL encourages reflection, self-assessment, and the development of essential skills. Assessment focuses on holistic growth, preparing students for the complexities of the real world.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                        fontSize: (responsiveVisibility(context: context, phone: false)) ? 24 : 18,
                                      ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 40.0)).addToStart(const SizedBox(height: 60.0)).addToEnd(const SizedBox(height: 20.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
