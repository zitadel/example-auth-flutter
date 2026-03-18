import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oidc/oidc.dart';
import 'package:oidc_default_store/oidc_default_store.dart';

import 'package:zitadel_flutter/main.dart';

void main() {
  setUp(() {
    userManager = OidcUserManager.lazy(
      discoveryDocumentUri: OidcUtils.getOpenIdConfigWellKnownUri(
        Uri.parse('https://example.zitadel.cloud'),
      ),
      clientCredentials: OidcClientAuthentication.none(clientId: 'test-client'),
      store: OidcDefaultStore(),
      settings: OidcUserManagerSettings(
        redirectUri: Uri.parse('http://localhost/callback'),
      ),
    );
    initFuture = Future.value();
  });

  testWidgets('App shows login button when not authenticated',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(title: 'Flutter ZITADEL Quickstart'),
      ),
    );

    expect(find.text('You are not authenticated.'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.byIcon(Icons.fingerprint), findsOneWidget);
  });
}
