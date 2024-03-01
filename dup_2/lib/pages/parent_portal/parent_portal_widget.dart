// Imports all the required packages
import 'dart:math';

import 'package:sticky_headers/sticky_headers.dart';
import '/assets/animation/animation_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'parent_portal_model.dart';
export 'parent_portal_model.dart';
import 'package:url_launcher/url_launcher.dart';

// To send post request to the website
Future<http.Response> sendEmail(String email) {
  return http.post(
    Uri.parse('https://129.213.117.186/newsletter.php'),
    headers: <String, String>{'Access-Control-Allow-Origin': "*", 'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      'email': email,
    }),
  );
}

// Allows page to drag the Pageview
class YesScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class ParentPortalWidget extends StatefulWidget {
  const ParentPortalWidget({super.key});

  @override
  _ParentPortalWidgetState createState() => _ParentPortalWidgetState();
}

class _ParentPortalWidgetState extends State<ParentPortalWidget> {
  late ParentPortalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final scrollController = ScrollController();

  bool contentExpanded = false;
  bool isEmailSent = false;

  // To validate the email
  String? _validateEmail(String value) {
    if (value.isEmpty && !isEmailSent) {
      return 'Enter an email';
    } else if (!isEmailValid(value) && !isEmailSent) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  bool isEmailValid(String email) {
    return RegExp(r'.+@.+').hasMatch(email);
  }

  //
  Future<bool>? resetForm() {
    Future.delayed(const Duration(seconds: 2), () {
      _formKey.currentState?.reset();
      setState(() {
        isEmailSent = false;
      });
    });
    return null;
  }

  @override
  void initState() {
    super.initState();

    try {
      _model = createModel(context, () => ParentPortalModel());
      _model.expandableController1 = ExpandableController(initialExpanded: false);
      _model.expandableController2 = ExpandableController(initialExpanded: false);
      _model.expandableController3 = ExpandableController(initialExpanded: false);
      _model.expandableController4 = ExpandableController(initialExpanded: false);
      _model.textController1 ??= TextEditingController();
      _model.textFieldFocusNode1 ??= FocusNode();

      _model.textController2 ??= TextEditingController();
      _model.textFieldFocusNode2 ??= FocusNode();
    } catch (e) {}
  }

  @override
  void dispose() {
    try {
      _model.dispose();
    } catch (e) {}

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    try {
      if (isiOS) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarBrightness: Theme.of(context).brightness,
            systemStatusBarContrastEnforced: true,
          ),
        );
      }

      double screenWidth = MediaQuery.sizeOf(context).width;
      double screenHeight = max(MediaQuery.sizeOf(context).height, (screenWidth > 600) ? 750 : 550);

