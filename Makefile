.PHONY: start

start:
	flutter pub get
	flutter run -d chrome --web-port=3000
