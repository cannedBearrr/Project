import 'package:url_launcher/url_launcher.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.sizeOf(context).width;

    return Stack(
      children: [
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
                          child: GestureDetector(
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
                                child: GestureDetector(
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
                                  child: GestureDetector(
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
      ],
    );
  }

}