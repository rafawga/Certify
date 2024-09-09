import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'politica_privacidade_model.dart';
export 'politica_privacidade_model.dart';

class PoliticaPrivacidadeWidget extends StatefulWidget {
  const PoliticaPrivacidadeWidget({super.key});

  @override
  State<PoliticaPrivacidadeWidget> createState() =>
      _PoliticaPrivacidadeWidgetState();
}

class _PoliticaPrivacidadeWidgetState extends State<PoliticaPrivacidadeWidget> {
  late PoliticaPrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticaPrivacidadeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'PoliticaPrivacidade',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Política de Privacidade\nData de Vigência: 1º de Agosto de 2024\n\n1. Introdução\nEsta Política de Privacidade descreve como coletamos, usamos e protegemos as informações pessoais de nossos usuários ao utilizarem o Certify. Estamos comprometidos em proteger sua privacidade e garantir que suas informações pessoais estejam seguras.\n\n2. Informações que Coletamos\nAo utilizar nosso aplicativo, poderemos coletar e armazenar as seguintes informações:\n\nInformações de Autenticação: Quando você faz login usando o Google Auth, coletamos informações como seu nome, endereço de e-mail e foto de perfil, conforme fornecido pelo Google.\nInformações de Uso: Podemos coletar informações sobre como você utiliza nosso aplicativo, incluindo registros de atividades e interações com o aplicativo.\nInformações Técnicas: Podemos coletar informações técnicas, como o tipo de dispositivo, sistema operacional, endereço IP e outras informações relacionadas ao seu acesso ao nosso aplicativo.\n3. Como Usamos Suas Informações\nAs informações coletadas são usadas para os seguintes propósitos:\n\nFornecimento de Serviços: Usamos suas informações para autenticar seu acesso ao nosso aplicativo e fornecer os serviços que você solicitou.\nMelhoria do Aplicativo: Podemos usar informações de uso para entender como nossos usuários interagem com o aplicativo e melhorar a experiência do usuário.\nComunicação: Podemos utilizar seu endereço de e-mail para enviar notificações relacionadas ao uso do aplicativo, atualizações de serviço, ou informações relevantes.\n4. Compartilhamento de Informações\nNão compartilhamos suas informações pessoais com terceiros, exceto nas seguintes circunstâncias:\n\nCom seu consentimento: Podemos compartilhar suas informações com terceiros se tivermos seu consentimento explícito para fazê-lo.\nPara Cumprir Obrigações Legais: Podemos divulgar suas informações se exigido por lei, ordem judicial ou outra obrigação legal.\n5. Segurança\nImplementamos medidas de segurança para proteger suas informações pessoais contra acesso, uso ou divulgação não autorizados. No entanto, nenhum método de transmissão de dados pela internet ou armazenamento eletrônico é 100% seguro. Portanto, não podemos garantir a segurança absoluta de suas informações.\n\n6. Seus Direitos\nVocê tem o direito de acessar, corrigir ou excluir suas informações pessoais a qualquer momento. Para exercer esses direitos, entre em contato conosco através de suporte@certify.app.br.\n\n7. Alterações a Esta Política\nPodemos atualizar esta Política de Privacidade periodicamente. Notificaremos você sobre quaisquer mudanças através de nosso aplicativo ou outros meios apropriados. Recomendamos que você revise esta política regularmente para se manter informado sobre como estamos protegendo suas informações.\n\n8. Contato\nSe você tiver dúvidas ou preocupações sobre esta Política de Privacidade, entre em contato conosco através de suporte@certify.app.br.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
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
        ));
  }
}
