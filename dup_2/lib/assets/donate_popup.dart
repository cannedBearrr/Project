import 'dart:ui';

import 'package:dup_2/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../pages/donate_page/donate_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class DonateDialog extends StatefulWidget {
  const DonateDialog({super.key});

  @override
  State<StatefulWidget> createState() => _DonateWidgetState();
}

class _DonateWidgetState extends State<DonateDialog> {
  final moneyController = MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',', leftSymbol: '\$');

  int selected = 0;
  double t = 0;
  bool otherexp = false;
  double m = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: (responsiveVisibility(context: context, phone: false)) ? 40 : 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22.0),
            child: Text(
              'Select donation amount',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontSize: (responsiveVisibility(context: context, phone: false)) ? 38 : 28,
                    lineHeight: 1.12,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          TweenAnimationBuilder<double>(
            key: UniqueKey(),
            curve: Curves.easeOutSine,
            tween: Tween<double>(begin: 0, end: t),
            duration: const Duration(milliseconds: 500),
            builder: (BuildContext context, double v, Widget? child) {
              if (MediaQuery.sizeOf(context).width >= 950) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        flex: 500,
                        child: SizedBox(
                            height: 100,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xffa30034),
                                  backgroundColor: (selected == 1)
                                      ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                      : Colors.transparent,
                                  side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                  shape:
                                      const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                ),
                                onPressed: () {
                                  if (selected != 1) {
                                    m = 1;
                                    otherexp = selected == 4;
                                    selected = 1;
                                    t = 1;
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  "\$1",
                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                        fontSize: 20,
                                        color: (selected == 1) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                      ),
                                )))),
                    Expanded(
                        flex: 500,
                        child: SizedBox(
                            height: 100,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xffa30034),
                                  backgroundColor: (selected == 2)
                                      ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                      : Colors.transparent,
                                  side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                  shape:
                                      const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                ),
                                onPressed: () {
                                  if (selected != 2) {
                                    m = 5;
                                    otherexp = selected == 4;
                                    selected = 2;
                                    t = 1;
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  "\$5",
                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                        fontSize: 20,
                                        color: (selected == 2) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                      ),
                                )))),
                    Expanded(
                        flex: 500,
                        child: SizedBox(
                            height: 100,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: const Color(0xffa30034),
                                  backgroundColor: (selected == 3)
                                      ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                      : Colors.transparent,
                                  side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                  shape:
                                      const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                ),
                                onPressed: () {
                                  if (selected != 3) {
                                    m = 10;
                                    otherexp = selected == 4;
                                    selected = 3;
                                    t = 1;
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  "\$10",
                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                        fontSize: 20,
                                        color: (selected == 3) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                      ),
                                )))),
                    Expanded(
                        flex: lerpDouble(
                                500,
                                1000,
                                (selected == 4)
                                    ? v
                                    : (otherexp)
                                        ? t - v
                                        : 0)!
                            .round(),
                        child: SizedBox(
                          height: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: const Color(0xffa30034),
                                backgroundColor: (selected == 4)
                                    ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                    : Colors.transparent,
                                side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                              ),
                              onPressed: () {
                                if (selected != 4) {
                                  otherexp = true;
                                  selected = 4;
                                  t = 1;
                                  setState(() {});
                                }
                              },
                              child: UnconstrainedBox(
                                clipBehavior: Clip.hardEdge,
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      (selected == 4) ? "other amount: " : "other amount",
                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                            fontSize: 20,
                                            color: (selected == 4) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                          ),
                                    ),
                                    if (selected == 4)
                                      IntrinsicWidth(
                                          child: TextField(
                                            autofocus: true,
                                              inputFormatters: [
                                            LengthLimitingTextInputFormatter(9),
                                          ],
                                              controller: moneyController,
                                              decoration: const InputDecoration(
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.white70),
                                                ),
                                                focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.white38),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context).bodySmall.override(fontSize: 20, color: Colors.white),
                                          onChanged: (value) {
                                                m = double.parse(value.replaceAll(RegExp(r'[$,]'), ''));
                                                print(m);
                                          },
                                          )),
                                  ],
                                ),
                              )),
                        )),
                  ].divide(const SizedBox(width: 22)),
                );
              }
              if (MediaQuery.sizeOf(context).width < 950) {
                return Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            child: SizedBox(
                                height: (responsiveVisibility(context: context, phone: false)) ? 100 : 70,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: const Color(0xffa30034),
                                      backgroundColor: (selected == 1)
                                          ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                          : Colors.transparent,
                                      side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                    ),
                                    onPressed: () {
                                      if (selected != 1) {
                                        m = 1;
                                        selected = 1;
                                        t = 1;
                                        setState(() {});
                                      }
                                    },
                                    child: OverflowBox(
                                      maxWidth: double.infinity,
                                      child: Text(
                                        "\$1",
                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                              fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                              color: (selected == 1) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                            ),
                                      ),
                                    )))),
                        Expanded(
                            child: SizedBox(
                                height: (responsiveVisibility(context: context, phone: false)) ? 100 : 70,
                                child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: const Color(0xffa30034),
                                      backgroundColor: (selected == 2)
                                          ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                          : Colors.transparent,
                                      side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                    ),
                                    onPressed: () {
                                      if (selected != 2) {
                                        m = 5;
                                        selected = 2;
                                        t = 1;
                                        setState(() {});
                                      }
                                    },
                                    child: OverflowBox(
                                      maxWidth: double.infinity,
                                      child: Text(
                                        "\$5",
                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                              fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                              color: (selected == 2) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                            ),
                                      ),
                                    )))),
                        Expanded(
                            child: SizedBox(
                                height: (responsiveVisibility(context: context, phone: false)) ? 100 : 70,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: const Color(0xffa30034),
                                    backgroundColor: (selected == 3)
                                        ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                        : Colors.transparent,
                                    side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                    shape:
                                        const RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                  ),
                                  onPressed: () {
                                    if (selected != 3) {
                                      m = 10;
                                      selected = 3;
                                      t = 1;
                                      setState(() {});
                                    }
                                  },
                                  child: OverflowBox(
                                    maxWidth: double.infinity,
                                    child: Text(
                                      "\$10",
                                      style: FlutterFlowTheme.of(context).bodySmall.override(
                                            fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                            color: (selected == 3) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                          ),
                                    ),
                                  ),
                                ))),
                      ].divide(SizedBox(width: (responsiveVisibility(context: context, phone: false)) ? 22 : 19)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top: (responsiveVisibility(context: context, phone: false)) ? 22 : 19),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                              child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minHeight: (responsiveVisibility(context: context, phone: false)) ? 100 : 70,
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: const Color(0xffa30034),
                                      backgroundColor: (selected == 4)
                                          ? Color.lerp(const Color(0x40a30034), const Color(0xffa30034), v)
                                          : Colors.transparent,
                                      side: const BorderSide(width: 1.0, color: Color(0xffa30034)),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))),
                                    ),
                                    onPressed: () {
                                      if (selected != 4) {
                                        selected = 4;
                                        t = 1;
                                        setState(() {});
                                      }
                                    },
                                    child: Stack(
                                      children: [
                                        if (responsiveVisibility(context: context, phone: false))
                                          UnconstrainedBox(
                                            clipBehavior: Clip.hardEdge,
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Text(
                                                  (selected == 4) ? "other amount: " : "other amount",
                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                        fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                                        color:
                                                            (selected == 4) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                                      ),
                                                ),
                                                if (selected == 4)
                                                  IntrinsicWidth(
                                                      child: TextField(
                                                        autofocus: true,
                                                          inputFormatters: [
                                                        LengthLimitingTextInputFormatter(9),
                                                      ],
                                                          controller: moneyController,
                                                          decoration: const InputDecoration(
                                                            enabledBorder: UnderlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.white70),
                                                            ),
                                                            focusedBorder: UnderlineInputBorder(
                                                              borderSide: BorderSide(color: Colors.white38),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme.of(context).bodySmall.override(
                                                              fontSize:
                                                                  (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                                              color: Colors.white),
                                                        onChanged: (value) {
                                                          m = double.parse(value.replaceAll(RegExp(r'[$,]'), ''));
                                                          print(m);
                                                        },
                                                      )),
                                              ],
                                            ),
                                          ),
                                        if (responsiveVisibility(context: context, tablet: false, tabletLandscape: false))
                                          Column(
                                            children: [
                                              if (selected == 4) SizedBox(height: 20),
                                              Text(
                                                (selected == 4) ? "other amount: " : "other amount",
                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                      lineHeight: 0.5,
                                                      fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                                      color:
                                                          (selected == 4) ? Color.lerp(Colors.black, Colors.white, v) : Colors.black,
                                                    ),
                                              ),
                                              if (selected == 4)
                                                IntrinsicWidth(
                                                    child: TextField(
                                                        inputFormatters: [
                                                      LengthLimitingTextInputFormatter(9),
                                                    ],
                                                        controller: moneyController,
                                                        decoration: const InputDecoration(
                                                          isDense: true,
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white70),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white38),
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                            fontSize: (responsiveVisibility(context: context, phone: false)) ? 20 : 18,
                                                            color: Colors.white),
                                                      onChanged: (value) {
                                                        m = double.parse(value.replaceAll(RegExp(r'[$,]'), ''));
                                                        print(m);
                                                      },
                                                    )),
                                              if (selected == 4) SizedBox(height: 15),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                );
              }
              throw UnimplementedError('This is mathematically impossible');
            },
          ),
          if (selected != 0) ...[
            TweenAnimationBuilder<double>(
              curve: Curves.easeOutSine,
              tween: Tween<double>(begin: 0, end: t),
              duration: const Duration(milliseconds: 200),
              builder: (BuildContext context, double v, Widget? child) {
                return SizedBox(
                  child: Opacity(
                    opacity: v,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ConstrainedBox(constraints: BoxConstraints(maxHeight: v*22), child: const SizedBox(height: 22)),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: v*35),
                          child: FilledButton(
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DonatePageWidget(m: m),
                                    ));
                                },
                              style: OutlinedButton.styleFrom(backgroundColor: const Color(0xFF1F4477),),
                              child: Text(
                                'Continue',
                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                      color: Colors.white,
                                    ),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
          const SizedBox(height: 24)
        ],
      ),
    );
  }
}