      return GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              controller: scrollController,
              child: StickyHeader(
                header: Stack(
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      SizedBox(
                        child: ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox.shrink(),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('businessPortal');
                                    },
                                    child: Text(
                                      'BUSINESS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                  child: VerticalDivider(
                                    width: 0.0,
                                    thickness: 1.0,
                                    indent: 4.0,
                                    endIndent: 4.0,
                                    color: Color(0xCC000000),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('pastProjects');
                                    },
                                    child: Text(
                                      'PAST PROJECTS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context).primaryText,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40.0,
                                  child: VerticalDivider(
                                    width: 0.0,
                                    thickness: 1.0,
                                    indent: 4.0,
                                    endIndent: 4.0,
                                    color: Color(0xCC000000),
                                  ),
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      context.pushNamed('careerPage');
                                    },
                                    child: Text(
                                      'CAREER',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                            fontFamily: 'Outfit',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ),
                                ),
                                SizedBox.shrink(),
                              ].divide(const Spacer()),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      SizedBox(
                        height: 50,
                        child: ColoredBox(
                          color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    context.pushNamed('businessPortal');
                                  },
                                  child: Text(
                                    'BUSINESS',
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    context.pushNamed('pastProjects');
                                  },
                                  child: Text(
                                    'PAST PROJECTS',
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  width: 0.0,
                                  thickness: 1.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () async {
                                    context.pushNamed('careerPage');
                                  },
                                  child: Text(
                                    'CAREER',
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                          fontFamily: 'Outfit',
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?auto=format&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxkYXJrfGVufDB8fHx8MTcwMDY4Mjk1Nnww&ixlib=rb-4.0.3&q=80',
                            width: screenWidth * 1.0,
                            height: MediaQuery.sizeOf(context).height - 40,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height - 40,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(flex: 3),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/Layer_2.png',
                                      width: screenWidth * 0.8,
                                      height: 150,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 2),
                                Text(
                                  'WHERE LEARNING MEETS',
                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                        color: Colors.white,
                                      fontSize: (min(-6 + screenWidth / 8.6, 45) + sqrt(max(-82 + screenHeight / 10, 0)))/2.6,
                                      ),
                                ),
                                Text(
                                  'OPPORTUNITY',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        color: const Color(0xFFEEB609),
                                        fontSize: min(-6 + screenWidth / 8.6, 45) + sqrt(max(-82 + screenHeight / 10, 0)) - 1,
                                        letterSpacing: 1.5,
                                        lineHeight: 1.05,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Spacer(flex: 2),
                                ConstrainedBox(
                                  constraints: BoxConstraints(maxWidth: 580),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: const [
                                          TextSpan(
                                            text: 'WE HELP STUDENTS DEFINE THEIR',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' CAREER',
                                            style: TextStyle(
                                              color: Color(0xFFEEB609),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                            ' PATHS THROUGH HANDS-ON EXPERIENCES AND PROJECT-BASED LEARNING, BUILDING PRACTICAL SKILLS AND IMPRESSIVE',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' PORTFOLIOS',
                                            style: TextStyle(
                                              color: Color(0xFFEEB609),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '.',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                          fontSize: (min(-6 + screenWidth / 8.6, 45) + sqrt(max(-42 + screenHeight / 20, 0))) / 2.2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(flex: 2),
                                FFButtonWidget(
                                  onPressed: () {
                                    setState(() {
                                      // expand rest of content
                                      contentExpanded = true;
                                    });
                                    scrollController.animateTo(
                                      screenHeight * 0.95 - 50,
                                      duration: const Duration(seconds: 1, milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  text: 'Read More',
                                  options: FFButtonOptions(
                                    width: max((min(-6 + screenWidth / 8.6, 45) + sqrt(max(-42 + screenHeight / 20, 0))) * 2.6, 120),
                                    height: max((min(-6 + screenWidth / 8.6, 45) + sqrt(max(-42 + screenHeight / 20, 0))) / 1.1, 35),
                                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          color: Colors.white,
                                          fontSize: max((min(-2 + screenWidth / 8.6, 45) + sqrt(max(-42 + screenHeight / 20, 0))) / 2, 1),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                ),
                                      Spacer(flex: 4),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?auto=format&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxkYXJrfGVufDB8fHx8MTcwMDY4Mjk1Nnww&ixlib=rb-4.0.3&q=80',
                                width: double.infinity,
                                height: screenHeight - 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: screenHeight * 0.4,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Transform.translate(
                                    offset: const Offset(0.0, -260.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/Layer_2.png',
                                        width: screenWidth * 0.41,
                                        height: 330,
                                        fit: BoxFit.contain,
                                        alignment: const Alignment(0.0, -1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Transform.scale(
                              scaleX: 0.9,
                              scaleY: 0.9,
                              child: Container(
                                height: screenHeight - 50,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Spacer(),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 1.0),
                                      child: SizedBox(
                                        width: min(max(screenWidth * 3 / 5, 700), 1350),
                                        child: FittedBox(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(75.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                                                  child: Text(
                                                    'WHERE LEARNING MEETS',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 40.0,
                                                          letterSpacing: 1.0,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  'OPPORTUNITY',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        
                                                        color: const Color(0xFFEEB609),
                                                        fontSize: 90.0,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'WE HELP STUDENTS DEFINE THEIR',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 20.0,
                                                              fontWeight: FontWeight.normal,
                                                            ),
                                                      ),
                                                      const TextSpan(
                                                        text: ' CAREER',
                                                        style: TextStyle(
                                                          color: Color(0xFFEEB609),
                                                        ),
                                                      ),
                                                      const TextSpan(
                                                        text:
                                                            ' PATHS\nTHROUGH HANDS-ON EXPERIENCES AND PROJECT-\nBASED LEARNING, BUILDING PRACTICAL SKILLS AND\nIMPRESSIVE',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      const TextSpan(
                                                        text: ' PORTFOLIOS',
                                                        style: TextStyle(
                                                          color: Color(0xFFEEB609),
                                                        ),
                                                      ),
                                                      const TextSpan(
                                                        text: '.',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          fontSize: 20.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                  child: SizedBox(
                                                    width: 155.0,
                                                    height: 40.0,
                                                    child: OutlinedButton(
                                                      style: OutlinedButton.styleFrom(
                                                        foregroundColor: Colors.white,
                                                        shape: const StadiumBorder(),
                                                        side: const BorderSide(width: 1.5, color: Colors.white),
                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 20.5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        setState(() {
                                                          // expand rest of content
                                                          contentExpanded = true;
                                                        });
                                                        int x = responsiveVisibility(context: context, desktop: false)
                                                            ? responsiveVisibility(context: context, tabletLandscape: false)
                                                                ? -25
                                                                : 0
                                                            : 40;
                                                        scrollController.animateTo(
                                                          (screenHeight +
                                                                      min(screenWidth * 3 / 4,
                                                                          screenHeight)) /
                                                                  2 +
                                                              x,
                                                          duration: const Duration(seconds: 2),
                                                          curve: Curves.easeInOut,
                                                        );
                                                      },
                                                      child: const Align(
                                                        alignment: AlignmentDirectional(0.0, -0.1),
                                                        child: Text(
                                                          'Read More',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].addToStart(const SizedBox(height: 15.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (contentExpanded) ...[
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        SizedBox(
                          height: max(min(screenWidth * 5 / 6, screenHeight) - 50, 700),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(80.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE3E3E3),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 364.0,
                                        height: 75.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00272727),
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: OverflowBox(
                                          minWidth: 0,
                                          minHeight: 0,
                                          maxWidth: double.infinity,
                                          maxHeight: double.infinity,
                                          child: SizedBox(
                                            height: 80.0,
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Text(
                                                'BENEFITS',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      
                                                      fontSize: 57.0,
                                                      letterSpacing: 5.0,
                                                      fontWeight: FontWeight.w900,
                                                      color: Colors.black,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Container(
                                  decoration: const BoxDecoration(),
                                ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 100.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE7DCC6),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'OUR BENEFITS',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/Trophie.jpg',
                                      width: double.infinity,
                                      height: 135.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      color: Colors.transparent,
                                      child: ExpandableNotifier(
                                        controller: _model.expandableController1,
                                        child: ExpandablePanel(
                                          header: Stack(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x80000000),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Container(
                                                  width: 200.0,
                                                  height: 52.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x00FFFFFF),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                    child: Text(
                                                      'Reward',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: 22.0,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          expanded: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/images/Trophie.jpg',
                                                width: double.infinity,
                                                height: 225.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 225.0,
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Color(0xA0000000), Color(0x80000000)],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(0.17, -1.0),
                                                    end: AlignmentDirectional(-0.17, 1.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 240.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Scholarship Credit',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 240.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Cash Award',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                                            hasIcon: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/2023NA_036.webp',
                                      width: double.infinity,
                                      height: 135.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      color: Colors.transparent,
                                      child: ExpandableNotifier(
                                        controller: _model.expandableController2,
                                        child: ExpandablePanel(
                                          header: Stack(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x80000000),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Container(
                                                  width: 230.0,
                                                  height: 52.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x00FFFFFF),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                    child: Text(
                                                      'Networking',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: 22.0,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          expanded: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/images/2023NA_036.webp',
                                                width: double.infinity,
                                                height: 330.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 330.0,
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Color(0xA0000000), Color(0x80000000)],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(0.17, -1.0),
                                                    end: AlignmentDirectional(-0.17, 1.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 260.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Investor Connections',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 260.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Career Connections',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 260.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Business Opportunity',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 260.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Career Opportunity',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                                            hasIcon: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'images/2023NA_040.webp',
                                      width: double.infinity,
                                      height: 135.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      color: Colors.transparent,
                                      child: ExpandableNotifier(
                                        controller: _model.expandableController3,
                                        child: ExpandablePanel(
                                          header: Stack(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x80000000),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Container(
                                                  width: 250.0,
                                                  height: 52.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x00FFFFFF),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                    child: Text(
                                                      'Build Portfolio',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: 22.0,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          expanded: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/images/2023NA_040.webp',
                                                width: double.infinity,
                                                height: 225.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 225.0,
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Color(0xA0000000), Color(0x80000000)],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(0.17, -1.0),
                                                    end: AlignmentDirectional(-0.17, 1.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 265.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Internship Cerificates',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 240.0,
                                                        height: 48.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Achievements',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                                            hasIcon: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/2023NA_034.webp',
                                      width: double.infinity,
                                      height: 135.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      color: Colors.transparent,
                                      child: ExpandableNotifier(
                                        controller: _model.expandableController4,
                                        child: ExpandablePanel(
                                          header: Stack(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0x60000000),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 135.0,
                                                decoration: const BoxDecoration(
                                                  color: Colors.transparent,
                                                  shape: BoxShape.rectangle,
                                                ),
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Container(
                                                  width: 270.0,
                                                  height: 52.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x00FFFFFF),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                    child: Text(
                                                      'Professional Skills',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: 22.0,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          expanded: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/images/2023NA_034.webp',
                                                width: double.infinity,
                                                height: 700.0,
                                                fit: BoxFit.fitHeight,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 700.0,
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [Color(0xA0000000), Color(0x80000000)],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(0.17, -1.0),
                                                    end: AlignmentDirectional(-0.17, 1.0),
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Computer Programming',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Researching',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Communication',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Strategic Planning',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Financial Management',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Leadership',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Creativity',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Problem Solving',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 290.0,
                                                        height: 60.0,
                                                        decoration: BoxDecoration(
                                                          color: Colors.transparent,
                                                          border: Border.all(
                                                            color: const Color(0xDDFFFFFF),
                                                          ),
                                                        ),
                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                        child: Text(
                                                          'Business Development',
                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                
                                                                color: const Color(0xDDFFFFFF),
                                                                fontSize: 19.0,
                                                                letterSpacing: 2.0,
                                                                fontWeight: FontWeight.w300,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          theme: const ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                                            hasIcon: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          SizedBox(
                            width: screenWidth * 1.0,
                            height: screenHeight * 1.08,
                            child: Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(130.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE3E3E3),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Transform.scale(
                                          scale: (1/450)/(2/screenWidth + 1/screenHeight),
                                          child: Container(
                                            width: 374.0,
                                            height: 77.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0x00272727),
                                              border: Border.all(
                                                color: Colors.black,
                                              ),
                                            ),
                                            child: OverflowBox(
                                              minWidth: 0,
                                              minHeight: 0,
                                              maxWidth: double.infinity,
                                              maxHeight: double.infinity,
                                              child: SizedBox(
                                                height: 90.0,
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    'BENEFITS',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                          fontSize: 60.0,
                                                          letterSpacing: 5.0,
                                                          fontWeight: FontWeight.w900,
                                                          color: Colors.black,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 1.0,
                                  height: screenHeight * 1.08,
                                  decoration: const BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.animationModel,
                                    updateCallback: () => setState(() {}),
                                    child: const AnimationWidget(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 120.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE7DCC6),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: SelectionArea(
                                child: Text(
                              'HOW TO ACHIEVE OUR GOALS?',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    
                                    fontSize: min(-1 + screenWidth/13, 30),
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            )),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE7DCC6),
                          ),
                          child: Center(
                            child: Text(
                                                              'HOW TO ACHIEVE OUR GOALS?',
                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                
                                fontSize: 25.0,
                                color: Colors.black,
                              ),
                                                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 105.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE7DCC6),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: RichText(
                                  text: TextSpan(
                                    text: (screenWidth > 950) ? '⸻ ' : '',
                                    children: const <TextSpan>[
                                      TextSpan(text: 'HOW TO ACHIEVE OUR GOALS?', style: TextStyle(color: Colors.black))
                                    ],
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          fontSize: 45.0,
                                          color: Colors.red[700],
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/DSC_1630.webp',
                                      width: double.infinity,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    desktop: false,
                                  ))
                                    Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: GestureDetector(
                                          onTap: () async {
                                            context.pushNamed('projectBasedLearning');
                                          },
                                          child: Container(
                                            width: 389.0,
                                            height: 77.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Text(
                                                'Project - Based Learning',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        )),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/2023NA_039.webp',
                                      width: double.infinity,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    desktop: false,
                                  ))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          context.pushNamed('careerOrientedSkills');
                                        },
                                        child: Container(
                                          width: 389.0,
                                          height: 77.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x00FFFFFF),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Career - Oriented Skills',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 180.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/DSC_1614.webp',
                                      width: double.infinity,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0x80000000),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    desktop: false,
                                  ))
                                    Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: GestureDetector(
                                          onTap: () async {
                                            context.pushNamed('partnershipWithCompanies');
                                          },
                                          child: Container(
                                            width: 389.0,
                                            height: 77.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Text(
                                                'Partnerships with Companies',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      
                                                      color: Colors.white,
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        desktop: false,
                      ))
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  context.pushNamed('projectBasedLearning');
                                },
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(-1.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/DSC_1630.webp',
                                        width: screenWidth * 1 / 3,
                                        height: screenHeight * 1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: screenWidth * 0.28,
                                          height: screenHeight * 0.18,
                                          decoration: BoxDecoration(
                                            color: const Color(0x00FFFFFF),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                            child: FittedBox(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Project - Based\nLearning',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        
                                                        color: Colors.white,
                                                        fontSize: 33.0,
                                                        fontWeight: FontWeight.bold,
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
                              GestureDetector(
                                onTap: () async {
                                  context.pushNamed('careerOrientedSkills');
                                },
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/2023NA_039.webp',
                                        width: screenWidth * 1 / 3,
                                        height: MediaQuery.of(context).size.height * 1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width * 0.28,
                                          height: MediaQuery.of(context).size.height * 0.18,
                                          decoration: BoxDecoration(
                                            color: const Color(0x00FFFFFF),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                            child: FittedBox(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Career - Oriented\nSkills',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        
                                                        color: Colors.white,
                                                        fontSize: 33.0,
                                                        fontWeight: FontWeight.bold,
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
                              GestureDetector(
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/DSC_1614.webp',
                                        width: screenWidth * 1 / 3,
                                        height: MediaQuery.of(context).size.height * 1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                    ))
                                      GestureDetector(
                                        onTap: () async {
                                          context.pushNamed('partnershipWithCompanies');
                                        },
                                        child: Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: screenWidth * 0.28,
                                            height: screenHeight * 0.18,
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: FittedBox(
                                                  child: Text(
                                                    'Partnerships with\nCompanies',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 33.0,
                                                          fontWeight: FontWeight.bold,
                                                        ),
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
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                context.pushNamed('projectBasedLearning');
                              },
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/DSC_1630.webp',
                                      width: screenWidth * 1 / 3,
                                      height: screenHeight * 1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: screenWidth * 0.28,
                                        height: screenHeight * 0.18,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Project - Based\nLearning',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 39.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ], //sd
                              ), //s
                            ),
                            GestureDetector(
                              onTap: () async {
                                context.pushNamed('careerOrientedSkills');
                              },
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/2023NA_039.webp',
                                      width: screenWidth * 1 / 3,
                                      height: screenHeight * 1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: screenWidth * 0.28,
                                        height: screenHeight * 0.18,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Career - Oriented\nSkills',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 39.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                context.pushNamed('partnershipWithCompanies');
                                print("Ore");
                              },
                              child: Stack(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Image.asset(
                                      'assets/images/DSC_1614.webp',
                                      width: screenWidth * 1 / 3,
                                      height: screenHeight * 1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: screenWidth * 0.28,
                                        height: screenHeight * 0.18,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Partnerships with\nCompanies',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 39.0,
                                                  fontWeight: FontWeight.bold,
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
                      if (responsiveVisibility(
                        context: context,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 11.0),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(minHeight: 315),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 29.0, 0.0),
                                      child: Text(
                                        'How to get started?',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              
                                              fontSize: 45.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 300.0,
                                      child: Divider(
                                        thickness: 1.0,
                                        color: Color(0xCC000000),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 7.0),
                                        child: Text(
                                        'Embark on a transformative NH journey by exploring our website and connecting with representatives for key insights. Delve into our documentation to grasp the essence of our project-based learning program. Express your interest as a student, mentor, or supporter and discover unique collaboration opportunities. Your NH experience begins here, where curiosity meets boundless possibilities.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.w300,
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
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(25.0, 25.0, 25.0, 26.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                child: Text(
                                  'How to get started?',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        
                                        fontSize: 45.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                width: 300.0,
                                child: Divider(
                                  thickness: 1.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 0.0),
                                  child: Text(
                                    'Embark on a transformative NH journey by exploring our website and connecting with representatives for key insights. Delve into our documentation to grasp the essence of our project-based learning program. Express your interest as a student, mentor, or supporter and discover unique collaboration opportunities. Your NH experience begins here, where curiosity meets boundless possibilities.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'How to get\nstarted ?',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        
                                        fontSize: 60.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                const SizedBox(
                                  height: 180.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: Color(0xCC000000),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 35.0, 0.0),
                                      child: Text(
                                        'Embark on a transformative NH journey by exploring our website and connecting with representatives for key insights. Delve into our documentation to grasp the essence of our project-based learning program. Express your interest as a student, mentor, or supporter and discover unique collaboration opportunities. Your NH experience begins here, where curiosity meets boundless possibilities.',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: (screenWidth > 925) ? 17.0 : 15.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 30.0)).addToStart(const SizedBox(width: 40.0)),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: 280.0,
                          color: Colors.white,
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'How to get\nstarted ?',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          fontSize: 90.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          lineHeight: 1.12,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 180.0,
                                    child: VerticalDivider(
                                      thickness: 1.0,
                                      width: 0.0,
                                      color: Color(0xCC000000),
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      'Embark on a transformative NH journey by exploring our website and connecting with representatives for key insights. Delve into our documentation to grasp the essence of our project-based learning program. Express your interest as a student, mentor, or supporter and discover unique collaboration opportunities. Your NH experience begins here, where curiosity meets boundless possibilities.',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 40.0)),
                              ),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        SizedBox(
                          width: screenWidth * 1.0,
                          height: 500,
                          child: Stack(
                            children: [
                              PageView(
                                controller: _model.pageViewController1 ??= PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                children: [
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?auto=format&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Container(
                                              width: min(35 + screenWidth / 10, 200),
                                              height: min(35 + screenWidth / 10, 200),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/Anson.webp',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 9,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'ANSON ZHAO',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min(-10.0 + screenWidth / 24, 60),
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      ConstrainedBox(
                                                          constraints: const BoxConstraints(maxWidth: 35, minWidth: 8),
                                                          child: SizedBox(width: max(screenWidth / 2 - 690, 0))),
                                                      Text(
                                                        'Director of Northern Horizon',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 20.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 1000,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                                      child: Text(
                                                        '“Opting for Northern Horizon is the ideal decision for your children if you seek a direct and shortest path to their successful careers.”',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min((-10.0 + screenWidth / 24) * 0.6, 30),
                                                              fontWeight: FontWeight.w200,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 20.0)),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1554050857-c84a8abdb5e2?q=80&w=3376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Container(
                                              width: min(35 + screenWidth / 10, 200),
                                              height: min(35 + screenWidth / 10, 200),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/richard-image.jpeg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 14,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'RICHARD CUI',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min(-10.0 + screenWidth / 24, 60),
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      ConstrainedBox(
                                                          constraints: const BoxConstraints(maxWidth: 35, minWidth: 8),
                                                          child: SizedBox(width: max(screenWidth / 2 - 690, 0))),
                                                      Text(
                                                        'Undergraduate, Computer Science',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 20.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 1100,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                                      child: Text(
                                                        '“Northern Horizon gave me a valuable opportunity to explore different facets of web development and helped develop my problem solving and presentation skills. I think it’d be nice to have more involvement from the mentors but I know they’re busy. Honestly, I think it’s the only reason I have a software engineering internship this summer.”',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min((-10.0 + screenWidth / 24) * 0.6, 27),
                                                              fontWeight: FontWeight.w200,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 20.0)),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1502239608882-93b729c6af43?q=80&w=5340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Container(
                                              width: min(35 + screenWidth / 10, 200),
                                              height: min(35 + screenWidth / 10, 200),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/giang-picture.jpeg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 15,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'GIANG NGUYEN',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min(-10.0 + screenWidth / 24, 60),
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      ConstrainedBox(
                                                          constraints: const BoxConstraints(maxWidth: 35, minWidth: 8),
                                                          child: SizedBox(width: max(screenWidth / 2 - 690, 0))),
                                                      Text(
                                                        'Undergraduate, Biomedical Sciences',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 20.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 950,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                                      child: Text(
                                                        '“I have learned to solve problem more efficiently on my own. With an experienced teacher and other friends, I have enjoyed working on Northern Horizon’s projects with my peers!”',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min((-10.0 + screenWidth / 24) * 0.6, 30),
                                                              fontWeight: FontWeight.w200,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 20.0)),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1581362716668-90cdec6b4882?q=80&w=3456&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Container(
                                              width: min(35 + screenWidth / 10, 200),
                                              height: min(35 + screenWidth / 10, 200),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/minh-picture.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 13,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'MINH PHAM',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min(-10.0 + screenWidth / 24, 60),
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      ConstrainedBox(
                                                          constraints: const BoxConstraints(maxWidth: 35, minWidth: 14),
                                                          child: SizedBox(width: max(screenWidth / 2 - 690, 0))),
                                                      Text(
                                                        'Undergraduate, Data Science',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 20.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 1200,
                                                    child: Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                                      child: Text(
                                                        '“My time at Northern Horizon has been awesome. Northern Horizon has provided me with great opportunities to work on my passion which is programming that I otherwise would not have had the discipline to do. Ultimately, the program has helped me polish my resume with experiences and projects, as well as deciding my major and future career in the foreseeable future.”',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: min((-10.0 + screenWidth / 24) * 0.6, 25),
                                                              fontWeight: FontWeight.w200,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 20.0)),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                                  Stack(children: [
                                    Image.network(
                                      'https://images.unsplash.com/photo-1585241645927-c7a8e5840c42?q=80&w=5184&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(child: SizedBox()),
                                          Container(
                                            width: min(35 + screenWidth / 10, 200),
                                            height: min(35 + screenWidth / 10, 200),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/james-picture.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 9,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'JAMES ZHANG',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: min(-10.0 + screenWidth / 24, 60),
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                    ),
                                                    ConstrainedBox(
                                                        constraints: const BoxConstraints(maxWidth: 35, minWidth: 14),
                                                        child: SizedBox(width: max(screenWidth / 2 - 690, 0))),
                                                    Text(
                                                      'Senior Programmer at NH',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: const Color(0xaaffffff),
                                                            fontSize: 20.0,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 1200,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                                    child: Text(
                                                      '“Thank you, Northern Horizon,for providing me with an intuitive course introducing popular programming languages and giving me the opportunities to be involved in real-time projects which has prepared me for college and my future careers. Here is a big Thank-You!”\n',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            
                                                            color: Colors.white,
                                                            fontSize: min((-10.0 + screenWidth / 24) * 0.6, 30),
                                                            fontWeight: FontWeight.w200,
                                                          ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ),
                                        ]),
                                  ]),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                  child: smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController1 ??= PageController(initialPage: 0),
                                    count: 5,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController1!.animateToPage(
                                        i,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: const smooth_page_indicator.SlideEffect(
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 8.0,
                                      dotHeight: 8.0,
                                      dotColor: Colors.white,
                                      activeDotColor: Colors.white,
                                      paintStyle: PaintingStyle.stroke,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        SizedBox(
                          width: screenWidth * 1.0,
                          height: 420.0,
                          child: Stack(
                            children: [
                              PageView(
                                controller: _model.pageViewController2 ??= PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?auto=format&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/Anson.webp',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'ANSON ZHAO',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Director of Northern Horizon',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: screenWidth * 0.9,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    '“Opting for Northern Horizon is the ideal decision for your children if you seek a direct and shortest path to their successful careers.”',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 17.0,
                                                          fontWeight: FontWeight.w200,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1554050857-c84a8abdb5e2?q=80&w=3376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/richard-image.jpeg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'RICHARD CUI',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Undergraduate, Computer Science',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: screenWidth * 0.9,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    '“Northern Horizon gave me a valuable opportunity to explore different facets of web development and helped develop my problem solving and presentation skills. I think it’d be nice to have more involvement from the mentors but I know they’re busy. Honestly, I think it’s the only reason I have a software engineering internship this summer.”',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w200,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1502239608882-93b729c6af43?q=80&w=5340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/giang-picture.jpeg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'GIANG NGUYEN',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Undergraduate, Biomedical Sciences',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: screenWidth * 0.9,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    '“I have learned to solve problem more efficiently on my own. With an experienced teacher and other friends, I have enjoyed working on Northern Horizon’s projects with my peers!”',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 17.0,
                                                          fontWeight: FontWeight.w200,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1581362716668-90cdec6b4882?q=80&w=3456&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/minh-picture.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'MINH PHAM',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Undergraduate, Data Science',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: screenWidth * 0.9,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    '“My time at Northern Horizon has been awesome. Northern Horizon has provided me with great opportunities to work on my passion which is programming that I otherwise would not have had the discipline to do. Ultimately, the program has helped me polish my resume with experiences and projects, as well as deciding my major and future career in the foreseeable future.”',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w200,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://images.unsplash.com/photo-1581362716668-90cdec6b4882?q=80&w=3456&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/james-picture.jpg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'JAMES ZHANG',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Senior Programmer at NH',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              color: const Color(0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: screenWidth * 0.9,
                                                  decoration: const BoxDecoration(),
                                                  child: Text(
                                                    '“Thank you, Northern Horizon,for providing me with an intuitive course introducing popular programming languages and giving me the opportunities to be involved in real-time projects which has prepared me for college and my future careers. Here is a big Thank-You!”\n',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w200,
                                                        ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                  child: smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController2 ??= PageController(initialPage: 0),
                                    count: 5,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController2!.animateToPage(
                                        i,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: const smooth_page_indicator.SlideEffect(
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 8.0,
                                      dotHeight: 8.0,
                                      dotColor: Colors.white,
                                      activeDotColor: Colors.white,
                                      paintStyle: PaintingStyle.stroke,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  width: screenWidth * 0.9,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD0CECE),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 40.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            child: Image.asset(
                                              'images/2023NA_301.jpg',
                                              width: screenWidth * 0.8,
                                              height: screenHeight * 0.3,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                          ))
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: screenHeight * 0.37,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  FittedBox(
                                                    child: Text(
                                                      'SUBSCRIBE TO OUR NEWSLETTER',
                                                      textAlign: TextAlign.center,
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        
                                                        fontSize: 60.0,
                                                        letterSpacing: 8.0,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w900,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                                                    child: Text(
                                                      'Subscribe to our newsletter through the website and unlock a world of exclusive insights. Stay in the loop with program updates, receive invitations to events, and enjoy inspiring success stories. Get early access to collaboration opportunities, industry trends, and special offers. Join our community, where staying informed means staying ahead.',
                                                      textAlign: TextAlign.center,
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        
                                                        fontSize: 21.0,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                                                      child: SizedBox(
                                                        width: screenWidth * 0.5,
                                                        child: Form(
                                                          key: _formKey,
                                                          child: TextFormField(
                                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                                            onFieldSubmitted: (value) async {
                                                              if (_formKey.currentState!.validate()) {
                                                                setState(() {
                                                                  sendEmail(value);
                                                                  isEmailSent = true;
                                                                });
                                                                _model.textController1?.clear();
                                                                await resetForm();
                                                              }
                                                            },
                                                            controller: _model.textController1,
                                                            focusNode: _model.textFieldFocusNode1,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration: InputDecoration(
                                                              labelText: isEmailSent ? 'Sent' : 'Enter your email',
                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                              enabledBorder: OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                  color: Colors.black,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              errorBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              focusedErrorBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: Colors.white,
                                                              suffixIcon: const Icon(
                                                                Icons.arrow_forward,
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              letterSpacing: 1.0,
                                                              lineHeight: 1.0,
                                                              color: Colors.black,
                                                            ),
                                                            textAlign: TextAlign.start,
                                                            validator: (value) {
                                                              return _validateEmail(value!);
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 22.0)).addToStart(const SizedBox(height: 25.0)),
                                              ),
                                            ),
                                          if (responsiveVisibility(
                                            context: context,
                                            desktop: false,
                                          ))
                                            Container(
                                              width: screenWidth * 0.8,
                                              decoration: const BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'SUBSCRIBE TO OUR NEWSLETTER',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      
                                                      fontSize: 18.0 + max(screenWidth * 0.02, 0),
                                                      letterSpacing: (18.0 + max(screenWidth * 0.02, 0))/5,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                    child: Text(
                                                      'Subscribe to our newsletter through the website and unlock a world of exclusive insights. Stay in the loop with program updates, receive invitations to events, and enjoy inspiring success stories. Get early access to collaboration opportunities, industry trends, and special offers. Join our community, where staying informed means staying ahead.',
                                                      textAlign: TextAlign.center,
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: (responsiveVisibility(context: context, phone: false,)) ? 18.0 : 16.0,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                                                      child: SizedBox(
                                                        width: screenWidth * 0.55,
                                                        child: Form(
                                                          key: _formKey,
                                                          child: TextFormField(
                                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                                            onFieldSubmitted: (value) async {
                                                              if (_formKey.currentState!.validate()) {
                                                                setState(() {
                                                                  sendEmail(value);
                                                                  isEmailSent = true;
                                                                });
                                                                _model.textController2?.clear();
                                                                await resetForm();
                                                              }
                                                            },
                                                            controller: _model.textController2,
                                                            focusNode: _model.textFieldFocusNode2,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration: InputDecoration(
                                                              labelText: isEmailSent ? 'Sent' : 'Enter your email',
                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                
                                                                fontSize: 14.0,
                                                              ),
                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                              enabledBorder: OutlineInputBorder(
                                                                borderSide: const BorderSide(
                                                                  color: Colors.black,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              errorBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              focusedErrorBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                  color: FlutterFlowTheme.of(context).error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius: BorderRadius.circular(0.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: Colors.white,
                                                              suffixIcon: const Icon(
                                                                Icons.arrow_forward,
                                                                //   onPressed(){
                                                                //
                                                                // }f
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              
                                                              letterSpacing: 1.0,
                                                              lineHeight: 1.0,
                                                              color: Colors.black,
                                                            ),
                                                            textAlign: TextAlign.start,
                                                            validator: (value) {
                                                              return _validateEmail(value!);
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 15.0)).addToStart(const SizedBox(height: 25.0)),
                                              ),
                                            ),
                                        ].divide(const SizedBox(height: 20.0)),
                                      ),
                                    ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                          ),
                          child: ColoredBox(
                            color: const Color(0xFF4C6A7D),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          'LEARN MORE',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed('parentPortal');
                                          },
                                          child: Text(
                                            'Home',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Career',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                      Text(
                                        'Our Projects',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'WHAT WE DO',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Marketing Solutions',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Website Building',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                      Text(
                                        'Tailored Solutions',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'LEGAL',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Terms of Service',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => launchUrl(Uri.parse('https://129.213.117.186/pp.html')),
                                        child: Text(
                                          'Privacy Policy',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(

                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Contact Us',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          '+1 (845)-281-9257',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'azhao@northernacademy.org',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                      Text(
                                        '1 Ashley Ave Middletown, NY',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 5.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                          child: Image.asset(
                                            'assets/images/linkedin.png',
                                            height: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                          child: Image.asset(
                                            'assets/images/facebook.png',
                                            height: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                          child: Image.asset(
                                            'assets/images/twitter.png',
                                            height: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 20.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 155),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFF4C6A7D),
                            ),
                            child: Stack(
                              children: [
                                if (screenWidth > 430)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'LEARN MORE',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed('parentPortal');
                                                },
                                                child: Text(
                                                  'Home',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Career',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              'Our Projects',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'WHAT WE DO',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                'Marketing Solutions',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Website Building',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              'Tailored Solutions',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'LEGAL',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                'Terms of Service',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () => launchUrl(Uri.parse('https://129.213.117.186/pp.html')),
                                              child: Text(
                                                'Privacy Policy',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'CONTACT US',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                '+1 (845)-281-9257',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'azhao@northernacademy.org',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              '1 Ashley Ave Middletown, NY',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (screenWidth <= 430)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                                    child: SizedBox(
                                      width: screenWidth,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'LEARN MORE',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    context.pushNamed('parentPortal');
                                                  },
                                                  child: Text(
                                                    'Home',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      
                                                      color: Colors.white,
                                                      fontSize: 8.0,
                                                      fontWeight: FontWeight.w200,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Career',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              Text(
                                                'Our Projects',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              SizedBox(height: 12),
                                            ].divide(const SizedBox(height: 2.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'WHAT WE DO',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                                child: Text(
                                                  'Marketing Solutions',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Website Building',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              Text(
                                                'Tailored Solutions',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              SizedBox(height: 12),
                                            ].divide(const SizedBox(height: 2.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'LEGAL',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                                child: Text(
                                                  'Terms of Service',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () => launchUrl(Uri.parse('https://129.213.117.186/pp.html')),
                                                child: Text(
                                                  'Privacy Policy',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 12),
                                            ].divide(const SizedBox(height: 2.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'CONTACT US',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                                child: Text(
                                                  '+1 (845)-281-9257',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'azhao@northernacademy.org',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              Text(
                                                '1 Ashley Ave Middletown, NY',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              SizedBox(height: 12),
                                            ].divide(const SizedBox(height: 2.0)),
                                          ),
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Image.asset(
                                                  'assets/images/linkedin.png',
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                                Image.asset(
                                                  'assets/images/facebook.png',
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                                Image.asset(
                                                  'assets/images/twitter.png',
                                                  height: 30,
                                                  color: Colors.white,
                                                ),
                                              ]
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                if (screenWidth > 430) ...[
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 20.0),
                                      child: Image.asset(
                                        'assets/images/linkedin.png',
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    width: screenWidth,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 20.0),
                                      child: Image.asset(
                                        'assets/images/twitter.png',
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                ],
                              ],
                            ),
                          ),
                        ),
                    ]
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } catch (e) {
      return Container(); // Return an empty container in case of error
    }
  }
}
