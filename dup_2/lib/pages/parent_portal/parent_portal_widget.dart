import '/assets/animation/animation_widget.dart';
import '/assets/menu/menu_widget.dart';
import '/assets/mobilefixinfd/mobilefixinfd_widget.dart';
import '/assets/mobilefixinfd_copy/mobilefixinfd_copy_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'parent_portal_model.dart';
export 'parent_portal_model.dart';

class ParentPortalWidget extends StatefulWidget {
  const ParentPortalWidget({super.key});

  @override
  _ParentPortalWidgetState createState() => _ParentPortalWidgetState();
}

class _ParentPortalWidgetState extends State<ParentPortalWidget> {
  late ParentPortalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParentPortalModel());

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }
                                                                                //yu
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 143,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              22.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'BUSINESS',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
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
                        flex: 117,
                        child: Text(
                          'ABOUT US',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
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
                        flex: 175,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 22.0, 0.0),
                          child: Text(
                            'PAST PROJECTS',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                ),
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
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'BUSINESS',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 20.0,
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
                        Text(
                          'ABOUT US',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 20.0,
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
                        Text(
                          'PAST PROJECTS',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                        ),
                        // FlutterFlowDropDown<String>(
                        //   controller: _model.dropDownValueController ??=
                        //       FormFieldController<String>(null),
                        //   options: const ['Option 1', '3', '3'],
                        //   onChanged: (val) =>
                        //       setState(() => _model.dropDownValue = val),
                        //   width: 123.0,
                        //   height: 50.0,
                        //   textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        //   icon: Icon(
                        //     Icons.keyboard_arrow_down_rounded,
                        //     color: FlutterFlowTheme.of(context).secondaryText,
                        //     size: 24.0,
                        //   ),
                        //   fillColor: const Color(0xFFF1F4F8),
                        //   elevation: 2.0,
                        //   borderColor: Colors.white,
                        //   borderWidth: 7.0,
                        //   borderRadius: 13.0,
                        //   margin: const EdgeInsetsDirectional.fromSTEB(
                        //       16.0, 11.0, 13.0, 11.0),
                        //   hidesUnderline: true,
                        //   isOverButton: true,
                        //   isSearchable: false,
                        //   isMultiSelect: false,
                        // ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxkYXJrfGVufDB8fHx8MTcwMDY4Mjk1Nnww&ixlib=rb-4.0.3&q=80&w=1080',
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 470.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://picsum.photos/seed/560/600',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 80.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 200.0, 0.0, 0.0),
                                child: Text(
                                  'WHERE LEARNING MEETS',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Text(
                                  'OPPORTUNITY',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFFEEB609),
                                        fontSize: 29.0,
                                        letterSpacing: 1.5,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Sample text here for data data data data\ndata data data data data data data data\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Read More',
                                options: FFButtonOptions(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.27,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.03,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x004B39EF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 1.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                              ),
                            ],
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1478760329108-5c3ed9d495a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxkYXJrfGVufDB8fHx8MTcwMDY4Mjk1Nnww&ixlib=rb-4.0.3&q=80&w=1080',
                              width: double.infinity,
                              height: min(MediaQuery.sizeOf(context).width * 3/4, MediaQuery.sizeOf(context).height) - 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.4,
                              decoration: const BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Transform.translate(
                                offset: const Offset(0.0, -260.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      50.0, 0.0, 0.0, 0.0),
                                  child: Image.asset(
                                    'assets/images/Layer_2.png',
                                    width: MediaQuery.sizeOf(context).width *
                                        0.41,
                                    height:
                                        MediaQuery.sizeOf(context).height *
                                            0.23,
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
                            height: min(MediaQuery.sizeOf(context).width * 3/4, MediaQuery.sizeOf(context).height) - 50,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Spacer(),
                                Align(
                                  alignment:
                                      const AlignmentDirectional(1.0, 1.0),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            75.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 100.0, 0.0, 0.0),
                                          child: Text(
                                            'WHERE LEARNING MEETS',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 40.0,
                                                  letterSpacing: 1.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'OPPORTUNITY',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
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
                                                text:
                                                    'WE HELP STUDENTS DEFINE THEIR',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0.0, 15.0, 0.0, 0.0),
                                          child: Container(
                                            width: 155.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                            ),
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                'Read More',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 20.5,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].addToStart(
                                          const SizedBox(height: 15.0)),
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
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  desktop: false,
                ))
                  SizedBox(
                    height: min(MediaQuery.sizeOf(context).width * 3/4, MediaQuery.sizeOf(context).height) - 50,
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
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'BENEFITS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
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
                        Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.mobilefixinfdCopyModel,
                            updateCallback: () => setState(() {}),
                            child: const MobilefixinfdCopyWidget(),
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/photocrpfei.png',
                                  width: double.infinity,
                                  height: 135.0,
                                  fit: BoxFit.fitHeight,
                                ),
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
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 135.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
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
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                'Reward',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/photocrpfei2.png',
                                            width: double.infinity,
                                            height: 225.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 225.0,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xE0054F2C),
                                                Color(0x80000000)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.17, -1.0),
                                              end: AlignmentDirectional(
                                                  -0.17, 1.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Cash Award',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
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
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/photocrprsp.png',
                                  width: double.infinity,
                                  height: 135.0,
                                  fit: BoxFit.fitHeight,
                                ),
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
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 135.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
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
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                'Networking',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/photocrprsp2.png',
                                            width: double.infinity,
                                            height: 330.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 330.0,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xE05C0014),
                                                Color(0x80000000)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.17, -1.0),
                                              end: AlignmentDirectional(
                                                  -0.17, 1.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Cash Award',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
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
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1562845029-d1b530d4cfd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHxibGFja2JlcnJ5fGVufDB8fHx8MTcwNDkzNTc2OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: double.infinity,
                                  height: 135.0,
                                  fit: BoxFit.cover,
                                ),
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
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 135.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
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
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                'Build Portfolio',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/photocrpfei2.png',
                                            width: double.infinity,
                                            height: 225.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 225.0,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xE0054F2C),
                                                Color(0x80000000)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.17, -1.0),
                                              end: AlignmentDirectional(
                                                  -0.17, 1.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Cash Award',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
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
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/photocrpblu.png',
                                  width: double.infinity,
                                  height: 135.0,
                                  fit: BoxFit.cover,
                                ),
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
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 135.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
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
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.0, 0.0),
                                              child: Text(
                                                'Professional Skills',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    expanded: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/photocrprsp2.png',
                                            width: double.infinity,
                                            height: 600.0,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: 600.0,
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xE05C0014),
                                                Color(0x80000000)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.17, -1.0),
                                              end: AlignmentDirectional(
                                                  -0.17, 1.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 240.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xDDFFFFFF),
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Scholarship Credit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xDDFFFFFF),
                                                          fontSize: 19.0,
                                                          letterSpacing: 2.0,
                                                          fontWeight:
                                                              FontWeight.w300,
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
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
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
                  tabletLandscape: false,
                  desktop: false,
                ))
                  SizedBox(
                    height: 405.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE3E3E3),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 251.0,
                                  height: 57.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0x00272727),
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'BENEFITS',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 35.0,
                                            letterSpacing: 5.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.mobilefixinfdModel,
                            updateCallback: () => setState(() {}),
                            child: const MobilefixinfdWidget(),
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
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.08,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
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
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Text(
                                          'BENEFITS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
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
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.08,
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
                              fontFamily: 'Readex Pro',
                              fontSize: 30.0,
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
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: SelectionArea(
                              child: Text(
                            'HOW TO ACHIEVE OUR GOALS?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 25.0,
                                  color: Colors.black,
                                ),
                          )),
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
                              text: '⸻ ',
                              children: const <TextSpan>[
                                TextSpan(text: 'HOW TO ACHIEVE OUR GOALS?', style: TextStyle(color: Colors.black))
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 45.0,
                                    color: Colors.redAccent[400],
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
                      GestureDetector(
                        onTap: () async {
                          context.pushNamed('projectBasedLearning');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
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
                                    'https://images.unsplash.com/photo-1510251197878-a2e6d2cb590c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxzdGlua3l8ZW58MHx8fHwxNzAwNTI0NTQ3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.084,
                                    decoration: BoxDecoration(
                                      color: const Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Project - Based\nLearning',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 22.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          context.pushNamed('careerOrientedSkills');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
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
                                    'https://images.unsplash.com/photo-1608224873587-81ee37394b4e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxsaXRoaXVtfGVufDB8fHx8MTcwMTkxMjc2M3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.084,
                                    decoration: BoxDecoration(
                                      color: const Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Career - Oriented\nSkills',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 22.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          context.pushNamed('partnershipWithCompanies');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 180.0,
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
                                    'https://images.unsplash.com/photo-1625370187248-700d63dbc0ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxqYW1lc3xlbnwwfHx8fDE3MDE5MTI3Nzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: 180.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.084,
                                    decoration: BoxDecoration(
                                      color: const Color(0x00FFFFFF),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Partnerships with\nCompanies',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 22.0,
                                            ),
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
                if (responsiveVisibility(
                  context: context,
                  phone: false,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1510251197878-a2e6d2cb590c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxzdGlua3l8ZW58MHx8fHwxNzAwNTI0NTQ3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: double.infinity,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
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
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Project - Based Learning',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                      ),
                      Container(
                        width: double.infinity,
                        height: 180.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1608224873587-81ee37394b4e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxsaXRoaXVtfGVufDB8fHx8MTcwMTkxMjc2M3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: double.infinity,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
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
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Career - Oriented Skills',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                      ),
                      Container(
                        width: double.infinity,
                        height: 180.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1625370187248-700d63dbc0ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxqYW1lc3xlbnwwfHx8fDE3MDE5MTI3Nzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: double.infinity,
                                  height: 180.0,
                                  fit: BoxFit.cover,
                                ),
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
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Partnerships with Companies',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                    height: 800.0,
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(-1.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1505506874110-6a7a69069a08?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxzcGFjZXxlbnwwfHx8fDE3MDE0NDAyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                      width: MediaQuery.sizeOf(context).width *
                                          1/3,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.28,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.18,
                                      decoration: BoxDecoration(
                                        color: const Color(0x00FFFFFF),
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Text(
                                          'Project - Based\nLearning',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 33.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1447933601403-0c6688de566e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjb2ZmZWV8ZW58MHx8fHwxNzAxMzkxNTQ4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                      width: MediaQuery.sizeOf(context).width *
                                          1/3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
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
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Text(
                                          'Career - Oriented\nSkills',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 33.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Stack(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              children: [
                                Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1567922045116-2a00fae2ed03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHx0ZWF8ZW58MHx8fHwxNzAxNDAwNDUyfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                      width: MediaQuery.sizeOf(context).width *
                                          1/3,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                ))
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(1.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.28,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.18,
                                      decoration: BoxDecoration(
                                        color: const Color(0x00FFFFFF),
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Text(
                                          'Partnerships with\nCompanies',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 33.0,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1505506874110-6a7a69069a08?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxzcGFjZXxlbnwwfHx8fDE3MDE0NDAyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                  width:
                                      MediaQuery.sizeOf(context).width * 1 / 3,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  fit: BoxFit.cover,
                                ),
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.28,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.18,
                                  decoration: BoxDecoration(
                                    color: const Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Project - Based\nLearning',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                          context.pushNamed('careerOrientedSkills');
                        },
                        child: Stack(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1447933601403-0c6688de566e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjb2ZmZWV8ZW58MHx8fHwxNzAxMzkxNTQ4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  width:
                                      MediaQuery.sizeOf(context).width * 1 / 3,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  fit: BoxFit.cover,
                                ),
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.28,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.18,
                                  decoration: BoxDecoration(
                                    color: const Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Career - Oriented\nSkills',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                        },
                        child: Stack(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1567922045116-2a00fae2ed03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHx0ZWF8ZW58MHx8fHwxNzAxNDAwNDUyfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  width:
                                      MediaQuery.sizeOf(context).width * 1 / 3,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  fit: BoxFit.cover,
                                ),
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.28,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.18,
                                  decoration: BoxDecoration(
                                    color: const Color(0x00FFFFFF),
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Partnerships with\nCompanies',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
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
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 13.0, 0.0, 11.0),
                    child: Container(
                      width: double.infinity,
                      height: 315.0,
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  29.0, 0.0, 29.0, 0.0),
                              child: Text(
                                'How to get started ?',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 15.0, 7.0),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare finibus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque mollis sed lacus a\nmolestie. Nunc commodo nulla id lorem venenatis, porttitor rhoncus elit.',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 18.0,
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
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        25.0, 25.0, 25.0, 26.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 7.0),
                          child: Text(
                            'How to get started ?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 15.0, 0.0),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare finibus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque mollis sed lacus a\nmolestie. Nunc commodo nulla id lorem venenatis, porttitor rhoncus elit.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 40.0, 0.0),
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare finibus cursus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque mollis sed lacus a molestie. Nunc commodo nulla id lorem venenatis, porttitor rhoncus elit.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(width: 30.0))
                            .addToStart(const SizedBox(width: 40.0)),
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'How to get\nstarted ?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
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
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Proin ornare finibus cursus. Vestibulum ante\nipsum primis in faucibus orci luctus et ultrices\nposuere cubilia curae; Quisque mollis sed lacus a\nmolestie. Nunc commodo nulla id lorem venenatis,\nporttitor rhoncus elit.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                          ),
                        ].divide(const SizedBox(width: 60.0)),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    child: Stack(
                      children: [
                        PageView(
                          controller: _model.pageViewController1 ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Stack(
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/henryli.jpeg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'ANSON ZHAO',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Director of Northern Horizon',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: const Color(
                                                                  0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                  decoration:
                                                      const BoxDecoration(),
                                                  child: Text(
                                                    '“Opting for Northern Horizon is the ideal decision for your\nchildren if you seek a direct and shortest path to their\nsuccessful careers.”',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(height: 20.0)),
                                            ),
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
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 200.0,
                                            height: 200.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/henryli.jpeg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'ANSON ZHAO',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 60.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  const SizedBox(
                                                    width: 380.0,
                                                    child: Divider(
                                                      thickness: 1.0,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Director of Northern Horizon',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xAAFFFFFF),
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 400.0,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: Text(
                                                  '“Opting for Northern Horizon is the ideal decision for your children if you seek a direct and shortest path to their successful careers.”',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 26.0,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                      ),
                                                ),
                                              ),
                                            ].divide(
                                                const SizedBox(height: 20.0)),
                                          ),
                                        ].divide(const SizedBox(width: 65.0)),
                                      ),
                                    ],
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Expanded(child: SizedBox()),
                                            Container(
                                              width: 200.0,
                                              height: 200.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.asset(
                                                'assets/images/henryli.jpeg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 9,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'ANSON ZHAO',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 60.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                      ConstrainedBox(
                                                          constraints:
                                                              const BoxConstraints(
                                                                  maxWidth: 35,
                                                                  minWidth: 8),
                                                          child: SizedBox(
                                                              width: max(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width /
                                                                          2 -
                                                                      690,
                                                                  0))),
                                                      Text(
                                                        'Director of Northern Horizon',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: const Color(
                                                                  0xaaffffff),
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '“Opting for Northern Horizon is the ideal decision for your\nchildren if you seek a direct and shortest path to their\nsuccessful careers.”',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(
                                                    height: 20.0)),
                                              ),
                                            ),
                                          ]),
                                    ],
                                  ),
                              ],
                            ),
                            ClipRRect(
                              child: Image.network(
                                'https://picsum.photos/seed/226/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              child: Image.network(
                                'https://picsum.photos/seed/541/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              child: Image.network(
                                'https://picsum.photos/seed/850/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              child: Image.network(
                                'https://picsum.photos/seed/905/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 16.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewController1 ??=
                                  PageController(initialPage: 0),
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
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 420.0,
                    child: Stack(
                      children: [
                        PageView(
                          controller: _model.pageViewController2 ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Stack(
                              children: [
                                if (responsiveVisibility(
                                  context: context,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 55.0, 0.0, 0.0),
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/henryli.jpeg',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'ANSON ZHAO',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Director of Northern Horizon',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: const Color(
                                                                  0xaaffffff),
                                                              fontSize: 17.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                  decoration:
                                                      const BoxDecoration(),
                                                  child: Text(
                                                    '“Opting for Northern Horizon is the ideal decision for your\nchildren if you seek a direct and shortest path to their\nsuccessful careers.”',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 17.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(height: 20.0)),
                                            ),
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
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 200.0,
                                            height: 200.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/henryli.jpeg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'ANSON ZHAO',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 60.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  const SizedBox(
                                                    width: 380.0,
                                                    child: Divider(
                                                      thickness: 1.0,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Director of Northern Horizon',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: const Color(
                                                              0xAAFFFFFF),
                                                          fontSize: 22.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 400.0,
                                                decoration:
                                                    const BoxDecoration(),
                                                child: Text(
                                                  '“Opting for Northern Horizon is the ideal decision for your children if you seek a direct and shortest path to their successful careers.”',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 26.0,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                      ),
                                                ),
                                              ),
                                            ].divide(
                                                const SizedBox(height: 20.0)),
                                          ),
                                        ].divide(const SizedBox(width: 65.0)),
                                      ),
                                    ],
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMHx8ZGFya3xlbnwwfHx8fDE3MDE0NDA3MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 200.0,
                                            height: 200.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'assets/images/henryli.jpeg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'ANSON ZHAO',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 60.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Director of Northern Horizon',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                '“Opting for Northern Horizon is the ideal decision for your\nchildren if you seek a direct and shortest path to their\nsuccessful careers.”',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                              ),
                                            ].divide(
                                                const SizedBox(height: 20.0)),
                                          ),
                                        ]
                                            .divide(const SizedBox(width: 25.0))
                                            .addToStart(
                                                const SizedBox(width: 100.0)),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://picsum.photos/seed/226/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://picsum.photos/seed/541/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://picsum.photos/seed/850/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                'https://picsum.photos/seed/905/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 16.0),
                            child: smooth_page_indicator.SmoothPageIndicator(
                              controller: _model.pageViewController2 ??=
                                  PageController(initialPage: 0),
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
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 20.0, 0.0, 20.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: MediaQuery.sizeOf(context).height * 0.76,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD0CECE),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/844/600',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.3,
                                      fit: BoxFit.cover,
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.37,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'PARTNERSHIP',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 60.0,
                                                letterSpacing: 11.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(2.0, 0.0, 2.0, 0.0),
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porttitor eros sed ullamcorper accumsan. Aenean condimentum, massa in dapibus tempor, leo velit feugiat dui, nec tristique tortor erat ut nisl.',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 21.0,
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0.0, 0.0, 0.0, 11.0),
                                            child: SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController1,
                                                focusNode:
                                                    _model.textFieldFocusNode1,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Mail',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.black,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  suffixIcon: const Icon(
                                                    Icons.mail,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 1.0,
                                                          lineHeight: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                textAlign: TextAlign.start,
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 22.0))
                                          .addToStart(
                                              const SizedBox(height: 25.0)),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  desktop: false,
                                ))
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.37,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'PARTNERSHIP',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 25.0,
                                                letterSpacing: 8.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(2.0, 0.0, 2.0, 0.0),
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin porttitor eros sed ullamcorper accumsan. Aenean condimentum, massa in dapibus tempor, leo velit feugiat dui, nec tristique tortor erat ut nisl.',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(0.0, 0.0, 0.0, 11.0),
                                            child: SizedBox(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.55,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController2,
                                                focusNode:
                                                    _model.textFieldFocusNode2,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Mail',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide:
                                                        const BorderSide(
                                                      color: Colors.black,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  suffixIcon: const Icon(
                                                    Icons.mail,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 1.0,
                                                          lineHeight: 1.0,
                                                          color: Colors.black,
                                                        ),
                                                textAlign: TextAlign.start,
                                                validator: _model
                                                    .textController2Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 15.0))
                                          .addToStart(
                                              const SizedBox(height: 25.0)),
                                    ),
                                  ),
                              ].divide(const SizedBox(height: 20.0)),
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
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
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
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
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
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
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w200,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
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
                                    const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 25.0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 25.0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 25.0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.white,
                                          size: 30.0,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
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
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
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
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
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
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 0.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            fontWeight: FontWeight.w200,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'Hello World',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
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
                        const Align(
                          alignment: AlignmentDirectional(-1.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                80.0, 0.0, 0.0, 25.0),
                            child: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(1.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 80.0, 25.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
