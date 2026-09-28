PROJECT_DIR ?=

.PHONY: get bootstrap generate run analyze test clean

get:
	flutter pub get

bootstrap:
	melos bootstrap

generate:
	cd token_pipeline && npm install && npm run build
	melos run generate --no-private

run:
	@if [ -n "$(PROJECT_DIR)" ]; then flutter run -d chrome --project-dir $(PROJECT_DIR); else flutter run; fi

analyze:
	melos run analyze --no-private

test:
	melos run test --no-private

clean:
	melos clean
