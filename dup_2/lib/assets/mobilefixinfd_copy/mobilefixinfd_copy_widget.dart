import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'mobilefixinfd_copy_model.dart';
export 'mobilefixinfd_copy_model.dart';
import 'package:indexed/indexed.dart';

class MobilefixinfdCopyWidget extends StatefulWidget {
  const MobilefixinfdCopyWidget({super.key});

  @override
  _MobilefixinfdCopyWidgetState createState() =>
      _MobilefixinfdCopyWidgetState();
}

class _MobilefixinfdCopyWidgetState extends State<MobilefixinfdCopyWidget> {
  late MobilefixinfdCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobilefixinfdCopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Indexer(
          children: [
            Indexed(
              key: UniqueKey(),
                child: Positioned(
                  top: 0,
                  left: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.13,
                          height: MediaQuery.sizeOf(context).width * 0.32,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/Trophie.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Transform.scale(
                                    scaleX: 2.0,
                                    scaleY: 2.0,
                                    alignment: const Alignment(1.0, 1.0),
                                    child: Transform.translate(
                                      offset: const Offset(-1.0, -5.0),
                                      child: Transform.rotate(
                                        angle: 4.7124,
                                        alignment: const Alignment(1.0, 1.0),
                                        origin: const Offset(-50.0, -44.0),
                                        child: Align(
                                          alignment:
                                          const AlignmentDirectional(1.0, 1.0),
                                          child: Text(
                                            'REWARD',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              letterSpacing: 3.0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.05,
                          height: MediaQuery.sizeOf(context).width * 0.27,
                          decoration: const BoxDecoration(
                            color: Color(0xFF1F4477),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 20.0)),
                  ),
                ),
            ),
            Indexed(
                key: UniqueKey(),
                child: Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 50.0, 0.0),
                    child: Container(
                      width: max(MediaQuery.sizeOf(context).width * 0.5, 440),
                      height: max(MediaQuery.sizeOf(context).width * 0.1, 90),
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: SizedBox(
                          height: 130.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Image.asset(
                                  'assets/images/2023NA_036.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 7.0, 15.0),
                                  child: Text(
                                    'NETWORKING',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 32.0,
                                      letterSpacing: 6.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
            Indexed(
                key: UniqueKey(),
                child: Positioned(
                  bottom: 0,
                  left: 0,
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, 1.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 50.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.55,
                        height: max(MediaQuery.sizeOf(context).width * 0.3, 225),
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 70.0, 0.0, 0.0),
                                child: Image.network(
                                  'assets/images/2023NA_034.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 85.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, -1.0),
                                      child: Text(
                                        'Professional',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 32.0,
                                          letterSpacing: 6.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'SKILLS',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        letterSpacing: 6.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ),
            Indexed(
                key: UniqueKey(),
                child: Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 50.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.05,
                            height: MediaQuery.sizeOf(context).width * 0.27,
                            decoration: const BoxDecoration(
                              color: Color(0xFFEEB609),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.2,
                          height: MediaQuery.sizeOf(context).width * 0.35,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/2023NA_040.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Transform.scale(
                                scaleX: 2.0,
                                scaleY: 2.0,
                                alignment: const Alignment(-1.0, -1.0),
                                child: Transform.translate(
                                  offset: const Offset(32.0, -70.0),
                                  child: Transform.rotate(
                                    angle: 1.5708,
                                    alignment: const Alignment(-1.0, -1.0),
                                    origin: const Offset(-34.0, 46.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'BUILD',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 3.0,
                                            fontWeight: FontWeight.bold,
                                            lineHeight: 1.0,
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: 2.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                        ),
                                        Text(
                                          'Portfolio',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 3.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(const SizedBox(width: 20.0)),
                    ),
                  ),
                ),
            ),

          ],
        ),
      ],
    );
  }
}
