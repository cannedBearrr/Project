import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DonatePageWidget extends StatefulWidget {
  const DonatePageWidget({super.key, required this.m});

  final double m;

  @override
  State<DonatePageWidget> createState() => _DonatePageWidgetState(m);
}

var dateFormatter = MaskTextInputFormatter(
  mask: '##/##',
  filter: {"#": RegExp(r'[0-9]')},
  type: MaskAutoCompletionType.lazy,
);

class CCFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write(' '); // Replace this with anything you want to put after each 4 numbers
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(text: string, selection: TextSelection.collapsed(offset: string.length));
  }
}

class _DonatePageWidgetState extends State<DonatePageWidget> {

  final double m;
  _DonatePageWidgetState(this.m);
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nController = TextEditingController();
  final TextEditingController aController1 = TextEditingController();
  final TextEditingController aController2 = TextEditingController();
  final TextEditingController aController3 = TextEditingController();
  final TextEditingController aController4 = TextEditingController();
  final TextEditingController aController5 = TextEditingController();
  final TextEditingController aController6 = TextEditingController();

  NumberFormat formatter = NumberFormat("#,##0.00");

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.

    nController.dispose();
    aController1.dispose();
    aController2.dispose();
    aController3.dispose();
    aController4.dispose();
    aController5.dispose();
    aController6.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: (MediaQuery.sizeOf(context).width > 1260) ? MediaQuery.sizeOf(context).width * 0.25 : (MediaQuery.sizeOf(context).width > 740) ? MediaQuery.sizeOf(context).width * 0.5 - 315 : min(-45 + MediaQuery.sizeOf(context).width / 4, 55), vertical: 40),
            child: Stack(
              children: [
                if (MediaQuery.sizeOf(context).width > 666)
                Positioned(
                  top: 20,
                  right: 0,
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF1F4477),
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          nController.text,
                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Text(
                          aController1.text,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        if (aController2.text.isNotEmpty)
                          Text(
                            aController2.text,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        Text(
                          aController3.text +
                              ((aController3.text.isNotEmpty && aController4.text.isNotEmpty) ? ", " : "") +
                              ((aController3.text.isNotEmpty && aController4.text.isEmpty && aController5.text.isNotEmpty) ? "${aController4.text} " : aController4.text) +
                              ((aController4.text.isNotEmpty && aController5.text.isNotEmpty) ? " " : "") +
                              aController5.text,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Text(
                          aController6.text,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        const Spacer(),
                        Text(
                          'Total: \$${formatter.format(m)}',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: const Offset(-25, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
                                context.pop();
                                context.pop();
                              }
                              ),
                              const SizedBox(width: 4,),
                              Text(
                                'Enter card details',
                                style: FlutterFlowTheme.of(context).headlineLarge,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 180,
                          child: TextFormField(
                            controller: nController,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(100),
                            ],
                            decoration: InputDecoration(
                                isDense: true,
                                label: RichText(
                                  text: TextSpan(
                                      text: 'Name on card',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                      children: [
                                        TextSpan(
                                            text: ' *',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  color: Colors.red.shade900,
                                                  fontWeight: FontWeight.w500,
                                                ))
                                      ]),
                                ),
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                      fontSize: 11,
                                      color: Colors.red.shade900,
                                    )),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            onChanged: (value) => setState(() {}),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 220,
                          child: TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CCFormatter(),
                              LengthLimitingTextInputFormatter(26),
                            ],
                            decoration: InputDecoration(
                                isDense: true,
                                label: RichText(
                                  text: TextSpan(
                                      text: 'Credit card number',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                      children: [
                                        TextSpan(
                                            text: ' *',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  color: Colors.red.shade900,
                                                  fontWeight: FontWeight.w500,
                                                ))
                                      ]),
                                ),
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                      fontSize: 11,
                                      color: Colors.red.shade900,
                                    )),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 85,
                              child: TextFormField(
                                inputFormatters: [
                                  dateFormatter,
                                ],
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'Exp. date',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    hintText: 'MM/YY',
                                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                          color: Colors.black45,
                                        ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            SizedBox(
                              width: 45,
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(3),
                                ],
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'CVC',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Text('Billing address',
                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            controller: aController1,
                            decoration: InputDecoration(
                                isDense: true,
                                label: RichText(
                                  text: TextSpan(
                                      text: 'Address line 1',
                                      style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                      children: [
                                        TextSpan(
                                            text: ' *',
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  color: Colors.red.shade900,
                                                  fontWeight: FontWeight.w500,
                                                ))
                                      ]),
                                ),
                                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                      fontSize: 11,
                                      color: Colors.red.shade900,
                                    )),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            onChanged: (value) => setState(() {}),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            controller: aController2,
                            decoration: InputDecoration(
                              isDense: true,
                              label: RichText(
                                text: TextSpan(
                                  text: 'Address line 2',
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            onChanged: (value) => setState(() {}),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 135,
                              child: TextFormField(
                                controller: aController3,
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'City',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                onChanged: (value) => setState(() {}),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              width: 105,
                              child: TextFormField(
                                controller: aController4,
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'State/Region',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                onChanged: (value) => setState(() {}),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ].divide(const SizedBox(width: 20)),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 90,
                              child: TextFormField(
                                controller: aController5,
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'Postal code',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                onChanged: (value) => setState(() {}),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              child: TextFormField(
                                controller: aController6,
                                decoration: InputDecoration(
                                    isDense: true,
                                    label: RichText(
                                      text: TextSpan(
                                          text: 'Country',
                                          style: FlutterFlowTheme.of(context).bodyMedium.override(color: Colors.black87),
                                          children: [
                                            TextSpan(
                                                text: ' *',
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      color: Colors.red.shade900,
                                                      fontWeight: FontWeight.w500,
                                                    ))
                                          ]),
                                    ),
                                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red.shade900)),
                                    errorStyle: FlutterFlowTheme.of(context).bodySmall.override(
                                          fontSize: 11,
                                          color: Colors.red.shade900,
                                        )),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                onChanged: (value) => setState(() {}),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field is required';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ].divide(const SizedBox(width: 65)),
                        ),
                        const SizedBox(height: 30),
                        if (MediaQuery.sizeOf(context).width <= 666) ...[
                          Container(
                            width: 250,
                            height: 300,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF1F4477),
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  nController.text,
                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  aController1.text,
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                if (aController2.text.isNotEmpty)
                                  Text(
                                    aController2.text,
                                    style: FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                Text(
                                  aController3.text +
                                      ((aController3.text.isNotEmpty && aController4.text.isNotEmpty) ? ", " : "") +
                                      ((aController3.text.isNotEmpty && aController4.text.isEmpty && aController5.text.isNotEmpty) ? "${aController4.text} " : aController4.text) +
                                      ((aController4.text.isNotEmpty && aController5.text.isNotEmpty) ? " " : "") +
                                      aController5.text,
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Text(
                                  aController6.text,
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                const Spacer(),
                                Text(
                                  'Total: \$${formatter.format(m)}',
                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                      ],
                        FilledButton(
                            onPressed: () async {
                              if (!_formKey.currentState!.validate()) {

                              }
                              else {
                                context.pushNamed("donatePageSubmit");
                              }
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xFF1F4477),
                            ),
                            child: Text(
                              'Submit',
                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                    color: Colors.white,
                                  ),
                            )),
                      ],
                    ),
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
