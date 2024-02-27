import 'package:http/http.dart' as http;
import 'package:sticky_headers/sticky_headers.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'career_page_model.dart';
export 'career_page_model.dart';

String? job;

Future<http.Response> sendEmail(String email, String? job) {
  return http.post(
    Uri.parse('http://129.213.117.186/email.php'),
    headers: <String, String>{'Access-Control-Allow-Origin': "*", 'Content-Type': 'application/json'},
    body: jsonEncode(<String, String?>{
      'email': email,
      'job': job,
    }),
  );
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.moveTo(60, height * 0.8);
    path.lineTo(60, height - 24);
    path.arcToPoint(Offset(60 + 24, height), radius: const Radius.circular(24), clockwise: false);
    path.lineTo(width - 60 - 24, height);
    path.arcToPoint(Offset(width - 60, height - 24), radius: const Radius.circular(24), clockwise: false);
    path.lineTo(width - 60, height * 0.8);
    path.conicTo(width - 60, 60, width, 0, 1);
    path.lineTo(0, 0);
    path.conicTo(60, 60, 60, height * 0.8, 1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class EmailDialog extends StatefulWidget {
  const EmailDialog({super.key, this.job});

  final String? job;

  @override
  State<StatefulWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailDialog> {

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  bool isEmailSent = false;

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

  Future<bool>? resetForm() {
    Future.delayed(const Duration(seconds: 10), () {
      _formKey.currentState?.reset();
      setState(() {
        isEmailSent = false;
      });
      Navigator.pop(context);
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(12.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 150),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25),
            Text('In order to apply, please verify your email', style: FlutterFlowTheme.of(context).bodyLarge,),
            SizedBox(height: 7),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.8,
              child: Form(
                key: _formKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onFieldSubmitted: (value) async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        sendEmail(value, job);
                        isEmailSent = true;
                      });
                      _controller.clear();
                      await resetForm();
                    }
                  },
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: isEmailSent ? 'Sent' : 'Submit mail for enrollment form',
                    labelStyle: FlutterFlowTheme.of(context).labelMedium,
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    errorStyle: FlutterFlowTheme.of(context).labelSmall.override(
                      color: Color(0xffbd434a),
                    ),
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
                        color: Color(0xffbd434a),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffd60035),
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
                    fontFamily: 'Readex Pro',
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
            SizedBox(height: 2),
            Text(isEmailSent ? 'Nice! A confirmation email was sent to you and will expire in 30 minutes.' : '', style: FlutterFlowTheme.of(context).bodySmall.override(
              color: Colors.green,
            ),),
          ],
        ),
      ),
    );
  }
}

class CareerPageWidget extends StatefulWidget {
  const CareerPageWidget({super.key});

  @override
  State<CareerPageWidget> createState() => _CareerPageWidgetState();
}

class _CareerPageWidgetState extends State<CareerPageWidget> {
  late CareerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CareerPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  List<bool> exp1 = [false, false, false, false];
  bool _exp1 = false;
  List<bool> exp2 = [false, false, false];
  bool _exp2 = false;
  List<bool> exp3 = [false, false, false, false];
  bool _exp3 = false;
  List<bool> exp4 = [false, false, false, false, false, false, false];
  bool _exp4 = false;

