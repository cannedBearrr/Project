import 'dart:ui';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'animation_model.dart';
export 'animation_model.dart';
import 'package:indexed/indexed.dart';

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
  double lerpT = 0;
  double lerpY = 0;
  double lerpU = 0;
  double lerpI = 0;
  double lerpT_1 = 0;
  double lerpY_1 = 0;
  double lerpU_1 = 0;
  double lerpI_1 = 0;

  Color d1 = const Color(0xff1f4477);
  Color d1_1 = const Color(0xff1f4477);
  Color d2 = const Color(0xffeeb609);
  Color d2_1 = const Color(0xffeeb609);

  Curve easeOutOrIn = const FlippedCurve(Curves.easeOutQuart);
  Curve easeOutOrInDl = const Interval(0.35, 1, curve: Curves.easeInQuart);

  int tlPri = 0;
  int trPri = 0;
  int blPri = 0;
  int brPri = 0;
  bool _05to1tl = false;
  bool _05to1tr = false;
  bool _05to1bl = false;
  bool _05to1br = false;

  void resetAll() {
    lerpT_1 = lerpT = 0;
    lerpY_1 = lerpY = 0;
    lerpU_1 = lerpU = 0;
    lerpI_1 = lerpI = 0;
    easeOutOrIn = const FlippedCurve(Curves.easeOutQuart);
    easeOutOrInDl = const Interval(0.35, 1, curve: Curves.easeInQuart);
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

    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = max(MediaQuery.sizeOf(context).height, (screenWidth > 600) ? 750 : 550);

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
                resetAll();
                setState(() {});
              },
              child: SizedBox(
                width: screenWidth * (_05to1tl ? 1 : 0.4),
                height: screenHeight * (_05to1tl ? 1 : 0.52),
                child: ColoredBox(
                  color: Colors.transparent,
                  child: TweenAnimationBuilder<Color?>(
                    curve: easeOutOrIn,
                    tween: ColorTween(begin: d1_1, end: d1),
                    duration: const Duration(milliseconds: 300),
                    builder: (BuildContext context, Color? c, Widget? child) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(100.0, 100.0, 0.0, 0.0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: TweenAnimationBuilder<double>(
                                curve: Curves.easeOutQuart,
                                tween: Tween<double>(
                                  begin: tW_1,
                                  end: tW,
                                ),
                                duration: const Duration(milliseconds: 600),
                                onEnd: () {
                                  if (tV == 0.2) {
                                    tV_1 = tV = 0.2;
                                    tW_1 = tW = 0.4;
                                    d1_1 = d1 = const Color(0xff1f4477);
                                    lerpT_1 = lerpT = 0;
                                    _05to1tl = false;
                                  } else if (tV == 0.6) {
                                    tV_1 = tV = 0.6;
                                    tW_1 = tW = 0.75;
                                    d1_1 = d1 = const Color(0x001f4477);
                                    lerpT_1 = lerpT = 1;
                                  }
                                  setState(() {});
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
                                            easeOutOrIn = easeOutOrIn == const FlippedCurve(Curves.easeOutQuart)
                                                ? Curves.easeOutQuart
                                                : const FlippedCurve(Curves.easeOutQuart);
                                            tV = tV == 0.2 ? 0.6 : 0.2;
                                            tW = tW == 0.4 ? 0.75 : 0.4;
                                            d1 = d1 == const Color(0xff1f4477) ? const Color(0x001f4477) : const Color(0xff1f4477);
                                            lerpT = lerpT == 0 ? 1 : 0;
                                            if (tV == 0.6) {
                                              tlPri = 2;
                                              _05to1tl = true;
                                            }
                                          });
                                        },
                                        child: Container(
                                          width: screenWidth * value,
                                          height: screenHeight * value2 - 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Image.asset(
                                                  'assets/images/Trophie.jpg',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
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
                                              TweenAnimationBuilder<double>(
                                                tween: Tween<double>(
                                                  begin: lerpT_1,
                                                  end: lerpT,
                                                ),
                                                curve: FlippedCurve(easeOutOrIn),
                                                duration: const Duration(milliseconds: 600),
                                                builder: (BuildContext context, double t, Widget? child) {
                                                  lerpT_1 = t;
                                                  return Stack(
                                                    children: [
                                                      SizedBox(width: double.infinity, height: double.infinity, child: ColoredBox(color: Color.fromRGBO(0, 0, 0, t/2))),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          UnconstrainedBox(
                                                            clipBehavior: Clip.hardEdge,
                                                            child: Container(
                                                              padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                              width: 470,
                                                              decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                              child: Text(
                                                                textAlign: TextAlign.center,
                                                                "Scholarship Credit",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 36.0,
                                                                      letterSpacing: 6.0,
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(height: 30),
                                                          UnconstrainedBox(
                                                            clipBehavior: Clip.hardEdge,
                                                            child: Container(
                                                              padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                              width: 470,
                                                              decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                              child: Text(
                                                                textAlign: TextAlign.center,
                                                                "Cash Award",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 36.0,
                                                                      letterSpacing: 6.0,
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
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
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                            child: ColoredBox(
                              color: c ?? Colors.transparent,
                              child: SizedBox(
                                width: screenWidth * 0.05,
                                height: screenHeight * 0.35 - 50,
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
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 100.0, 0.0),
                child: SizedBox(
                  width: screenWidth * (_05to1tr ? 1 : 0.53),
                  height: screenHeight * (_05to1tr ? 1 : 0.40),
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
                          yV_1 = yV = 0.44;
                          yW_1 = yW = 0.22;
                          lerpY_1 = lerpY = 0;
                          _05to1tr = false;
                        } else if (yV == 0.75) {
                          yV_1 = yV = 0.75;
                          yW_1 = yW = 0.69;
                          lerpY_1 = lerpY = 1;
                        }
                        setState(() {});
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
                                  easeOutOrIn = easeOutOrIn == const FlippedCurve(Curves.easeOutQuart)
                                      ? Curves.easeOutQuart
                                      : const FlippedCurve(Curves.easeOutQuart);
                                  yV = yV == 0.44 ? 0.75 : 0.44;
                                  yW = yW == 0.22 ? 0.69 : 0.22;
                                  lerpY = lerpY == 0 ? 1 : 0;
                                  if (yV == 0.75) {
                                    trPri = 2;
                                    _05to1tr = true;
                                  }
                                });
                              },
                              child: Align(
                                alignment: const AlignmentDirectional(1.0, -1.0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Container(
                                    width: screenWidth * value1,
                                    height: screenHeight * value3,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                          child: Image.asset(
                                            'assets/images/2023NA_036.webp',
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
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
                                        TweenAnimationBuilder<double>(
                                          tween: Tween<double>(
                                            begin: lerpY_1,
                                            end: lerpY,
                                          ),
                                          curve: FlippedCurve(easeOutOrIn),
                                          duration: const Duration(milliseconds: 600),
                                          builder: (BuildContext context, double t, Widget? child) {
                                            lerpY_1 = t;
                                            return Stack(
                                              children: [
                                                SizedBox(width: double.infinity, height: double.infinity, child: ColoredBox(color: Color.fromRGBO(0, 0, 0, t/2))),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: UnconstrainedBox(
                                                    clipBehavior: Clip.hardEdge,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      mainAxisSize: MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                          width: 540,
                                                          decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                          child: Text(
                                                            textAlign: TextAlign.center,
                                                            "Investor Connections",
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: 'Readex Pro',
                                                                  color: Color.fromRGBO(255, 255, 255, t),
                                                                  fontSize: 36.0,
                                                                  letterSpacing: 6.0,
                                                                  fontWeight: FontWeight.w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                          width: 540,
                                                          decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                          child: Text(
                                                            textAlign: TextAlign.center,
                                                            "Career Connections",
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: 'Readex Pro',
                                                                  color: Color.fromRGBO(255, 255, 255, t),
                                                                  fontSize: 36.0,
                                                                  letterSpacing: 6.0,
                                                                  fontWeight: FontWeight.w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                          width: 540,
                                                          decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                          child: Text(
                                                            textAlign: TextAlign.center,
                                                            "Business Opportunity",
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: 'Readex Pro',
                                                                  color: Color.fromRGBO(255, 255, 255, t),
                                                                  fontSize: 36.0,
                                                                  letterSpacing: 6.0,
                                                                  fontWeight: FontWeight.w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                          width: 540,
                                                          decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                          child: Text(
                                                            textAlign: TextAlign.center,
                                                            "Career Opportunity",
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                  fontFamily: 'Readex Pro',
                                                                  color: Color.fromRGBO(255, 255, 255, t),
                                                                  fontSize: 36.0,
                                                                  letterSpacing: 6.0,
                                                                  fontWeight: FontWeight.w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(height: 30)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
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
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 100.0),
                child: SizedBox(
                  width: screenWidth * (_05to1bl ? 1 : 0.55),
                  height: screenHeight * (_05to1bl ? 1 : 0.41),
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
                          uV_1 = uV = 0.5;
                          uW_1 = uW = 0.4;
                          _05to1bl = false;
                        } else if (uV == 0.75) {
                          uV_1 = uV = 0.75;
                          uW_1 = uW = 0.66;
                        }
                        setState(() {});
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
                                    easeOutOrInDl = easeOutOrInDl == const Interval(0.35, 1, curve: Curves.easeInQuart)
                                        ? Curves.easeOutCubic
                                        : const Interval(0.35, 1, curve: Curves.easeInQuart);
                                    uV = uV == 0.5 ? 0.75 : 0.5;
                                    uW = uW == 0.4 ? 0.66 : 0.4;
                                    lerpU = lerpU == 0 ? 1 : 0;
                                    if (uV == 0.75) {
                                      blPri = 2;
                                      _05to1bl = true;
                                    }
                                  },
                                );
                              },
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Container(
                                    width: screenWidth * value4,
                                    height: screenHeight * value6 - 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/2023NA_034.webp',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
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
                                        TweenAnimationBuilder<double>(
                                          tween: Tween<double>(
                                            begin: lerpU_1,
                                            end: lerpU,
                                          ),
                                          curve: FlippedCurve(easeOutOrInDl),
                                          duration: const Duration(milliseconds: 600),
                                          builder: (BuildContext context, double t, Widget? child) {
                                            lerpU_1 = t;
                                            return Stack(
                                              children: [
                                                SizedBox(width: double.infinity, height: double.infinity, child: ColoredBox(color: Color.fromRGBO(0, 0, 0, t/2))),
                                                Center(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      UnconstrainedBox(
                                                        clipBehavior: Clip.hardEdge,
                                                        child: SizedBox(
                                                          width: 980 -
                                                              1760 / (6 - 2 * (1551 - screenWidth).sign) +
                                                              screenWidth /
                                                                  (6 - 2 * (1551 - screenWidth).sign),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                            Text(
                                                              "COMPUTER PROGRAMMING",
                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    fontFamily: 'Readex Pro',
                                                                    color: Color.fromRGBO(255, 255, 255, t),
                                                                    fontSize: 28.0,
                                                                    letterSpacing: 3.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              "LEADERSHIP",
                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    fontFamily: 'Readex Pro',
                                                                    color: Color.fromRGBO(255, 255, 255, t),
                                                                    fontSize: 28.0,
                                                                    letterSpacing: 3.0,
                                                                  ),
                                                            ),
                                                          ]),
                                                        ),
                                                      ),
                                                      UnconstrainedBox(
                                                        clipBehavior: Clip.hardEdge,
                                                        child: SizedBox(
                                                          width: 980 -
                                                              1760 / (6 - 2 * (1551 - screenWidth).sign) +
                                                              screenWidth /
                                                                  (6 - 2 * (1551 - screenWidth).sign),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                "RESEARCHING",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                "CREATIVITY",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      UnconstrainedBox(
                                                        clipBehavior: Clip.hardEdge,
                                                        child: SizedBox(
                                                          width: 980 -
                                                              1760 / (6 - 2 * (1551 - screenWidth).sign) +
                                                              screenWidth /
                                                                  (6 - 2 * (1551 - screenWidth).sign),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                "COMMUNICATION",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                "PROBLEM SOLVING",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      UnconstrainedBox(
                                                        clipBehavior: Clip.hardEdge,
                                                        child: SizedBox(
                                                          width: 980 -
                                                              1760 / (6 - 2 * (1551 - screenWidth).sign) +
                                                              screenWidth /
                                                                  (6 - 2 * (1551 - screenWidth).sign),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                textAlign: TextAlign.left,
                                                                "STRATEGIC PLANNING",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                textAlign: TextAlign.left,
                                                                "BUSINESS DEVELOPMENT",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      UnconstrainedBox(
                                                        clipBehavior: Clip.hardEdge,
                                                        child: SizedBox(
                                                          width: 980 -
                                                              1760 / (6 - 2 * (1551 - screenWidth).sign) +
                                                              screenWidth /
                                                                  (6 - 2 * (1551 - screenWidth).sign),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(
                                                                textAlign: TextAlign.left,
                                                                "FINANCIAL MANAGEMENT",
                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Readex Pro',
                                                                      color: Color.fromRGBO(255, 255, 255, t),
                                                                      fontSize: 28.0,
                                                                      letterSpacing: 3.0,
                                                                    ),
                                                              ),
                                                              const SizedBox(),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(const SizedBox(height: 20)),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
                                    ),
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
                resetAll();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 100.0, 100.0),
                child: SizedBox(
                  width: screenWidth * (_05to1br ? 1 : 0.34),
                  height: screenHeight * (_05to1br ? 1 : 0.53),
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: TweenAnimationBuilder<Color?>(
                        curve: easeOutOrIn,
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
                                  width: screenWidth * 0.05,
                                  height: screenHeight * 0.35,
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: TweenAnimationBuilder<double>(
                                    curve: Curves.easeOutQuart,
                                    tween: Tween<double>(
                                      begin: iW_1,
                                      end: iW,
                                    ),
                                    duration: const Duration(milliseconds: 600),
                                    onEnd: () {
                                      if (iV == 0.25) {
                                        iV_1 = iV = 0.25;
                                        iW_1 = iW = 0.47;
                                        d2_1 = d2 = const Color(0xffeeb609);
                                        lerpI_1 = lerpI = 0;
                                        _05to1br = false;
                                      } else if (iV == 0.69) {
                                        iV_1 = iV = 0.69;
                                        iW_1 = iW = 0.75;
                                        d2_1 = d2 = const Color(0x00eeb609);
                                        lerpI_1 = lerpI = 1;
                                      }
                                      setState(() {});
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
                                                easeOutOrIn = easeOutOrIn == const FlippedCurve(Curves.easeOutQuart)
                                                    ? Curves.easeOutQuart
                                                    : const FlippedCurve(Curves.easeOutQuart);
                                                iV = iV == 0.25 ? 0.69 : 0.25;
                                                iW = iW == 0.47 ? 0.75 : 0.47;
                                                d2 = d2 == const Color(0xffeeb609) ? const Color(0x00eeb609) : const Color(0xffeeb609);
                                                lerpI = lerpI == 0 ? 1 : 0;
                                                if (iV == 0.69) {
                                                  brPri = 2;
                                                  _05to1br = true;
                                                }
                                              });
                                            },
                                            child: Container(
                                              width: screenWidth * value5,
                                              height: screenHeight * value7 - 50,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/2023NA_040.webp',
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    fit: BoxFit.cover,
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
                                                  TweenAnimationBuilder<double>(
                                                    tween: Tween<double>(
                                                      begin: lerpI_1,
                                                      end: lerpI,
                                                    ),
                                                    curve: FlippedCurve(easeOutOrIn),
                                                    duration: const Duration(milliseconds: 600),
                                                    builder: (BuildContext context, double t, Widget? child) {
                                                      lerpI_1 = t;
                                                      return Stack(
                                                        children: [
                                                          SizedBox(width: double.infinity, height: double.infinity, child: ColoredBox(color: Color.fromRGBO(0, 0, 0, t/2))),
                                                          Align(
                                                            alignment: Alignment.center,
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                UnconstrainedBox(
                                                                  clipBehavior: Clip.hardEdge,
                                                                  child: Container(
                                                                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                                    width: 585,
                                                                    decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                                    child: Text(
                                                                      textAlign: TextAlign.center,
                                                                      "Internship Certificates",
                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                            fontFamily: 'Readex Pro',
                                                                            color: Color.fromRGBO(255, 255, 255, t),
                                                                            fontSize: 36.0,
                                                                            letterSpacing: 6.0,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                UnconstrainedBox(
                                                                  clipBehavior: Clip.hardEdge,
                                                                  child: Container(
                                                                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                                                                    width: 585,
                                                                    decoration: BoxDecoration(border: Border.all(color: Color.fromRGBO(255, 255, 255, t))),
                                                                    child: Text(
                                                                      textAlign: TextAlign.center,
                                                                      "Achievements",
                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                            fontFamily: 'Readex Pro',
                                                                            color: Color.fromRGBO(255, 255, 255, t),
                                                                            fontSize: 36.0,
                                                                            letterSpacing: 6.0,
                                                                            fontWeight: FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(height: 30)),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }),
                              ),
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
