.PHONY: render render-en render-zh

NAME = ChengTingChan
OUT  = rendercv_output

render:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	rendercv render $(NAME)_CV.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	rendercv render $(NAME)_CV_zh.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	find $(OUT) -maxdepth 1 -type f \( -name "*.png" -o -name "*.md" -o -name "*.html" \) -exec mv {} "$(OUT)/$$ts/" \; ; \
	echo "Created: $(OUT)/$$ts/"

render-en:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	rendercv render $(NAME)_CV.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	echo "Created EN: $(OUT)/$$ts/"

render-zh:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	mkdir -p "$(OUT)/$$ts"; \
	rendercv render $(NAME)_CV_zh.yaml --output-folder-name "$(OUT)/$$ts" --pdf-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" --typst-path "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	echo "Created ZH: $(OUT)/$$ts/"
