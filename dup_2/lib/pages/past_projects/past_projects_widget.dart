import 'dart:ui';

import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../assets/footer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/assets/donate_popup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart' as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'past_projects_model.dart';
export 'past_projects_model.dart';
import 'package:url_launcher/url_launcher.dart';

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
                              const SizedBox.shrink(),
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
                              const SizedBox.shrink(),
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
                                  'PARENTS',
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Student Projects',
                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      fontSize: 60.0,
                      color: const Color(0xFFEEB609),
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Poppins',// Set the font size to 40
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
                      height: max(screenHeight * 0.65, 550),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: screenWidth * 1.0,
                              height: max(screenHeight * 0.65 - 10, 540),
                              decoration: const BoxDecoration(),
                              child: SizedBox(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.5,
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: _model.pageViewController1 ??= PageController(initialPage: 0),
                                      scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'Earthquake Signal Precursor',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ), //Add documentation Reward: Various rewards
                                              child: Image.asset(
                                                'assets/images/ESP web.gif',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Plus Jakarta Sans',
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'Northern Health App',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Image.asset(
                                                'assets/images/Friendly bear@4x 2.png',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'Northern Health App is a user-friendly mobile application powered by AI that allows individuals to ask health-related questions and receive accurate and personalized responses, providing convenient access to reliable healthcare information.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'Covid Tool Kit',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Image.asset(
                                                'assets/images/Covid TK.gif',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'Covid Tool Kit is a web-based project that allows users to access real-time data on death, recovered, and confirmed cases of COVID-19 in countries around the world, providing accurate and up-to-date information for researchers, healthcare professionals, and individuals seeking to understand the global impact of the pandemic.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'CitySmart',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Image.asset(
                                                'assets/images/CitySmart.gif',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'CitySmart is an offline project that provides real-time information about available food and water sources in a city during emergencies, ensuring efficient resource utilization and enhancing public safety.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'Invasive Species Heatmap',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Image.asset(
                                                'assets/images/ISH 2.gif',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'Invasive Species Heatmap: Africa\'s data-driven pre-alert system for locust season. This innovative program equips farmers, communities, and authorities with timely information, empowering proactive measures to combat locust swarms. By harnessing data analysis and real-time monitoring, it safeguards agriculture and food security, revolutionizing locust control strategies in Africa.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                              child: Text(
                                                'World Heritage Site',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.8,
                                              height: 220,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                              child: Image.asset(
                                                'assets/images/Worldheritage.gif',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'World Heritage Site is a project made by Northern Horizon students showing a 3d globe that contains placemarks with the location of World Heritage sites. If the user would like to acquire more information on a site they can click on any placemark and get more information on that specific site.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 15,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const Spacer(flex: 3),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator.SmoothPageIndicator(
                                          controller: _model.pageViewController1 ??= PageController(initialPage: 0),
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
                                  controller: _model.pageViewController2 ??= PageController(initialPage: 0),
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
                                          width: screenWidth * 0.8,
                                        height: 350,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                        ),
                                          child: Image.asset(
                                          'assets/images/ESP web.gif',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                        child: Text(
                                          'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontSize: 15,
                                            letterSpacing: 0.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                        const SizedBox(height:30),
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
                                        width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                        child: Image.asset(
                                          'assets/images/Friendly bear@4x 2.png',
                                          fit: BoxFit.contain,
                                        ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'Northern Health App is a user-friendly mobile application powered by AI that allows individuals to ask health-related questions and receive accurate and personalized responses, providing convenient access to reliable healthcare information.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 15,
                                              letterSpacing: 0.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      const SizedBox(height:30),
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
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Covid TK.gif',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'Covid Tool Kit is a web-based project that allows users to access real-time data on death, recovered, and confirmed cases of COVID-19 in countries around the world, providing accurate and up-to-date information for researchers, healthcare professionals, and individuals seeking to understand the global impact of the pandemic.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 15,
                                              letterSpacing: 0.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(height:30),
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
                                          width: screenWidth * 0.8,
                                        height: 350,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                        ),
                                          child: Image.asset(
                                          'assets/images/CitySmart.gif',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                        child: Text(
                                          'CitySmart is an offline project that provides real-time information about available food and water sources in a city during emergencies, ensuring efficient resource utilization and enhancing public safety.',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontSize: 15,
                                            letterSpacing: 0.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                        const SizedBox(height:30),
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
                                        width: screenWidth * 0.8,
                                        height: 350,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                        ),
                                        child: Image.asset(
                                          'assets/images/ISH 2.gif',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                        child: Text(
                                          'Invasive Species Heatmap: Africa\'s data-driven pre-alert system for locust season. This innovative program equips farmers, communities, and authorities with timely information, empowering proactive measures to combat locust swarms. By harnessing data analysis and real-time monitoring, it safeguards agriculture and food security, revolutionizing locust control strategies in Africa.',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontSize: 15,
                                            letterSpacing: 0.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const SizedBox(height:30),
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
                                          width: screenWidth * 0.8,
                                          height: 350,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Worldheritage.gif',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all((responsiveVisibility(context: context, tablet: false)) ? 30 : 12),
                                          child: Text(
                                            'World Heritage Site is a project made by Northern Horizon students showing a 3d globe that contains placemarks with the location of World Heritage sites. If the user would like to acquire more information on a site they can click on any placemark and get more information on that specific site.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 15,
                                              letterSpacing: 0.0,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        const SizedBox(height:30),
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
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
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
                            child: SizedBox(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.5,
                              child: Stack(
                                children: [
                                  PageView(
                                    controller: _model.pageViewController3 ??= PageController(initialPage: 0),
                                    scrollBehavior: YesScrollBehavior().copyWith(scrollbars: false),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                        Text(
                                        'Earthquake Signal Precursor',
                                          style: FlutterFlowTheme.of(context).bodyLarge.override(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                          Container(
                                            width: screenWidth * 0.8,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                              ),
                                            child: Image.asset(
                                              'assets/images/ESP web.gif',
                                              fit: BoxFit.contain,
                                            ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Text(
                                                'ESP is a collaborative project between Northern Horizon, Fei Tian College and NASA earth scientists. The project aims to create an innovative way of predicting earthquakes using our own specifically developed machine learning model, and our data are collected from our self-constructed sensor stations.',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 20,
                                                  letterSpacing: 0.0,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          const SizedBox(height:30),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                                'Northern Health App',
                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            Container(
                                              width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                              child: Image.asset(
                                              'assets/images/Friendly bear@4x 2.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'Northern Health App is a user-friendly mobile application powered by AI that allows individuals to ask health-related questions and receive accurate and personalized responses, providing convenient access to reliable healthcare information.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                            const SizedBox(height:30),
                                        ],
                                                                                    ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Covid Tool Kit',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                            child: Image.asset(
                                              'assets/images/CitySmart.gif',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'Covid Tool Kit is a web-based project that allows users to access real-time data on death, recovered, and confirmed cases of COVID-19 in countries around the world, providing accurate and up-to-date information for researchers, healthcare professionals, and individuals seeking to understand the global impact of the pandemic.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height:30),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'CitySmart',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                            child: Image.asset(
                                              'assets/images/Covid TK.gif',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'CitySmart is an offline project that provides real-time information about available food and water sources in a city during emergencies, ensuring efficient resource utilization and enhancing public safety.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height:30),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Invasive Species Heatmap',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                            child: Image.asset(
                                              'assets/images/ISH 2.gif',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'Invasive Species Heatmap: Africa\'s data-driven pre-alert system for locust season. This innovative program equips farmers, communities, and authorities with timely information, empowering proactive measures to combat locust swarms. By harnessing data analysis and real-time monitoring, it safeguards agriculture and food security, revolutionizing locust control strategies in Africa.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height:30),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'World Heritage Site',
                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth * 0.8,
                                            height: 350,
                                            decoration: BoxDecoration(
                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                            ),
                                            child: Image.asset(
                                              'assets/images/Worldheritage.gif',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              'World Heritage Site is a project made by Northern Horizon students showing a 3d globe that contains placemarks with the location of World Heritage sites. If the user would like to acquire more information on a site they can click on any placemark and get more information on that specific site.',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 20,
                                                letterSpacing: 0.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          const SizedBox(height:30),
                                        ],
                                      ),
                                      ],
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                                        child: smooth_page_indicator.SmoothPageIndicator(
                                          controller: _model.pageViewController3 ??= PageController(initialPage: 0),
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
                                  color: const Color(0xFFEEB609),
                                ),
                              ),
                              Text(
                                'As a newly established non-profit, Northern Horizon needs your support to provide essential resources and skilled educators for our students. Your donations will help us grow and significantly impact the future leaders we nurture. By supporting us, you’re not just making a donation, you’re making a difference.',
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontSize: 7 + 1.5 * min(5, screenWidth / 150),
                                  lineHeight: 1.13,
                                ),
                              ),
                            ].divide(const SizedBox(height: 7)),
                          ),
                          FFButtonWidget(
                            onPressed: () {
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
                        ].divide(const SizedBox(height: 60)),
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
                                color: const Color(0xFFEEB609),
                              ),
                            ),
                            Text(
                              'As a newly established non-profit, Northern Horizon needs your support to provide \nessential resources and skilled educators for our students. Your donations will help \nus grow and significantly impact the future leaders we nurture. By supporting us, \nyou’re not just making a donation, you’re making a difference.',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ].divide(const SizedBox(height: 5)),
                        ),
                        FFButtonWidget(
                          onPressed: () {
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
                  const FooterWidget(),
                ].divide(const SizedBox(height: 30.0)).addToStart(SizedBox(height: (responsiveVisibility(context: context, phone: false)) ? 100.0 : 30.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
