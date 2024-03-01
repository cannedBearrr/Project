import 'dart:ui';

import 'package:sticky_headers/sticky_headers/widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/assets/donate_popup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'past_projects_model.dart';
export 'past_projects_model.dart';

// make the pageview able to be dragged
class YesScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

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

    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
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
                                      context.pushNamed('parentPortal');
                                    },
                                    child: Text(
                                      'PARENTS',
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
                                    'FOR BUSINESS',
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
                                    'FOR PARENTS',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Student Projects',
                        style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                          fontSize: 40.0,
                          color: Color(0xFF008dff),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',// Set the font size to 40
                        ),
                      ),
                    ),

                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.65,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  '2',
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.6,
                                decoration: const BoxDecoration(),
                                child: Container(
                                  width: screenWidth * 1.0,
                                  height: screenHeight * 0.5,
                                  child: Stack(
                                    children: [
                                      PageView(
                                        controller: _model.pageViewController1 ??= PageController(initialPage: 1),
                                        scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: screenWidth * 0.83,
                                                  height: screenHeight * 0.21,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ), //Add documentation Reward: Various rewards
                                                  child: Image.asset(
                                                    'assets/images/ESP web.gif',
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    '3',
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
                                                  width: screenWidth * 0.5,
                                                  height: screenHeight * 0.3,
                                                  child: Image.asset(
                                                    'assets/images/Friendly bear@4x 2.png',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  '4',
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
                                                  width: screenWidth * 0.70,
                                                  height: screenHeight * 0.22,
                                                  child: Image.asset(
                                                    'assets/images/CitySmart.gif',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  '5',
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
                                                  width: screenWidth * 0.85,
                                                  height: screenHeight * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/Covid TK.gif',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  '6',
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
                                                  width: screenWidth * 0.85,
                                                  height: screenHeight * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/ISH 2.gif',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  '7',
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
                                                  width: screenWidth * 0.85,
                                                  height: screenHeight * 0.4,
                                                  child: Image.asset(
                                                    'assets/images/Worldheritage.gif',
                                                    fit: BoxFit.contain,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                  ),
                                                ),
                                                Text(
                                                  '8',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator.SmoothPageIndicator(
                                            controller: _model.pageViewController1 ??= PageController(initialPage: 1),
                                            count: 6,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController1!.animateToPage(
                                                i,
                                                duration: const Duration(milliseconds: 500),
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
                        width: screenWidth * 0.9,
                        height: max(screenHeight * 0.7, 630),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: screenWidth * 1.0,
                              height: max(screenHeight * 0.7 - 10, 620),
                              decoration: const BoxDecoration(),
                              child: Stack(
                                children: [
                                  PageView(
                                    controller: _model.pageViewController2 ??= PageController(initialPage: 1),
                                    scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                            child: Text(
                                              'Earthquake Signal Precursor',
                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Image.asset(
                                            'assets/images/ESP web.gif',
                                            fit: BoxFit.contain,
                                          ),
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: (responsiveVisibility(context: context, tablet: false)) ? 16 : 14
                                            ),
                                          ),
                                        ),
                                          SizedBox(height:30),
                                      ],
                                                                              ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                          child: Text(
                                            'Northern Health App',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'assets/images/Friendly bear@4x 2.png',
                                            fit: BoxFit.contain,
                                          ),
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                            child: Text(
                                              'Northern Health App is a user-friendly mobile application powered by AI that allows individuals to ask health-related questions and receive accurate and personalized responses, providing convenient access to reliable healthcare information.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: (responsiveVisibility(context: context, tablet: false)) ? 16 : 14
                                              ),
                                            ),
                                          ),
                                        SizedBox(height:30),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                            child: Text(
                                              'Covid Tool Kit',
                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Image.asset(
                                              'assets/images/Covid TK.gif',
                                              fit: BoxFit.contain,
                                            ),
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                            child: Text(
                                              'Covid Tool Kit is a web-based project that allows users to access real-time data on death, recovered, and confirmed cases of COVID-19 in countries around the world, providing accurate and up-to-date information for researchers, healthcare professionals, and individuals seeking to understand the global impact of the pandemic.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: (responsiveVisibility(context: context, tablet: false)) ? 16 : 14
                                              ),
                                            ),
                                          ),
                                          SizedBox(height:30),
                                        ],
                                      ),
                                    Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                            child: Text(
                                              'CitySmart',
                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Image.asset(
                                            'assets/images/CitySmart.gif',
                                            fit: BoxFit.contain,
                                          ),
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'CitySmart is an offline project that provides real-time information about available food and water sources in a city during emergencies, ensuring efficient resource utilization and enhancing public safety.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: (responsiveVisibility(context: context, tablet: false)) ? 16 : 14
                                            ),
                                          ),
                                        ),
                                          SizedBox(height:30),
                                      ],
                                                                              ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                          child: Text(
                                            'Invasive Species Heatmap',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'assets/images/ISH 2.gif',
                                            fit: BoxFit.contain,
                                          ),
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'Invasive Species Heatmap: Africa\'s data-driven pre-alert system for locust season. This innovative program equips farmers, communities, and authorities with timely information, empowering proactive measures to combat locust swarms. By harnessing data analysis and real-time monitoring, it safeguards agriculture and food security, revolutionizing locust control strategies in Africa.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: (responsiveVisibility(context: context, tablet: false)) ? 16 : 14
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:30),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                          child: Text(
                                            'World Heritage Site',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'assets/images/Worldheritage.gif',
                                            fit: BoxFit.contain,
                                          ),
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                          ),
                                        ),
                                        SizedBox(height:30),
                                      ],
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                    child: smooth_page_indicator.SmoothPageIndicator(
                                      controller: _model.pageViewController2 ??= PageController(initialPage: 1),
                                      count: 6,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController2!.animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
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
                        ],
                                                ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: screenWidth * 0.8 - 300,
                      height: max(screenHeight * 0.7, 630),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                            child: Text(
                              'H8',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Container(
                            width: screenWidth * 0.8 - 100,
                            height: max(screenHeight * 0.7 - 50, 580),
                            decoration: const BoxDecoration(),
                            child: Visibility(
                              visible: responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ),
                              child: Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.5,
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: _model.pageViewController3 ??= PageController(initialPage: 1),
                                      scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/ESP web.gif',
                                                fit: BoxFit.contain,
                                              ),
                                                width: screenWidth * 0.8,
                                                height: 350,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(20.0),
                                                child: Text(
                                                  'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                                ),
                                              ),
                                            SizedBox(height:30),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                'assets/images/Friendly bear@4x 2.png',
                                                fit: BoxFit.contain,
                                              ),
                                              width: screenWidth * 0.8,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                'Northern Health App is a user-friendly mobile application powered by AI that allows individuals to ask health-related questions and receive accurate and personalized responses, providing convenient access to reliable healthcare information.',
                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                              ),
                                            ),
                                              SizedBox(height:30),
                                          ],
                                                                                      ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/CitySmart.gif',
                                                fit: BoxFit.contain,
                                              ),
                                              width: screenWidth * 0.8,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                'CitySmart is an offline project that provides real-time information about available food and water sources in a city during emergencies, ensuring efficient resource utilization and enhancing public safety.',
                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                              ),
                                            ),
                                            SizedBox(height:30),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/Covid TK.gif',
                                                fit: BoxFit.contain,
                                              ),
                                              width: screenWidth * 0.8,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                'Covid Tool Kit is a web-based project that allows users to access real-time data on death, recovered, and confirmed cases of COVID-19 in countries around the world, providing accurate and up-to-date information for researchers, healthcare professionals, and individuals seeking to understand the global impact of the pandemic.',
                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                              ),
                                            ),
                                            SizedBox(height:30),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/ISH 2.gif',
                                                fit: BoxFit.contain,
                                              ),
                                              width: screenWidth * 0.8,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                'Invasive Species Heatmap: Africa\'s data-driven pre-alert system for locust season. This innovative program equips farmers, communities, and authorities with timely information, empowering proactive measures to combat locust swarms. By harnessing data analysis and real-time monitoring, it safeguards agriculture and food security, revolutionizing locust control strategies in Africa.',
                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                              ),
                                            ),
                                            SizedBox(height:30),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/Worldheritage.gif',
                                                fit: BoxFit.contain,
                                              ),
                                                width: screenWidth * 0.8,
                                                height: 350,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(20.0),
                                                child: Text(
                                                  'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                                  style: FlutterFlowTheme.of(context).bodyLarge,
                                                ),
                                              ),
                                            SizedBox(height:30),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                          child: smooth_page_indicator.SmoothPageIndicator(
                                            controller: _model.pageViewController3 ??= PageController(initialPage: 1),
                                            count: 6,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController3!.animateToPage(
                                                i,
                                                duration: const Duration(milliseconds: 500),
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
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(screenWidth * 0.05, 50.0, screenWidth * 0.05, 45.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Building Tomorrow\'s Innovators, One Student at a Time.',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontSize: 10 + 2 * min(5, screenWidth / 150),
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.13,
                                  ),
                                ),
                                Text(
                                  'Invest in the future generation of leaders by supporting Northern Horizon’s mission',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontSize: 7 + 1.5 * min(5, screenWidth / 150),
                                    lineHeight: 1.13,
                                  ),
                                ),
                              ].divide(SizedBox(height: 7)),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => const Dialog(
                                    shape: ContinuousRectangleBorder(),
                                    surfaceTintColor: Colors.grey,
                                    child: DonateDialog(),
                                  ),
                                );
                              },
                              text: 'Donate',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xffec003b),
                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                                elevation: 2.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 60)),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(screenWidth * 0.05, 50.0, screenWidth * 0.05, 50.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Building Tomorrow\'s Innovators, One Student at a Time.',
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontSize: 15 + min(5, screenWidth / 150),
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.15,
                                ),
                              ),
                              Text(
                                'Invest in the future generation of leaders by supporting Northern Horizon’s mission',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ].divide(SizedBox(height: 5)),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => const Dialog(
                                  shape: ContinuousRectangleBorder(),
                                  surfaceTintColor: Colors.grey,
                                  child: DonateDialog(),
                                ),
                              );
                            },
                            text: 'Donate',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xffec003b),
                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 2.0,
                              borderSide: const BorderSide(
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
                                          fontFamily: 'Readex Pro',
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
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w200,
                                          ),
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
                                      'azhao@northernacademy.org',
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
                                              fontFamily: 'Readex Pro',
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
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'About Us',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          Text(
                                            'Our Projects',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
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
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              'Marketing Solutions',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Website Building',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          Text(
                                            'Tailored Solutions',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
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
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              'Terms of Service',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Privacy Policy',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          Text(
                                            '',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
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
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                            child: Text(
                                              '+1 (845)-281-9257',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'azhao@northernacademy.org',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 8.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          Text(
                                            '1 Ashley Ave Middletown, NY',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
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
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'About Us',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              'Our Projects',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                'Marketing Solutions',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Website Building',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              'Tailored Solutions',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                'Terms of Service',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Privacy Policy',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                                              'CONTACT US',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Text(
                                                '+1 (845)-281-9257',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 8.0,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'azhao@northernacademy.org',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 8.0,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Text(
                                              '1 Ashley Ave Middletown, NY',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
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
                  ].divide(const SizedBox(height: 30.0)).addToStart(const SizedBox(height: 100.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
