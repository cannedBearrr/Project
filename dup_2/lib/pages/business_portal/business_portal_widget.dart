import 'dart:math';

import 'package:sticky_headers/sticky_headers.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'business_portal_model.dart';
export 'business_portal_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomShape extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    double height = size.height; //i
    double width = size.width;

    double screenWidth = width + 150;
    double respond = (screenWidth < 600) ? 300 - screenWidth/2 : 0;

    var path = Path();
    path.moveTo(width, 0);
    path.lineTo(203, 0); //x
    path.lineTo(203, 160);
    path.lineTo(0, 160); //y
    path.lineTo(0, height);
    path.lineTo(width - 322 + respond, height);
    path.lineTo(width - 322 + respond, height - 14);
    path.lineTo(width, height - 88 + respond * 0.23);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class BusinessPortalWidget extends StatefulWidget {
  const BusinessPortalWidget({super.key});

  @override
  State<BusinessPortalWidget> createState() => _BusinessPortalWidgetState();
}

class _BusinessPortalWidgetState extends State<BusinessPortalWidget> {
  late BusinessPortalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  bool contentExpanded = false;

  @override
  void initState() {
    super.initState();
    try {
      _model = createModel(context, () => BusinessPortalModel());
    } catch (e) {
      print('Error occurred while initializing this page: $e');
    }
  }

