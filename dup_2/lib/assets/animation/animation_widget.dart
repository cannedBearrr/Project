import 'dart:ui';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'animation_model.dart';
export 'animation_model.dart';
import 'package:indexed/indexed.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with TickerProviderStateMixin {
  late AnimationModel _model;

  double tV = 0.2;
  double tV_1 = 0.2;
  double yV = 0.22;
  double yV_1 = 0.22;
  double uV = 0.2;
  double uV_1 = 0.2;
  double iV = 0.2;
  double iV_1 = 0.2;

  int tlPri = 0;
  int trPri = 0;
  int blPri = 0;
  int brPri = 0;
  double _05to1tl = 0.5;
  double _05to1tr = 0.5;
  double _05to1bl = 0.5;
  double _05to1br = 0.5;

  // double lerp(double a, double b, double t) {
  //   return lerp(a, b, t);
  // }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
    lowerBound: 0.5,
    upperBound: 1,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Indexer(children: [
        Indexed(
          key: UniqueKey(),
          index: tlPri,
          child: Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.sizeOf(context).width * _05to1tl,
            height: MediaQuery.sizeOf(context).height * _05to1tl,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      100.0, 100.0, 0.0, 0.0),
                  child: TweenAnimationBuilder<double>(
                    curve: Curves.easeOutQuart,
                    tween: Tween<double>(
                      begin: tV_1,
                      end: tV,
                    ),
                    duration: const Duration(milliseconds: 600),
                    onEnd: () async {
                      if (tV == 0.2) {
                        tlPri = 0;
                        print("low");
                        _05to1tl = 0.5;
                      }
                    },
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return GestureDetector(
                        onTap: () async {
                          setState(() {
                            tV_1 = value;
                            tV = tV == 0.2 ? 0.6 : 0.2;
                            if (tV == 0.6) {
                              tlPri = 1;
                              print("hi");
                              _05to1tl = 1.0;
                            }
                            print(tV);
                          });
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * value,
                          height: MediaQuery.sizeOf(context).height *
                              ((value + 0.3) / 2 + 0.25),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/658/600',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 15.0),
                                  child: Text(
                                    'REWARD',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 38.0,
                                          letterSpacing: 6.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 100.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.05,
                    height: MediaQuery.sizeOf(context).height * 0.35,
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
          index: trPri,
          child: Positioned(
            top: 0,
            right: 0,
            width: MediaQuery.sizeOf(context).width * _05to1tr,
            height: MediaQuery.sizeOf(context).height * _05to1tr,
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 100.0, 0.0),
              child: TweenAnimationBuilder<double>(
                curve: Curves.easeOutQuart,
                tween: Tween<double>(
                  begin: yV_1,
                  end: yV,
                ),
                duration: const Duration(milliseconds: 600),
                onEnd: () async {
                  if (yV == 0.22) {
                    trPri = 0;
                    print("low1");
                    _05to1tr = 0.5;
                  }
                  print(_05to1tr);
                },
                builder: (BuildContext context, double value1, Widget? child) {
                  return GestureDetector(
                    onTap: () async {
                      setState(() {
                        yV_1 = value1;
                        yV = yV == 0.22 ? 0.5 : 0.22;
                        if (yV == 0.5) {
                          trPri = 1;
                          print("hi1");
                          _05to1tr = 1.0;
                        }
                        print(yV);
                      });
                    },
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width *
                            (value1 + 0.38),
                        height: MediaQuery.sizeOf(context).height * value1,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment:
                                  const AlignmentDirectional(-1.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/567/600',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment:
                                  const AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 15.0),
                                child: Text(
                                  'NETWORKING',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 38.0,
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
                  );
                },
              ),
            ),
          ),
        ),
        Indexed(
          key: UniqueKey(),
          index: blPri,
          child: Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.sizeOf(context).width * _05to1bl,
            height: MediaQuery.sizeOf(context).height * _05to1bl,
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 100.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.49,
                height: MediaQuery.sizeOf(context).height * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1531604250646-2f0e818c4f06?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8c3Vuc2V0fGVufDB8fHx8MTcwMTk2NzEzOXww&ixlib=rb-4.0.3&q=80&w=1080',
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
                                0.0, 15.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(1.0, -1.0),
                                  child: Text(
                                    'Professional',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 38.0,
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
                                        fontSize: 38.0,
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
        ),
        Indexed(
          key: UniqueKey(),
          index: brPri,
          child: Positioned(
            bottom: 0,
            right: 0,
            width: MediaQuery.sizeOf(context).width * _05to1br,
            height: MediaQuery.sizeOf(context).height * _05to1br,
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 100.0, 100.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.05,
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEEB609),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1616712134411-6b6ae89bc3ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxzdGFycnklMjBuaWdodHxlbnwwfHx8fDE3MDIwMzMyNDZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BUILD',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 38.0,
                                      letterSpacing: 6.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Portfolio',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: 38.0,
                                      letterSpacing: 6.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
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
      ])
    ]);
  }
}
