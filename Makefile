.PHONY: start

start:
	test -f .env || cp .env.example .env
	flutter pub get
	flutter run -d chrome --web-port=$${PORT:-3000}
