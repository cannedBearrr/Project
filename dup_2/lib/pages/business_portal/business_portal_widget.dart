import 'package:sticky_headers/sticky_headers.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'business_portal_model.dart';
export 'business_portal_model.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height; //i
    double width = size.width;

    var path = Path();
    path.moveTo(width, 0);
    path.lineTo(203, 0); //x
    path.lineTo(203, 160);
    path.lineTo(0, 160); //y
    path.lineTo(0, height);
    path.lineTo(width - 319, height);
    path.lineTo(width - 319, height - 14);
    path.lineTo(width - 300, height - 14);
    path.lineTo(width, height - 95);
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
                              height: MediaQuery.sizeOf(context).height * 1.0 - 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'WHERE LEARNING MEETS',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 28.0,
                                          letterSpacing: 3.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                  Text(
                                    'OPPORTUNITY',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 60.0,
                                          letterSpacing: 6.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                      setState(() {
                                        contentExpanded = true;
                                      });
                                      scrollController.animateTo(
                                        MediaQuery.sizeOf(context).height * 0.85,
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
                                            fontFamily: 'Readex Pro',
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
                                ].divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 100.0)),
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
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/unsplash_gG-YEEDSppM_(1).webp',
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 1.0 - 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 350.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Text(
                                    'OPPORTUNITY',
                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                return 34.0;
                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                return 39.0;
                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
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
                                    child: GestureDetector(
                                      onTap: () {
                                        print('Button pressed ...');
                                        setState(() {
                                          contentExpanded = true;
                                        });
                                        scrollController.animateTo(
                                          MediaQuery.sizeOf(context).height * 0.88,
                                          duration: Duration(seconds: 2),
                                          curve: Curves.easeInOut,
                                        );
                                      },
                                      child: Container(
                                        width: MediaQuery.sizeOf(context).width * 0.25,
                                        height: MediaQuery.sizeOf(context).height * 0.11,
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
                                    )),
                              ].divide(const SizedBox(height: 30.0)),
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
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(50.0, 100.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            'OUR \nSERVICES',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 68.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context).width * 0.06,
                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFD9D9D9),
                                                borderRadius: BorderRadius.circular(24.0),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                child: Text(
                                                  'Programming',
                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context).width * 0.06,
                                              height: MediaQuery.sizeOf(context).height * 0.03,
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
                                              width: MediaQuery.sizeOf(context).width * 0.06,
                                              height: MediaQuery.sizeOf(context).height * 0.03,
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
                                          ].divide(const SizedBox(width: 15.0)),
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
                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                      ),
                                    ].divide(const SizedBox(height: 15.0)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Stack(
                                children: [

                                    Align(
                                      alignment: const AlignmentDirectional(1.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 200.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'images/FT_245_M.jpg',
                                            width: MediaQuery.sizeOf(context).width * 0.3,
                                            height: MediaQuery.sizeOf(context).height * 0.35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(-1.0, 1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(200.0, 0.0, 0.0, 100.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'images/NAM_007_M.jpg',
                                            width: MediaQuery.sizeOf(context).width * 0.25,
                                            height: MediaQuery.sizeOf(context).height * 0.35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].addToStart(const SizedBox(width: 0.0)),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.sizeOf(context).width * 0.5,
                                    height: MediaQuery.sizeOf(context).height * 0.4,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'images/FT_245_M.jpg',
                                          width: MediaQuery.sizeOf(context).width * 0.5,
                                          height: MediaQuery.sizeOf(context).height * 0.4,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width * 0.5,
                                    height: MediaQuery.sizeOf(context).height * 0.4,
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
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 30.0,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width * 0.25,
                                          height: MediaQuery.sizeOf(context).height * 0.035,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(24.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Programming',
                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width * 0.25,
                                          height: MediaQuery.sizeOf(context).height * 0.035,
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
                                          width: MediaQuery.sizeOf(context).width * 0.25,
                                          height: MediaQuery.sizeOf(context).height * 0.035,
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
                              Text(
                                'At Northern Horizon, we believe in the power of project-based learning and hands-on business practices to prepare high school students for the future. Through opportunities given to us companies, we offer students the opportunity to gain real-world experience and develop career-oriented skills.',
                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                    ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'images/NAM_007_M.jpg',
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
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                //moon
                                    'images/2023NA_037.jpg',
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
                                          color: Color(0xCCFFFFFF),
                                        ),
                                      ),
                                      Text(
                                        'WHAT WE DO',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.black,
                                              fontSize: 70.0,
                                            ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                          context.pushNamed('pastProjects');
                                        },
                                        text: 'PAST PROJECTS',
                                        options: FFButtonOptions(
                                          width: MediaQuery.sizeOf(context).width * 0.1,
                                          height: 42.0,
                                          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                          color: Colors.black,
                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                              ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            color: Colors.white,
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
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 100.0,
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        'MARKETING',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 100.0,
                                              letterSpacing: 2.0,
                                            ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.4,
                                      child: Text(
                                        'PROGRAMMING',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 100.0,
                                              letterSpacing: 2.0,
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
                          height: MediaQuery.sizeOf(context).height * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/2023NA_037.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 75),
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
                                    padding: const EdgeInsets.fromLTRB(45, 55, 0, 0),
                                    child: SizedBox(
                                        width: 233,
                                        height: 195,
                                        child: Text(
                                          "WHAT\nWE\nDO",
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 60,
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: 10,
                                                lineHeight: 1.03,
                                                color: Colors.white,
                                              ),
                                        )),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 50, 62),
                                    child: SizedBox(
                                        width: 344,
                                        height: 123,
                                        child: Align(
                                          alignment: const AlignmentDirectional(1.0, 1.0),
                                          child: Text(
                                            "DESIGN\nMARKETING\nPROGRAMMING",
                                            textAlign: TextAlign.right,
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: screenWidth < 600 ? 34 : (screenWidth < 900 ? 20 : 42),
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 2.5,
                                                  lineHeight: 1.05,
                                                  color: Colors.white,
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
                              width: MediaQuery.sizeOf(context).width * 0.6,
                              height: MediaQuery.sizeOf(context).height * 0.75,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Image.asset(
                                'images/FT_239_M.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              height: MediaQuery.sizeOf(context).height * 0.75,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.settings_outlined,
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'WHY US',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 50.0,
                                            ),
                                      ),
                                      Icon(
                                        Icons.settings_outlined,
                                        color: FlutterFlowTheme.of(context).secondaryText,
                                        size: 24.0,
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 150.0,
                                    endIndent: 150.0,
                                    color: Color(0xCC000000),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                  Text(
                                    'Northern Horizon Career Adventure Lab offers engaging project-based learning and career skills for high school students with the mission of cultivating future leaders through hands-on business experiences and real projects.',
                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 150.0,
                                    endIndent: 150.0,
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
                          height: MediaQuery.sizeOf(context).height * 0.8,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'images/FT_239_M.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
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
                                      Icon(
                                        Icons.settings_outlined,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'WHY US',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 50.0,
                                              color: Colors.white,
                                            ),
                                      ),
                                      Icon(
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
                                    color: Color(0xCC000000),
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                  Text(
                                    'Northern Horizon Career Adventure Lab offers engaging project-based learning and career skills for high school students with the mission of cultivating future leaders through hands-on business experiences and real projects.',
                                    style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const StyledDivider(
                                    thickness: 1.0,
                                    indent: 100.0,
                                    endIndent: 100.0,
                                    color: Color(0xCC000000),
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
                                'images/2023NA_032.jpg',
                                width: double.infinity,
                                height: MediaQuery.sizeOf(context).height * 0.75,
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
                                        color: Color(0xCCFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      'INTERESTED AS \nA PARENT?',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 60.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                        context.pushNamed('parentPortal');
                                      },
                                      text: 'Take a look',
                                      options: FFButtonOptions(
                                        width: MediaQuery.sizeOf(context).width * 0.1,
                                        height: MediaQuery.sizeOf(context).height * 0.09,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
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
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Stack(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                'images/2023NA_032.jpg',//moons+stars
                                width: double.infinity,
                                height: MediaQuery.sizeOf(context).height * 0.75,
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
                                      width: 150.0,
                                      child: Divider(
                                        thickness: 1.0,
                                        color: Color(0xCCFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      'INTERESTED AS \nA PARENT?',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w100,
                                          ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                        context.pushNamed('parentPortal');
                                      },
                                      text: 'Take a look',
                                      options: FFButtonOptions(
                                        width: MediaQuery.sizeOf(context).width * 0.3,
                                        height: MediaQuery.sizeOf(context).height * 0.08,
                                        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                              fontFamily: 'Readex Pro',
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
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          decoration: const BoxDecoration(
                            color: Color(0xFF4C6A7D),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                              'Maketing Solutions',
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
                                            'Taiolored Solutions',
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
                                            'CONTACT US',
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
                                        ].divide(const SizedBox(width: 20.0)),
                                      ),
                                    ].divide(const SizedBox(width: 80.0)),
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
                          decoration: const BoxDecoration(
                            color: Color(0xFF4C6A7D),
                          ),
                          child: Stack(
                            children: [
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
                                          'bossemail@gmail.com',
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
                              Align(
                                alignment: AlignmentDirectional(-1.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 15.0),
                                  child: Image.asset(
                                    'assets/images/linkedin.png',
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                                  child: Image.asset(
                                    'assets/images/facebook.png',
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 15.0),
                                  child: Image.asset(
                                    'assets/images/twitter.png',
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
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
