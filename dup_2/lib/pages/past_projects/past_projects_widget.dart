import 'package:sticky_headers/sticky_headers/widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'past_projects_model.dart';
export 'past_projects_model.dart';

class PastProjectsWidget extends StatefulWidget {
  const PastProjectsWidget({super.key});

  @override
  State<PastProjectsWidget> createState() => _PastProjectsWidgetState();
}

class _PastProjectsWidgetState extends State<PastProjectsWidget> {
  late PastProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PastProjectsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 122,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
                                  child: MouseRegion(
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
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  width: 10.0,
                                  thickness: 1.0,
                                  indent: 4.0,
                                  endIndent: 4.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                              Expanded(
                                flex: 192,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 22.0, 0.0),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () async {
                                        context.pushNamed('parentPortal');
                                      },
                                      child: Text(
                                        'PARENT',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context).headlineMedium.override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context).primaryText,
                                          fontSize: 16.0,
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
                                    'BUISNESS',
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context).primaryText,
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
                                    context.pushNamed('parentPortal');
                                  },
                                  child: Text(
                                    'PARENT',
                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context).primaryText,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.65,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.6,
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: MediaQuery.sizeOf(context).height * 0.5,
                                  child: Stack(
                                    children: [
                                      PageView(
                                        controller: _model.pageViewController1 ??= PageController(initialPage: 1),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/ESP web.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  width: MediaQuery.sizeOf(context).width * 0.83,
                                                  height: MediaQuery.sizeOf(context).height * 0.21,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Hello World',
                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                                  height: MediaQuery.sizeOf(context).height * 0.3,
                                                  child: Image.asset(
                                                    'assets/images/Friendly bear@4x 2.png',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.sizeOf(context).width * 0.70,
                                                  height: MediaQuery.sizeOf(context).height * 0.22,
                                                  child: Image.asset(
                                                    'assets/images/CitySmart.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.sizeOf(context).width * 0.85,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/Covid TK.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.sizeOf(context).width * 0.85,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/ISH 2.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: MediaQuery.sizeOf(context).width * 0.85,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/Worldheritage.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator.SmoothPageIndicator(
                                            controller: _model.pageViewController1 ??= PageController(initialPage: 1),
                                            count: 6,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController1!.animateToPage(
                                                i,
                                                duration: Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: smooth_page_indicator.SlideEffect(
                                              spacing: 8.0,
                                              radius: 16.0,
                                              dotWidth: 8.0,
                                              dotHeight: 8.0,
                                              dotColor: FlutterFlowTheme.of(context).secondaryText,
                                              activeDotColor: FlutterFlowTheme.of(context).primaryText,
                                              paintStyle: PaintingStyle.stroke,
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
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      desktop: false,
                    ))
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: MediaQuery.sizeOf(context).height * 0.65,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 0.6,
                                decoration: BoxDecoration(),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: MediaQuery.sizeOf(context).height * 0.5,
                                  child: Stack(
                                    children: [
                                      PageView(
                                        controller: _model.pageViewController2 ??= PageController(initialPage: 1),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                  'assets/images/ESP web.gif',
                                                  fit: BoxFit.fill,
                                                ),
                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                height: MediaQuery.sizeOf(context).height * 0.4,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Text(
                                                'Hello World',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  'assets/images/Friendly bear@4x 2.png',
                                                  fit: BoxFit.fill,
                                                ),
                                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                  'assets/images/CitySmart.gif',
                                                  fit: BoxFit.fill,
                                                ),
                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                height: MediaQuery.sizeOf(context).height * 0.4,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Text(
                                                'Hello World',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  'assets/images/Covid TK.gif',
                                                  fit: BoxFit.fill,
                                                ),
                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                height: MediaQuery.sizeOf(context).height * 0.4,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Text(
                                                'Hello World',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  'assets/images/ISH 2.gif',
                                                  fit: BoxFit.fill,
                                                ),
                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                height: MediaQuery.sizeOf(context).height * 0.4,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Text(
                                                'Hello World',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  'assets/images/Worldheritage.gif',
                                                  fit: BoxFit.fill,
                                                ),
                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                height: MediaQuery.sizeOf(context).height * 0.4,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator.SmoothPageIndicator(
                                          controller: _model.pageViewController2 ??= PageController(initialPage: 1),
                                          count: 6,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController2!.animateToPage(
                                              i,
                                              duration: Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                          },
                                          effect: smooth_page_indicator.SlideEffect(
                                            spacing: 8.0,
                                            radius: 16.0,
                                            dotWidth: 8.0,
                                            dotHeight: 8.0,
                                            dotColor: FlutterFlowTheme.of(context).secondaryText,
                                            activeDotColor: FlutterFlowTheme.of(context).primaryText,
                                            paintStyle: PaintingStyle.stroke,
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
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.45,
                      height: MediaQuery.sizeOf(context).height * 0.65,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                              child: Text(
                                'Hello World',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              height: MediaQuery.sizeOf(context).height * 0.6,
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible: responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: MediaQuery.sizeOf(context).height * 0.5,
                                  child: Stack(
                                    children: [
                                      PageView(
                                        controller: _model.pageViewController3 ??= PageController(initialPage: 1),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/ESP web.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                    width: MediaQuery.sizeOf(context).width * 0.4,
                                                    height: MediaQuery.sizeOf(context).height * 0.4,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Hello World',
                                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    child: Image.asset(
                                                    'assets/images/Friendly bear@4x 2.png',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/CitySmart.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/Covid TK.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/ISH 2.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                                  height: MediaQuery.sizeOf(context).height * 0.4,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  'Hello World',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                    'assets/images/Worldheritage.gif',
                                                    fit: BoxFit.fill,
                                                  ),
                                                    width: MediaQuery.sizeOf(context).width * 0.4,
                                                    height: MediaQuery.sizeOf(context).height * 0.4,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                    child: Text(
                                                      'Hello World',
                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator.SmoothPageIndicator(
                                              controller: _model.pageViewController3 ??= PageController(initialPage: 1),
                                              count: 6,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model.pageViewController3!.animateToPage(
                                                  i,
                                                  duration: Duration(milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator.SlideEffect(
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 8.0,
                                                dotHeight: 8.0,
                                                dotColor: FlutterFlowTheme.of(context).secondaryText,
                                                activeDotColor: FlutterFlowTheme.of(context).primaryText,
                                                paintStyle: PaintingStyle.stroke,
                                              ),
                                            ),
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
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Hello World',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                'Hello World',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Button',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xFF4C6A7D),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'LEARN MORE',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Home',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'About Us',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                      Text(
                                        'Our Projects',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
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
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Website Building',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                      Text(
                                        'Tailored Solutions',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
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
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Privacy Policy',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                      Text(
                                        '',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
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
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'bossemail@gmail.com',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                      Text(
                                        '1 Ashley Ave Middletown, NY',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                        alignment: AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                          child: Image.asset(
                                              'images/linkedin.png',
                                            height: 50,
                                            color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                            child: Image.asset(
                                              'images/facebook.png',
                                            height: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                          child: Image.asset(
                                              'images/twitter.png',
                                            height: 50,
                                            color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 20.0)),
                                    ),
                                  ].divide(SizedBox(width: 80.0)),
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
                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xFF4C6A7D),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 2.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 2.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 2.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 2.0)),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 25.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 25.0),
                                child: Icon(
                                  Icons.settings_outlined,
                                  color: Colors.white,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ].divide(SizedBox(height: 30.0)).addToStart(SizedBox(height: 100.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
