import 'dart:ui';

import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'animation_model.dart';
export 'animation_model.dart';
import 'package:indexed/indexed.dart';
import 'package:quiver/async.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({super.key});

  @override
  _AnimationWidgetState createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget> with TickerProviderStateMixin {
  late AnimationModel _model;

  double tV = 0.2;
  double tV_1 = 0.2;
  double tW = 0.4;
  double tW_1 = 0.4;
  double yV = 0.44;
  double yV_1 = 0.44;
  double yW = 0.22;
  double yW_1 = 0.22;
  double uV = 0.5;
  double uV_1 = 0.5;
  double uW = 0.4;
  double uW_1 = 0.4;
  double iV = 0.25;
  double iV_1 = 0.25;
  double iW = 0.47;
  double iW_1 = 0.47;

  Color d1 = const Color(0xff1f4477);
  Color d1_1 = const Color(0xff1f4477);
  Color d2 = const Color(0xffeeb609);
  Color d2_1 = const Color(0xffeeb609);

  Curve easeOutOrEaseInForColor = const FlippedCurve(Curves.easeOutQuart);

  int tlPri = 0;
  int trPri = 0;
  int blPri = 0;
  int brPri = 0;
  bool _05to1tl = false;
  bool _05to1tr = false;
  bool _05to1bl = false;
  bool _05to1br = false;

  void resetAll() {
    easeOutOrEaseInForColor = const FlippedCurve(Curves.easeOutQuart);
    tV_1 = tV = 0.2;
    tW_1 = tW = 0.4;
    d1_1 = d1 = const Color(0xff1f4477);
    tlPri = 0;
    yV_1 = yV = 0.44;
    yW_1 = yW = 0.22;
    trPri = 0;
    _05to1tr = false;
    uV_1 = uV = 0.5;
    uW_1 = uW = 0.4;
    blPri = 0;
    _05to1bl = false;
    iV_1 = iV = 0.25;
    iW_1 = iW = 0.47;
    d2_1 = d2 = const Color(0xffeeb609);
    brPri = 0;
    _05to1br = false;
  }

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
            child: GestureDetector(
              onTap: () {
                print(":)");
                resetAll();
                setState(() {});
              },
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * (_05to1tl ? 1 : 0.4),
                height: MediaQuery.sizeOf(context).height * (_05to1tl ? 1 : 0.52),
                child: ColoredBox(
                  color: Colors.transparent,
                  child: TweenAnimationBuilder<Color?>(
                    curve: easeOutOrEaseInForColor,
                    tween: ColorTween(begin: d1_1, end: d1),
                    duration: const Duration(milliseconds: 300),
                    builder: (BuildContext context, Color? c, Widget? child) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(100.0, 100.0, 0.0, 0.0),
                            child: TweenAnimationBuilder<double>(
                              curve: Curves.easeOutQuart,
                              tween: Tween<double>(
                                begin: tW_1,
                                end: tW,
                              ),
                              duration: const Duration(milliseconds: 600),
                              onEnd: () {
                                if (tV == 0.2) {
                                  setState(() {
                                    tV_1 = tV = 0.2;
                                    tW_1 = tW = 0.4;
                                    d1_1 = d1 = const Color(0xff1f4477);
                                    _05to1tl = false;
                                  });
                                } else if (tV == 0.6) {
                                  tV_1 = tV = 0.6;
                                  tW_1 = tW = 0.75;
                                  d1_1 = d1 = const Color(0x001f4477);
                                }
                              },
                              builder: (BuildContext context, double value2, Widget? child) {
                                return TweenAnimationBuilder<double>(
                                  curve: Curves.easeOutQuart,
                                  tween: Tween<double>(
                                    begin: tV_1,
                                    end: tV,
                                  ),
                                  duration: const Duration(milliseconds: 600),
                                  builder: (BuildContext context, double value, Widget? child) {
                                    return GestureDetector(
                                      onTap: () {
                                        // Reset all other
                                        setState(() {
                                          yV_1 = yV = 0.44;
                                          yW_1 = yW = 0.22;
                                          trPri = 0;
                                          _05to1tr = false;
                                          uV_1 = uV = 0.5;
                                          uW_1 = uW = 0.4;
                                          blPri = 0;
                                          _05to1bl = false;
                                          iV_1 = iV = 0.25;
                                          iW_1 = iW = 0.47;
                                          d2_1 = d2 = const Color(0xffeeb609);
                                          brPri = 0;
                                          _05to1br = false;
                                          tV_1 = value;
                                          tW_1 = value2;
                                          d1_1 = c!;
                                          easeOutOrEaseInForColor =
                                              easeOutOrEaseInForColor == const FlippedCurve(Curves.easeOutQuart)
                                                  ? Curves.easeOutQuart
                                                  : const FlippedCurve(Curves.easeOutQuart);
                                          tV = tV == 0.2 ? 0.6 : 0.2;
                                          tW = tW == 0.4 ? 0.75 : 0.4;
                                          d1 = d1 == const Color(0xff1f4477)
                                              ? const Color(0x001f4477)
                                              : const Color(0xff1f4477);
                                          if (tV == 0.6) {
                                            tlPri = 2;
                                            print("hi");
                                            _05to1tl = true;
                                          }
                                          print(tV);
                                        });
                                      },
                                      child: Container(
                                        width: MediaQuery.sizeOf(context).width * value,
                                        height: MediaQuery.sizeOf(context).height * value2,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 15.0),
                                                child: Text(
                                                  'REWARD',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                            child: ColoredBox(
                              color: c ?? Colors.transparent,
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.05,
                                height: MediaQuery.sizeOf(context).height * 0.35,
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 20.0)),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
        Indexed(
          key: UniqueKey(),
          index: trPri,
          child: Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                print(":)");
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 100.0, 0.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * (_05to1tr ? 1 : 0.53),
                  height: MediaQuery.sizeOf(context).height * (_05to1tr ? 1 : 0.40),
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: TweenAnimationBuilder<double>(
                      curve: Curves.easeOutQuart,
                      tween: Tween<double>(
                        begin: yW_1,
                        end: yW,
                      ),
                      duration: const Duration(milliseconds: 600),
                      onEnd: () {
                        if (yV == 0.44) {
                          setState(() {
                            yV_1 = yV = 0.44;
                            yW_1 = yW = 0.22;
                            _05to1tr = false;
                          });
                        } else if (yV == 0.75) {
                          yV_1 = yV = 0.75;
                          yW_1 = yW = 0.6;
                        }
                      },
                      builder: (BuildContext context, double value3, Widget? child) {
                        return TweenAnimationBuilder<double>(
                          curve: Curves.easeOutQuart,
                          tween: Tween<double>(
                            begin: yV_1,
                            end: yV,
                          ),
                          duration: const Duration(milliseconds: 600),
                          builder: (BuildContext context, double value1, Widget? child) {
                            return GestureDetector(
                              onTap: () {
                                // Reset all other
                                setState(() {
                                  tV_1 = tV = 0.2;
                                  tW_1 = tW = 0.4;
                                  d1_1 = d1 = const Color(0xff1f4477);
                                  tlPri = 0;
                                  _05to1tl = false;
                                  uV_1 = uV = 0.5;
                                  uW_1 = uW = 0.4;
                                  blPri = 0;
                                  _05to1bl = false;
                                  iV_1 = iV = 0.25;
                                  iW_1 = iW = 0.47;
                                  d2_1 = d2 = const Color(0xffeeb609);
                                  brPri = 0;
                                  _05to1br = false;
                                  yV_1 = value1;
                                  yW_1 = value3;
                                  yV = yV == 0.44 ? 0.75 : 0.44;
                                  yW = yW == 0.22 ? 0.6 : 0.22;
                                  if (yV == 0.75) {
                                    trPri = 2;
                                    print("hi1");
                                    _05to1tr = true;
                                  }
                                  print(yV);
                                });
                              },
                              child: Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * value1,
                                  height: MediaQuery.sizeOf(context).height * value3,
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
                                            'https://picsum.photos/seed/567/600',
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            'NETWORKING',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        );
                      },
                    ),
                  ),
                ),
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
            child: GestureDetector(
              onTap: () {
                print(":)");
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 100.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * (_05to1bl ? 1 : 0.55),
                  height: MediaQuery.sizeOf(context).height * (_05to1bl ? 1 : 0.41),
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: TweenAnimationBuilder<double>(
                      curve: Curves.easeOutQuart,
                      tween: Tween<double>(
                        begin: uW_1,
                        end: uW,
                      ),
                      duration: const Duration(milliseconds: 600),
                      onEnd: () {
                        if (uV == 0.5) {
                          setState(() {
                            uV_1 = uV = 0.5;
                            uW_1 = uW = 0.4;
                            _05to1bl = false;
                          });
                        } else if (uV == 0.75) {
                          uV_1 = uV = 0.75;
                          uW_1 = uW = 0.66;
                        }
                      },
                      builder: (BuildContext context, double value6, Widget? child) {
                        return TweenAnimationBuilder<double>(
                          curve: Curves.easeOutQuart,
                          tween: Tween<double>(
                            begin: uV_1,
                            end: uV,
                          ),
                          duration: const Duration(milliseconds: 600),
                          builder: (BuildContext context, double value4, Widget? child) {
                            return GestureDetector(
                              onTap: () {
                                // Reset all other
                                setState(
                                  () {
                                    tV_1 = tV = 0.2;
                                    tW_1 = tW = 0.4;
                                    d1_1 = d1 = const Color(0xff1f4477);
                                    tlPri = 0;
                                    _05to1tl = false;
                                    yV_1 = yV = 0.44;
                                    yW_1 = yW = 0.22;
                                    trPri = 0;
                                    _05to1tr = false;
                                    iV_1 = iV = 0.25;
                                    iW_1 = iW = 0.47;
                                    d2_1 = d2 = const Color(0xffeeb609);
                                    brPri = 0;
                                    _05to1br = false;
                                    uV_1 = value4;
                                    uW_1 = value6;
                                    uV = uV == 0.5 ? 0.75 : 0.5;
                                    uW = uW == 0.4 ? 0.66 : 0.4;
                                    if (uV == 0.75) {
                                      blPri = 2;
                                      _05to1bl = true;
                                    }
                                  },
                                );
                              },
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * value4,
                                  height: MediaQuery.sizeOf(context).height * value6 - 50,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1531604250646-2f0e818c4f06?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8c3Vuc2V0fGVufDB8fHx8MTcwMTk2NzEzOXww&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(1.0, -1.0),
                                                child: Text(
                                                  'Professional',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontFamily: 'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 38.0,
                                                        letterSpacing: 6.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'SKILLS',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                            );
                          },
                        );
                      },
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
            child: GestureDetector(
              onTap: () {
                print(":)");
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 100.0, 100.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * (_05to1br ? 1 : 0.34),
                  height: MediaQuery.sizeOf(context).height * (_05to1br ? 1 : 0.53),
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: TweenAnimationBuilder<Color?>(
                        curve: easeOutOrEaseInForColor,
                        tween: ColorTween(begin: d2_1, end: d2),
                        duration: const Duration(milliseconds: 300),
                        builder: (BuildContext context, Color? c1, Widget? child) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ColoredBox(
                                color: c1 ?? Colors.transparent,
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.05,
                                  height: MediaQuery.sizeOf(context).height * 0.35,
                                ),
                              ),
                              TweenAnimationBuilder<double>(
                                  curve: Curves.easeOutQuart,
                                  tween: Tween<double>(
                                    begin: iW_1,
                                    end: iW,
                                  ),
                                  duration: const Duration(milliseconds: 600),
                                  onEnd: () {
                                    if (iV == 0.25) {
                                      setState(() {
                                        iV_1 = iV = 0.25;
                                        iW_1 = iW = 0.47;
                                        d2_1 = d2 = const Color(0xffeeb609);
                                        _05to1br = false;
                                      });
                                    }
                                    else if (iV == 0.69) {
                                      iV_1 = iV = 0.69;
                                      iW_1 = iW = 0.75;
                                      d2_1 = d2 = const Color(0x00eeb609);
                                    }
                                  },
                                  builder: (BuildContext context, double value7, Widget? child) {
                                    return TweenAnimationBuilder<double>(
                                      curve: Curves.easeOutQuart,
                                      tween: Tween<double>(
                                        begin: iV_1,
                                        end: iV,
                                      ),
                                      duration: const Duration(milliseconds: 600),
                                      builder: (BuildContext context, double value5, Widget? child) {
                                        return GestureDetector(
                                          onTap: () {
                                            // Reset all other
                                            setState(() {
                                              tV_1 = tV = 0.2;
                                              tW_1 = tW = 0.4;
                                              d1_1 = d1 = const Color(0xff1f4477);
                                              tlPri = 0;
                                              _05to1tl = false;
                                              yV_1 = yV = 0.44;
                                              yW_1 = yW = 0.22;
                                              trPri = 0;
                                              _05to1tr = false;
                                              uV_1 = uV = 0.5;
                                              uW_1 = uW = 0.4;
                                              blPri = 0;
                                              _05to1bl = false;
                                              iV_1 = value5;
                                              iW_1 = value7;
                                              d2_1 = c1!;
                                              easeOutOrEaseInForColor =
                                                  easeOutOrEaseInForColor == const FlippedCurve(Curves.easeOutQuart)
                                                      ? Curves.easeOutQuart
                                                      : const FlippedCurve(Curves.easeOutQuart);
                                              iV = iV == 0.25 ? 0.69 : 0.25;
                                              iW = iW == 0.47 ? 0.75 : 0.47;
                                              d2 = d2 == const Color(0xffeeb609)
                                                  ? const Color(0x00eeb609)
                                                  : const Color(0xffeeb609);
                                              if (iV == 0.69) {
                                                brPri = 2;
                                                print("hi");
                                                _05to1br = true;
                                              }
                                              print(tV);
                                            });
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context).width * value5,
                                            height: MediaQuery.sizeOf(context).height * value7 - 50,
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
                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'BUILD',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontFamily: 'Readex Pro',
                                                              color: Colors.white,
                                                              fontSize: 38.0,
                                                              letterSpacing: 6.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Portfolio',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                        );
                                      },
                                    );
                                  }),
                            ].divide(const SizedBox(width: 20.0)),
                          );
                        }),
                  ),
                ),
              ),
            ),
          ),
        ),
      ])
    ]);
  }
}
