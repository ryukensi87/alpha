import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 's_k_apps_model.dart';
export 's_k_apps_model.dart';

class SKAppsWidget extends StatefulWidget {
  const SKAppsWidget({super.key});

  @override
  _SKAppsWidgetState createState() => _SKAppsWidgetState();
}

class _SKAppsWidgetState extends State<SKAppsWidget> {
  late SKAppsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SKAppsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Syarat dan Ketentuan Apps',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat datang di aplikasi Alpha Exchange Apps (selanjutnya disebut "Aplikasi") yang dikelola oleh PT. Alpha (selanjutnya disebut "Perusahaan"). Dengan menggunakan Aplikasi ini, Anda setuju untuk terikat dengan syarat dan ketentuan ini. Jika Anda tidak setuju dengan syarat dan ketentuan ini, harap segera berhenti menggunakan Aplikasi.\n\n1. Penggunaan Aplikasi\n\nAnda setuju untuk menggunakan Aplikasi ini hanya untuk tujuan yang sah, sesuai dengan aturan yang berlaku, dan dengan tidak melanggar hak pihak ketiga.\n\n2. Privasi dan Data Pengguna\n\nKami menghormati privasi Anda. Data pengguna yang dikumpulkan dan digunakan oleh Aplikasi diatur oleh Kebijakan Privasi yang terpisah dan tersedia di Aplikasi.\n\n3. Hak Kekayaan Intelektual\n\nAplikasi ini dan semua kontennya, termasuk tetapi tidak terbatas pada teks, gambar, suara, video, dan perangkat lunak, dilindungi oleh hak cipta dan hak kekayaan intelektual lainnya yang dimiliki oleh Perusahaan. Anda tidak diizinkan untuk mereproduksi, mendistribusikan, atau menggandakan konten Aplikasi tanpa izin tertulis dari Perusahaan.\n\n4. Pembatasan Tanggung Jawab\n\nAplikasi ini disediakan "apa adanya" dan "sebagaimana tersedia." Perusahaan tidak bertanggung jawab atas kerugian, cedera, atau kerusakan yang mungkin timbul dari penggunaan Aplikasi.\n\n5. Perubahan Syarat dan Ketentuan\n\nPerusahaan berhak untuk mengubah syarat dan ketentuan ini setiap saat. Perubahan tersebut akan diumumkan di Aplikasi dan berlaku segera setelah diumumkan. Anda dianggap menerima perubahan tersebut dengan melanjutkan penggunaan Aplikasi.\n\n6. Penutupan Akun\n\nPerusahaan berhak menutup akun pengguna dan menghentikan akses ke Aplikasi jika ditemukan pelanggaran terhadap syarat dan ketentuan ini atau aturan yang berlaku.\n\n7. Hukum yang Berlaku\n\nSyarat dan ketentuan ini diatur oleh hukum yang berlaku di Indonesia dan setiap sengketa yang timbul akan diselesaikan dalam yurisdiksi yang relevan.\n\nTerima kasih telah menggunakan Aplikasi kami. Jika Anda memiliki pertanyaan atau masalah terkait dengan syarat dan ketentuan ini, silakan hubungi kami di alphaexchange@support.com.\n\n01 Januari 2024',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
