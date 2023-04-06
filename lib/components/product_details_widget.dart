import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_details_model.dart';
export 'product_details_model.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({
    Key? key,
    this.instrumento,
  }) : super(key: key);

  final InstrumentosRecord? instrumento;

  @override
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  late ProductDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.instrumento!.nombre!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Work Sans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
                Text(
                  widget.instrumento!.precio!.toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Work Sans',
                        color: Color(0xFF5BB332),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  widget.instrumento!.descripcion!,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
                InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_backspace,
                    color: Colors.black,
                    size: 24.0,
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
