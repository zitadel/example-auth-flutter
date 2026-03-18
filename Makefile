.PHONY: start

start:
	flutter pub get
	flutter run -d chrome --web-port=$${PORT:-3000}
