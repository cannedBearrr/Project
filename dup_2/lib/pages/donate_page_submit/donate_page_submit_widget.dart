import 'package:dup_2/index.dart';
import 'package:flutter/cupertino.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonatePageSubmitWidget extends StatelessWidget {
  const DonatePageSubmitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Thank you for your donation. Expect up to 1 business day for your card to be charged.', style: FlutterFlowTheme.of(context).bodyMedium, textAlign: TextAlign.center,),
            ),
            const SizedBox(height: 15,),
            FilledButton(onPressed: () => context.pushNamed("parentPortal"), child: Text("Back to home", style: FlutterFlowTheme.of(context).bodyMedium.override(
              color: Colors.white,
            ),),
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xFF1F4477),
            ),
            )
          ],
        ),
      ),
    );
  }


}