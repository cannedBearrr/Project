import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class DonateDialog extends StatefulWidget {
  const DonateDialog({super.key});

  @override
  State<StatefulWidget> createState() => _DonateWidgetState();
}

class _DonateWidgetState extends State<DonateDialog> {
  int selected = 0;
  double t = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text(
              'Select donation amount',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontSize: 38,
                  ),
            ),
          ),
          TweenAnimationBuilder<double>(
            key: UniqueKey(),
            curve: Curves.easeOutSine,
            tween: Tween<double>(begin: 0, end: t),
            duration: Duration(milliseconds: 500),
            builder: (BuildContext context, double v, Widget? child) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Color(0xff61004b),
                                backgroundColor: (selected == 1) ? Color.lerp(Color(0x4061004b), Color(0xff61004b), v) : Colors.transparent,
                                side: BorderSide(width: 1.0, color: Color(0xff61004b)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                              ),
                              onPressed: () => setState(() {
                                selected = 1;
                                t = 1;
                              }),
                              child: Text(
                                "\$1",
                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                  fontSize: 20,
                                  color: (selected == 1) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                ),
                              )))),
                  Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Color(0xff61004b),
                                backgroundColor: (selected == 2) ? Color.lerp(Color(0x4061004b), Color(0xff61004b), v) : Colors.transparent,
                                side: BorderSide(width: 1.0, color: Color(0xff61004b)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                              ),
                              onPressed: () => setState(() {
                                selected = 2;
                                t = 1;
                              }),
                              child: Text(
                                "\$5",
                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                  fontSize: 20,
                                  color: (selected == 2) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                ),
                              )))),
                  Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Color(0xff61004b),
                                backgroundColor: (selected == 3) ? Color.lerp(Color(0x4061004b), Color(0xff61004b), v) : Colors.transparent,
                                side: BorderSide(width: 1.0, color: Color(0xff61004b)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                              ),
                              onPressed: () => setState(() {
                                selected = 3;
                                t = 1;
                              }),
                              child: Text(
                                "\$10",
                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                  fontSize: 20,
                                  color: (selected == 3) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                ),
                              )))),
                  Expanded(
                      flex: 10,
                      child: SizedBox(
                          height: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Color(0xff61004b),
                                backgroundColor: (selected == 4) ? Color.lerp(Color(0x4061004b), Color(0xff61004b), v) : Colors.transparent,
                                side: BorderSide(width: 1.0, color: Color(0xff61004b)),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                              ),
                              onPressed: () => setState(() {
                                selected = 4;
                                t = 1;
                              }),
                              child: Text(
                                "other amount",
                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                  fontSize: 20,
                                    color: (selected == 4) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                ),
                              )))),
                ].divide(Spacer()),
              );
            },
          ),
          SizedBox(height: 24)
        ],
      ),
    );
  }
}
