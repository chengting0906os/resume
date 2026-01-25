.PHONY: render render-en render-zh

NAME = ChengTingChan
OUT  = rendercv_output

render:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	mkdir -p latest; \
	rendercv render $(NAME)_CV.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	rendercv render $(NAME)_CV_zh.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	find $(OUT) -maxdepth 1 -type f \( -name "*.png" -o -name "*.md" -o -name "*.html" \) -exec mv {} "$(OUT)/$$ts/" \; ; \
	cp "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" latest/$(NAME)_Resume_EN.pdf; \
	cp "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" latest/$(NAME)_Resume_ZH.pdf; \
	echo "Created: $(OUT)/$$ts/"; \
	echo "Copied to: latest/"

render-en:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	mkdir -p latest; \
	rendercv render $(NAME)_CV.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	cp "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" latest/$(NAME)_Resume_EN.pdf; \
	echo "Created EN: $(OUT)/$$ts/"; \
	echo "Copied to: latest/"

render-zh:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	mkdir -p latest; \
	rendercv render $(NAME)_CV_zh.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	cp "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" latest/$(NAME)_Resume_ZH.pdf; \
	echo "Created ZH: $(OUT)/$$ts/"; \
	echo "Copied to: latest/"
