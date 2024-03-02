
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'partnership_with_companies_model.dart';
export 'partnership_with_companies_model.dart';

class PartnershipWithCompaniesWidget extends StatefulWidget {
  const PartnershipWithCompaniesWidget({super.key});

  @override
  _PartnershipWithCompaniesWidgetState createState() => _PartnershipWithCompaniesWidgetState();
}

class _PartnershipWithCompaniesWidgetState extends State<PartnershipWithCompaniesWidget> {
  late PartnershipWithCompaniesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartnershipWithCompaniesModel());
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
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/DSC_1614.webp',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                                alignment: const AlignmentDirectional(0.0, -0.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: FittedBox(
                                    child: Container(
                                      height: 150,
                                      padding: const EdgeInsets.all(18.0),
                                      decoration: BoxDecoration(
                                        color: const Color(0x00FFFFFF),
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'PREVIOUS\nPROJECTS',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                
                                                color: const Color(0xFFFFD34C),
                                                fontSize: 38.0,
                                                letterSpacing: 10.0,
                                                fontWeight: FontWeight.w900,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  // child: Image.asset(
                                  //   'assets/images/DSC_1614.webp',
                                  //   width: double.infinity,
                                  //   height: MediaQuery.sizeOf(context).height * 0.5,
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Expanded(
                                      flex: 4,
                                      child: Image.asset(
                                          'assets/images/USGS.png',
                                      ),
                                    ), // Replace 'assets/logo1.png' with the actual path to your logo image// Adjust the height between logos as needed
                                    Expanded(
                                      flex: 4,
                                      child: Image.asset(
                                          'assets/images/NASA.png',
                                      ),
                                    ), // Replace 'assets/logo2.png' with the actual path to your logo image// Adjust the height between logos as needed
                                    Expanded(
                                      flex: 4,
                                      child: Image.asset(
                                          'assets/images/UN.png',
                                      ),
                                    ), // Replace 'assets/logo3.png' with the actual path to your logo image
                                  ].divide(const Spacer()).addToStart(const Spacer()).addToEnd(const Spacer()),
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
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/DSC_1614.webp',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.6,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Stack(
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.55,
                                height: MediaQuery.sizeOf(context).height * 0.2,
                                decoration: BoxDecoration(
                                  color: const Color(0x00FFFFFF),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'PREVIOUS PROJECTS',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  
                                                  color: Colors.white,
                                                  fontSize: MediaQuery.sizeOf(context).width * 0.1 - MediaQuery.sizeOf(context).width * 0.05 - 2,
                                                ),
                                          ),
                                        ),
                                      ),
                                      // Text(
                                      //   'we may use this line',
                                      //   style: FlutterFlowTheme.of(context).bodyMedium.override(
                                      //         
                                      //         color: Color(0xFF1F4477),
                                      //         fontSize: 70.0,
                                      //         fontWeight: FontWeight.bold,
                                      //       ),
                                      // ),
                                    ].addToStart(const SizedBox(height: 10.0)),
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
                  ))
                    Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1604147706283-d7119b5b822c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx3aGl0ZXxlbnwwfHx8fDE3MDA1MDI0NDF8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Spacer(flex: 2),
                                    Expanded(flex: 3, child: Image.asset('assets/images/NASA.png')),
                                    const Spacer(),
                                    Expanded(flex: 3, child: Image.asset('assets/images/USGS.png')),
                                    const Spacer(),
                                    Expanded(flex: 3, child: Image.asset('assets/images/UN.png')),
                                    const Spacer(flex: 2),
                                  ],
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
        ),
      ),
    );
  }
}
