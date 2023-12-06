import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'kebijakan_apps_model.dart';
export 'kebijakan_apps_model.dart';

class KebijakanAppsWidget extends StatefulWidget {
  const KebijakanAppsWidget({super.key});

  @override
  _KebijakanAppsWidgetState createState() => _KebijakanAppsWidgetState();
}

class _KebijakanAppsWidgetState extends State<KebijakanAppsWidget> {
  late KebijakanAppsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KebijakanAppsModel());

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
            'Kebijakan Privasi',
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
                      'PT. Alpha (selanjutnya disebut "kami," "kita," atau "kami") mengoperasikan aplikasi mobile Alpha Apps (selanjutnya disebut "Aplikasi"). Kami berkomitmen untuk melindungi privasi Anda dan data pribadi Anda. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi Anda saat Anda menggunakan Aplikasi kami.\n\nInformasi yang Kami Kumpulkan\n\nKami mungkin mengumpulkan jenis informasi berikut saat Anda menggunakan Aplikasi kami:\n\n1. Informasi Pribadi:\n\nKetika Anda membuat akun, kami mungkin mengumpulkan informasi pribadi seperti nama, alamat email, dan nomor telepon.\n\n2. Informasi Penggunaan:\n\nKami mungkin mengumpulkan informasi tentang bagaimana Anda menggunakan Aplikasi, termasuk interaksi Anda, preferensi konten, dan detail penggunaan lainnya.\n\n3. Informasi Perangkat:\n\nKami mungkin mengumpulkan informasi tentang perangkat Anda, termasuk model perangkat, sistem operasi, pengidentifikasi perangkat unik, dan informasi jaringan seluler.\n\nCara Kami Menggunakan Informasi Anda\n\nKami mungkin menggunakan informasi Anda untuk tujuan-tujuan berikut:\n\n1. Pengelolaan Akun:\n\nKami menggunakan informasi pribadi Anda untuk membuat dan mengelola akun Anda.\n\n2. Peningkatan Aplikasi:\n\nKami menggunakan informasi tentang cara Anda menggunakan Aplikasi untuk melakukan perbaikan, mengembangkan fitur baru, dan meningkatkan pengalaman pengguna.\n\n3. Komunikasi:\n\nKami dapat menggunakan informasi kontak Anda untuk mengirimkan pembaruan penting, notifikasi, dan komunikasi layanan pelanggan.\n\nKeamanan Data\n\nKami mengambil tindakan yang sesuai untuk melindungi informasi Anda dan memastikan keamanan data, tetapi tidak ada sistem transmisi atau penyimpanan data yang sepenuhnya aman. Kami tidak dapat menjamin keamanan data Anda.\n\nLayanan Pihak Ketiga\n\nAplikasi kami mungkin berisi tautan ke layanan, situs web, atau konten pihak ketiga. Kami tidak bertanggung jawab atas praktik privasi pihak ketiga ini. Kami mendorong Anda untuk membaca kebijakan privasi pihak ketiga tersebut.\n\nPilihan Anda\n\nAnda dapat mengelola informasi pribadi Anda dan pengaturan privasi dalam Aplikasi. Anda juga dapat memilih untuk menghapus akun Anda kapan saja.\n\nPrivasi Anak-anak\n\nAplikasi ini tidak ditujukan untuk digunakan oleh anak di bawah usia 13 tahun. Kami tidak secara sengaja mengumpulkan informasi pribadi dari anak di bawah usia 13 tahun. Jika Anda percaya bahwa kami secara tidak sengaja mengumpulkan informasi dari anak di bawah usia 13 tahun, harap hubungi kami untuk menghapus informasi tersebut.\n\nPerubahan pada Kebijakan Privasi Ini\n\nKami dapat memperbarui Kebijakan Privasi ini untuk mencerminkan perubahan dalam praktik informasi kami. Kami mendorong Anda untuk secara berkala meninjau Kebijakan Privasi ini.\n\nHubungi Kami\n\nJika Anda memiliki pertanyaan atau kekhawatiran terkait Kebijakan Privasi ini, silakan hubungi kami di alphaexchange@support.com.',
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
