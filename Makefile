.PHONY: build serve

build:
	uv tool run \
		--with mkdocs-material \
		--with mkdocs-callouts \
		--with pymdown-extensions \
		mkdocs build --strict

serve:
	uv tool run \
		--with mkdocs-material \
		--with mkdocs-callouts \
		--with pymdown-extensions \
		mkdocs serve