  @override
  void dispose() {
    try {
      _model.dispose();
    } catch (e) {
      print('Error occurred while disposing this page: $e');
    }

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
      double screenHeight = MediaQuery.sizeOf(context).height;

      return GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                                    context.pushNamed('pastProjects');
                                  },
                                  child: Text(
                                    'PAST PROJECTS',
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
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Stack(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/unsplash_gG-YEEDSppM_(1).webp',
                              width: double.infinity,
                              height: screenHeight * 1.0 - 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth,
                            height: screenHeight * 1.0 - 50,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Text(
                                  'WHERE LEARNING MEETS',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(

                                        fontSize: 28.0,
                                        letterSpacing: 3.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                Text(
                                  'OPPORTUNITY',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(

                                        fontSize: 60.0,
                                        letterSpacing: 6.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    setState(() {
                                      contentExpanded = true;
                                    });
                                    scrollController.animateTo(
                                      screenHeight * 0.85,
                                      duration: const Duration(seconds: 1, milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                  text: 'READ MORE',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(

                                          color: Colors.black,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                                const Spacer(flex: 6),
                              ].divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 90.0)),
                            ),
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Stack(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/unsplash_gG-YEEDSppM_(1).webp',
                              width: double.infinity,
                              height: screenHeight * 1.0 - 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 1.0 - 40,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(height: 40),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Text(
                                    'OPPORTUNITY',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(

                                          fontSize: valueOrDefault<double>(
                                            () {
                                              if (screenWidth < kBreakpointSmall) {
                                                return 34.0;
                                              } else if (screenWidth < kBreakpointMedium) {
                                                return 39.0;
                                              } else if (screenWidth < kBreakpointLarge) {
                                                return 40.0;
                                              } else {
                                                return 37.0;
                                              }
                                            }(),
                                            38.0,
                                          ),
                                          letterSpacing: 3.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            contentExpanded = true;
                                          });
                                          scrollController.animateTo(
                                            screenHeight * 0.88,
                                            duration: const Duration(seconds: 2),
                                            curve: Curves.easeInOut,
                                          );
                                        },
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: const Color(0x00FFFFFF),
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_downward,
                                            color: Colors.white,
                                            size: 48.0,
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (contentExpanded) ...[
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(minHeight: screenHeight * 0.5,),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenWidth * 0.6 - 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(50.0, min(-22 + screenWidth / 9, 100), 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 70,
                                          child: Text(
                                            'OUR SERVICES',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                  fontSize: 48.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(maxWidth: 290),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  borderRadius: BorderRadius.circular(24.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    'Programming',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 11,
                                                    )
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 65,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  borderRadius: BorderRadius.circular(24.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    'Design',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 80,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFD9D9D9),
                                                  borderRadius: BorderRadius.circular(24.0),
                                                  shape: BoxShape.rectangle,
                                                ),
                                                child: Align(
                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                  child: Text(
                                                    'Marketing',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 11,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          height: 20.0,
                                          thickness: 1.0,
                                          indent: 20.0,
                                          endIndent: 20.0,
                                          color: Color(0xCC000000),
                                        ),
                                        Text(
                                            'At Northern Horizon, we believe in the power of project-based learning and hands-on business practices to prepare high school students for the future. Through opportunities given to us companies, we offer students the opportunity to gain real-world experience and develop career-oriented skills.',
                                            style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                              fontSize: 25,
                                            ),
                                          ),
                                        const SizedBox(height: 10),
                                    ].divide(const SizedBox(height: 15.0)),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 50),
                            Container(
                              width: screenWidth * 0.4,
                              constraints: BoxConstraints(minHeight: screenHeight * 0.5,),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Stack(
                                children: [
                                    ConstrainedBox(
                                      constraints: BoxConstraints(minHeight: screenHeight * 0.5,),
                                      child: Align(
                                        alignment: const Alignment(-0.2, 0.2),
                                        child: Image.asset(
                                          'assets/images/FT_245_M.webp',
                                          width: 250,
                                          height: screenHeight * 0.35,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(minHeight: screenHeight * 0.5,),
                                      child: Align(
                                        alignment: const Alignment(0.2, -0.2),
                                        child: Image.asset(
                                          'assets/images/NAM_007_M.webp',
                                          width: 250,
                                          height: screenHeight * 0.35,
                                          fit: BoxFit.cover,
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
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(minHeight: max(sqrt(screenHeight) * 25, 750),),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ConstrainedBox(
                                constraints: const BoxConstraints(minHeight: 260),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/FT_245_M.webp',
                                            width: screenWidth * 0.5,
                                            height: max(screenHeight * 0.4, 260),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.5,
                                      height: max(screenHeight * 0.4, 260),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'OUR \nSERVICES',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                    fontSize: 30.0,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            width: max(screenWidth * 0.25, 120),
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9),
                                              borderRadius: BorderRadius.circular(24.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Programming',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: screenWidth * 0.25,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9),
                                              borderRadius: BorderRadius.circular(24.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Text(
                                                'Design',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: max(screenWidth * 0.25, 95),
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFD9D9D9),
                                              borderRadius: BorderRadius.circular(24.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                              child: Text(
                                                'Marketing',
                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 15.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  'At Northern Horizon, we believe in the power of project-based learning and hands-on business practices to prepare high school students for the future. Through opportunities given to us companies, we offer students the opportunity to gain real-world experience and develop career-oriented skills.',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(

                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/NAM_007_M.webp',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 25.0)),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.75,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                //moon
                                    'assets/images/2023NA_037.webp',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 300.0,
                                        child: Divider(
                                          thickness: 1.0,
                                          color: Color(0xCC000000),
                                        ),
                                      ),
                                      Text(
                                        'WHAT WE DO',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              color: Colors.black,
                                              fontSize: 115.0,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          context.pushNamed('pastProjects');
                                        },
                                        text: 'PAST PROJECTS',
                                        options: FFButtonOptions(
                                          width: 210,
                                          height: 72.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0x00FFFFFF),
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(

                                                color: Colors.black,
                                              ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(24.0),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        'DESIGN',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              color: Colors.white,
                                              fontSize: min(20.0 + pow(screenHeight, 1/3)*10, 125.0),
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        'MARKETING',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              color: Colors.white,
                                          fontSize: min(20.0 + pow(screenHeight, 1/3)*10, 125.0),
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ),
                                    UnconstrainedBox(
                                      clipBehavior: Clip.antiAlias,
                                      alignment: Alignment.centerRight,
                                      child: Opacity(
                                        opacity: 0.4,
                                        child: Text(
                                          'PROFESSIONAL',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                color: Colors.white,
                                            fontSize: min(20.0 + pow(screenHeight, 1/3)*10, 125.0),
                                                letterSpacing: 2.0,
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
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/2023NA_037.webp',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: (responsiveVisibility(context: context, phone: false)) ? 90 : 75, horizontal: (responsiveVisibility(context: context, phone: false)) ? 75 : 60),
                                child: ClipPath(
                                  clipper: CustomShape(),
                                  clipBehavior: Clip.hardEdge,
                                  child: Container(
                                      decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                  )),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB((responsiveVisibility(context: context, phone: false)) ? 45 : 30, (responsiveVisibility(context: context, phone: false)) ? 55 : 40, 0, 0),
                                    child: SizedBox(
                                        width: 233,
                                        height: 195,
                                        child: Text(
                                          "WHAT\nWE\nDO",
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                fontSize: 60,
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 10,
                                                lineHeight: 1.03,
                                              ),
                                        )),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, (responsiveVisibility(context: context, phone: false)) ? 50 : 44, (responsiveVisibility(context: context, phone: false)) ? 62 : 47),
                                    child: SizedBox(
                                        width: 344 - ((screenWidth < 600) ? 300 - screenWidth/2 : 0),
                                        height: 123,
                                        child: Align(
                                          alignment: const AlignmentDirectional(0.0, 0.5),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: FittedBox(
                                              child: Text(
                                                "DESIGN\nMARKETING\nPROFESSIONAL",
                                                textAlign: TextAlign.right,
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 2.5,
                                                      lineHeight: 1.05,
                                                      color: Colors.white,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: screenWidth * 0.6,
                              height: screenHeight * 0.75,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Image.asset(
                                'assets/images/FT_239_M.webp',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.4,
                              height: screenHeight * 0.75,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    child: OverflowBox(
                                      maxWidth: double.infinity,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.settings_outlined,
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            size: 27.0,
                                          ),
                                          Text(
                                            'WHY US',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                  fontSize: min(-38 + screenWidth / 8, 70),
                                                ),
                                          ),
                                          Icon(
                                            Icons.settings_outlined,
                                            color: FlutterFlowTheme.of(context).secondaryText,
                                            size: 27.0,
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 120.0,
                                    endIndent: 120.0,
                                    color: Color(0xCC000000),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(screenWidth*0.1-50, 0.0, screenWidth*0.1-50, 0.0),
                                    child: Text(
                                      'Northern Horizon Career Adventure Lab offers engaging project-based learning and career skills for high school students with the mission of cultivating future leaders through hands-on business experiences and real projects.',
                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                    ),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 120.0,
                                    endIndent: 120.0,
                                    color: Color(0xCC000000),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                ].divide(const SizedBox(height: 25.0)),
                              ),
                            ),
                          ],
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: screenHeight * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/images/FT_239_M.webp',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox.expand(child: ColoredBox(color: Colors.black45)),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.settings_outlined,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'WHY US',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              fontSize: 50.0,
                                              color: Colors.white,
                                            ),
                                      ),
                                      const Icon(
                                        Icons.settings_outlined,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 100.0,
                                    endIndent: 100.0,
                                    color: Color(0xCCFFFFFF),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all((responsiveVisibility(context: context, phone: false)) ? 18 : 12),
                                    child: Text(
                                      'Northern Horizon Career Adventure Lab offers engaging project-based learning and career skills for high school students with the mission of cultivating future leaders through hands-on business experiences and real projects.',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        color: Colors.white,
                                        fontSize: (responsiveVisibility(context: context, phone: false)) ? 18 : 16,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 100.0,
                                    endIndent: 100.0,
                                    color: Color(0xCCFFFFFF),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                ].divide(const SizedBox(height: 25.0)),
                              ),
                            ],
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                'assets/images/2023NA_032.webp',
                                width: double.infinity,
                                height: screenHeight * 0.75,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: screenHeight * 0.75,
                            child: const ColoredBox(color: Colors.black38),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 615.0,
                                      child: Divider(
                                        thickness: 3.0,
                                        color: Color(0xCCFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      'INTERESTED AS \nA PARENT?',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(

                                            color: Colors.white,
                                            fontSize: 80.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        context.pushNamed('parentPortal');
                                      },
                                      text: 'Take a look',
                                      options: FFButtonOptions(
                                        width: 350,
                                        height: screenHeight * 0.10,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(

                                              color: Colors.black,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 30,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 30.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Stack(
                          children: [
                            ClipRRect( // whos the one that added moons+stars here????????
                              child: Image.asset(//moons+stars
                                'assets/images/2023NA_032.webp',
                                width: double.infinity,
                                height: screenHeight * 0.75,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: double.infinity,
                                height: screenHeight * 0.75,
                                child: const ColoredBox(color: Colors.black45)),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 150.0,
                                      child: Divider(
                                        thickness: 1.0,
                                        color: Color(0xCCFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      'INTERESTED AS \nA PARENT?',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(

                                            color: Colors.white,
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        context.pushNamed('parentPortal');
                                      },
                                      text: 'Take a look',
                                      options: FFButtonOptions(
                                        width: 135,
                                        height: 60,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(

                                              color: Colors.black,
                                              fontWeight: FontWeight.w100,
                                            ),
                                        elevation: 0.0,
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 30.0)),
                                ),
                              ),
                            ),
                          ],
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
                                      Text(
                                          'LEARN MORE',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(

                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                                          child: Text(
                                            'Home',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
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
                                        child: GestureDetector(
                                          onTap: () => launchUrl(Uri.parse('https://129.213.117.186/tc.html')),
                                          child: Text(
                                            'Terms and Conditions',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(

                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
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
                          constraints: const BoxConstraints(minHeight: 155),
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
                                              child: GestureDetector(
                                                onTap: () => launchUrl(Uri.parse('https://129.213.117.186/tc.html')),
                                                child: Text(
                                                  'Terms and Conditions',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                    color: Colors.white,
                                                    fontSize: 8.0,
                                                    fontWeight: FontWeight.w200,
                                                  ),
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
                                              const SizedBox(height: 12),
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
                                              const SizedBox(height: 12),
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
                                                child: GestureDetector(
                                                  onTap: () => launchUrl(Uri.parse('https://129.213.117.186/tc.html')),
                                                  child: Text(
                                                    'Terms and Conditions',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(

                                                      color: Colors.white,
                                                      fontSize: 8.0,
                                                      fontWeight: FontWeight.w200,
                                                    ),
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
                                              const SizedBox(height: 12),
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
                                              const SizedBox(height: 12),
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
      print('Error occurred while building this page: $e');
      return Container(); // Return an empty container in case of error
    }
  }
}
