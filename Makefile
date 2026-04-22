.PHONY: help check start

ifneq (,$(wildcard .env))
include .env
endif

help:
	@echo "Usage:"
	@echo "  make start   Start the application"
	@echo "  make check   Verify required dependencies are installed"

check:
	@command -v flutter >/dev/null 2>&1 || { \
		echo "Error: Flutter SDK is not installed." >&2; \
		echo "" >&2; \
		echo "  Install it from https://docs.flutter.dev/get-started/install or use your package manager:" >&2; \
		echo "    brew install --cask flutter              # macOS" >&2; \
		echo "    sudo snap install flutter --classic      # Ubuntu" >&2; \
		exit 1; \
	}

start: check
	test -f .env || cp .env.example .env
	flutter pub get
	flutter run -d chrome --web-port=$${PORT:-3000}