  @override
  Widget build(BuildContext context) {
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
                                    context.pushNamed('pastProjects');
                                  },
                                  child: Text(
                                    'PAST PROJECTS',
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
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/693/600',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primaryBackground,
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
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/795/600',
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primaryBackground,
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
                  ))
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1624696941338-934bf86c28b4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8bWVjaGFuaWNhbCUyMGtleWJvYXJkfGVufDB8fHx8MTcwODc4NDgxOXww&ixlib=rb-4.0.3&q=80&w=1080',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://picsum.photos/seed/55/600',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                      ),
                                ),
                                Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.55 + 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Software Developer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '2 years of experience with software development in one or more programming languages, or 1 year of experience with an advanced degree',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '2 years of experience with data structures or algorithms in either an academic or industry setting',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            if (exp1[0]) ...[
                                              SizedBox(height: 4),
                                              Text(
                                                'Preferred qualifications',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                            if (exp1[1]) ...[
                                              const SizedBox(height: 4),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Master\'s degree or PhD in Computer Science or related technical field',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            ],
                                            if (exp1[2])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        '2 years of experience with front-end frameworks, full-stack development, and/or API development',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp1[3])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience developing accessible technologies',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp1 = !_exp1;
                                              for (int i = 0; i < exp1.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp1) {
                                                    print(i);
                                                    exp1[i] = !exp1[i];
                                                  } else {
                                                    print(exp1.length - i - 1);
                                                    exp1[exp1.length - i - 1] = !exp1[exp1.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp1 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                  surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Software Developer'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.55 + 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Graphic Designer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 4),
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'At least 3 years of graphic design experience with strong portfolio',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Excellent communication and interpersonal skills',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Strong attention to detail and ability to meet deadlines',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            if (exp2[0]) ...[
                                              SizedBox(height: 4),
                                              Text(
                                                'Preferred qualifications',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                            if (exp2[1]) ...[
                                              const SizedBox(height: 4),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        '5+ years experience in production and graphic design',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            ],
                                            if (exp2[2])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Expert knowledge of Adobe Creative Suite (InDesign, Illustrator, Photoshop), and/or Microsoft Office',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp2 = !_exp2;
                                              for (int i = 0; i < exp2.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp2) {
                                                    print(i);
                                                    exp2[i] = !exp2[i];
                                                  } else {
                                                    print(exp2.length - i - 1);
                                                    exp2[exp2.length - i - 1] = !exp2[exp2.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp2 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Graphic Designer'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.55 + 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Sales Manager',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 4),
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor’s degree or equivalent practical experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '5 years of experience leading and managing a team',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Experience engaging with accounts, selling a portfolio of products at C-level',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            if (exp3[0]) ...[
                                              SizedBox(height: 4),
                                              Text(
                                                'Preferred qualifications',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                              ),
                                            ],
    if (exp3[1]) ...[
                                              const SizedBox(height: 4),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience leading a team of sellers working with customers that span multiple industries and aligning technology solutions to drive high value business outcomes',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),],
                                            if (exp3[2])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience leveraging cross-functional leaders including engineering, marketing, partner sales managers, external partners, and solution specialists to build and implement business strategies that yield positive outcomes and results',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp3[3])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Knowledge of startup customers and the differentiated value that Nothern Horizon can provide in this industry',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),

                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp3 = !_exp3;
                                              for (int i = 0; i < exp3.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp3) {
                                                    print(i);
                                                    exp3[i] = !exp3[i];
                                                  } else {
                                                    print(exp3.length - i - 1);
                                                    exp3[exp3.length - i - 1] = !exp3[exp3.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp3 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Sales Manager'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 40.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.55 + 200,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipPath(
                                    clipper: CustomShape(),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://picsum.photos/seed/307/600',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 450,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Marketing Director',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 60.0,
                                    endIndent: 60.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(60.0, 10.0, 0.0, 15.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 4),
                                            Text(
                                              'Minimum qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            const SizedBox(height: 4),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Bachelor\'s degree or equivalent experience',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      '4 years of experience in marketing',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                      padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                  Flexible(
                                                    child: Text(
                                                      'Experience managing cross-functional or cross-team projects',
                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                            fontSize: 15,
                                                            lineHeight: 1.17,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 5)),
                                              ),
                                            ),
                                            if (exp4[0]) ...[
                                              SizedBox(height: 4),
                                              Text(
                                                'Preferred qualifications',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                              if (exp4[1]) ...[
                                              const SizedBox(height: 4),
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience translating complex ideas and making them human and relatable',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                              ],
                                            if (exp4[2])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience working with product/product marketing disciplines',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp4[3])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience working with creative agencies',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp4[4])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience in program management',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp4[5])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience managing cross-functional teams and stakeholders',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),
                                            if (exp4[6])
                                              Padding(
                                                padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 35, 0),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                        padding: EdgeInsets.only(top: 8), child: Icon(Icons.circle_sharp, size: 5)),
                                                    Flexible(
                                                      child: Text(
                                                        'Experience landing marketing programs across global, regional, and local audiences',
                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                              fontSize: 16,
                                                              lineHeight: 1.17,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(const SizedBox(width: 5)),
                                                ),
                                              ),

                                          ].divide(const SizedBox(height: 5.0))),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp4 = !_exp4;
                                              for (int i = 0; i < exp4.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp4) {
                                                    print(i);
                                                    exp4[i] = !exp4[i];
                                                  } else {
                                                    print(exp4.length - i - 1);
                                                    exp4[exp4.length - i - 1] = !exp4[exp4.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp4 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Marketing Director'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15)),
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
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 17.0, 0.0, 0.0),
                                      child: Text(
                                        'Software Developer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 24.5,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 25.0,
                                    endIndent: 25.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Minimum qualifications',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Bachelor’s degree or equivalent practical experience',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  '2 years of experience with software development in one or more programming languages, or 1 year of experience with an advanced degree',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  '2 years of experience with data structures or algorithms in either an academic or industry setting',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (exp1[0])
                                            Text(
                                              'Preferred qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          if (exp1[1])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Master\'s degree or PhD in Computer Science or related technical field',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontSize: 14,
                                                          lineHeight: 1.15,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp1[2])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    '2 years of experience with front-end frameworks, full-stack development, and/or API development',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontSize: 14,
                                                          lineHeight: 1.15,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp1[3])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience developing accessible technologies',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontSize: 14,
                                                          lineHeight: 1.15,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ].divide(const SizedBox(height: 6)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp1 = !_exp1;
                                              for (int i = 0; i < exp1.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp1) {
                                                    print(i);
                                                    exp1[i] = !exp1[i];
                                                  } else {
                                                    print(exp1.length - i - 1);
                                                    exp1[exp1.length - i - 1] = !exp1[exp1.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp1 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white70,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Software Developer'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 17.0, 0.0, 0.0),
                                      child: Text(
                                        'Graphic Designer',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 24.5,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 25.0,
                                    endIndent: 25.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Minimum qualifications',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Bachelor’s degree or equivalent practical experience',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'At least 3 years of graphic design experience with strong portfolio',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Excellent communication and interpersonal skills',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  '5+ years experience in production and graphic design',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (exp2[0])
                                            Text(
                                              'Preferred qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          if (exp2[1])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Master\'s degree or PhD in Computer Science or related technical field',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp2[2])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Expert knowledge of Adobe Creative Suite (InDesign, Illustrator, Photoshop), and/or Microsoft Office',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ].divide(const SizedBox(height: 6)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp2 = !_exp2;
                                              for (int i = 0; i < exp2.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp2) {
                                                    print(i);
                                                    exp2[i] = !exp2[i];
                                                  } else {
                                                    print(exp2.length - i - 1);
                                                    exp2[exp2.length - i - 1] = !exp2[exp2.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp2 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white70,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Graphic Designer'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 17.0, 0.0, 0.0),
                                      child: Text(
                                        'Sales Manager',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 24.5,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 25.0,
                                    endIndent: 25.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Minimum qualifications',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Bachelor’s degree or equivalent practical experience',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  '5 years of experience leading and managing a team',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Experience engaging with accounts, selling a portfolio of products at C-level',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (exp3[0])
                                            Text(
                                              'Preferred qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          if (exp3[1])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience leading a team of sellers working with customers that span multiple industries and aligning technology solutions to drive high value business outcomes',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp3[2])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience leveraging cross-functional leaders including engineering, marketing, partner sales managers, external partners, and solution specialists to build and implement business strategies that yield positive outcomes and results',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp3[3])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Knowledge of startup customers and the differentiated value that Northern Horizon can provide in this industry',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ].divide(const SizedBox(height: 6)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp3 = !_exp3;
                                              for (int i = 0; i < exp3.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp3) {
                                                    print(i);
                                                    exp3[i] = !exp3[i];
                                                  } else {
                                                    print(exp3.length - i - 1);
                                                    exp3[exp3.length - i - 1] = !exp3[exp3.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp3 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white70,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Sales Manager'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 25.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network(
                                    'https://picsum.photos/seed/328/600',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 250,
                                    fit: BoxFit.cover,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 17.0, 0.0, 0.0),
                                      child: Text(
                                        'Marketing Director',
                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontSize: 24.5,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    height: 0,
                                    indent: 25.0,
                                    endIndent: 25.0,
                                    color: FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 25.0, 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Minimum qualifications',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Bachelor\'s degree or equivalent experience',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  '4 years of experience in marketing',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                  child: Icon(Icons.circle_sharp, size: 4)),
                                              Flexible(
                                                child: Text(
                                                  'Experience managing cross-functional or cross-team projects',
                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                        fontSize: 14,
                                                        lineHeight: 1.15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (exp4[0])
                                            Text(
                                              'Preferred qualifications',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          if (exp4[1])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience translating complex ideas and making them human and relatable',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp4[2])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience working with product/product marketing disciplines',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp4[3])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience working with creative agencies',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp4[4])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience in program management',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp4[5])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience managing cross-functional teams and stakeholders',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          if (exp4[6])
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 3.0, 0.0),
                                                    child: Icon(Icons.circle_sharp, size: 4)),
                                                Flexible(
                                                  child: Text(
                                                    'Experience landing marketing programs across global, regional, and local audiences',
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontSize: 14,
                                                      lineHeight: 1.15,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                        ].divide(const SizedBox(height: 6)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              _exp4 = !_exp4;
                                              for (int i = 0; i < exp4.length; i++) {
                                                Future.delayed(Duration(milliseconds: i*10), () {
                                                  if (_exp4) {
                                                    print(i);
                                                    exp4[i] = !exp4[i];
                                                  } else {
                                                    print(exp4.length - i - 1);
                                                    exp4[exp4.length - i - 1] = !exp4[exp4.length - i - 1];
                                                  }
                                                  setState(() {});
                                                });
                                              }
                                            },
                                            text: _exp4 ? 'Read Less' : 'Read More',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white70,
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () => showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => const Dialog(
                                                shape: ContinuousRectangleBorder(),
                                                surfaceTintColor: Colors.grey,
                                                child: EmailDialog(job: 'Marketing Director'),
                                              ),
                                            ),
                                            text: 'APPLY NOW',
                                            options: FFButtonOptions(
                                              height: 35.0,
                                              padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF1F4477),
                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius: BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 10)),
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
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 15.0),
                              child: Image.asset(
                                'assets/images/linkedin.png',
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                              child: Image.asset(
                                'assets/images/facebook.png',
                                height: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 80.0, 15.0),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
