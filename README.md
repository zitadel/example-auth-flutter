# zitadel_flutter

This project is a starting point for a Flutter application with ZITADEL integration.

It uses [package:oidc](https://pub.dev/packages/oidc) to handle the user management logic.

## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## ZITADEL configuration

- Make sure to create a native application.
- Add the redirects:
  - mobile applications with your custom scheme (in our case `com.zitadel.zitadelflutter:/`)
  - web redirect (in our case for local development `http://localhost:3000/auth.html`) and make sure to have enabled devMode.
- To get a `refresh_token`, check the checkbox for Refresh Token and add the `offline_access` scope.

## Run

1. Copy `.env.example` to `.env` and set your ZITADEL instance URL and client ID.

2. Install dependencies and start the app:

```bash
make start
```

### Further Development

If you want to access more features, and use this app on other platforms (e.g. desktop),
Make sure to read the [package:oidc wiki](https://bdaya-dev.github.io/oidc/oidc-getting-started/)
