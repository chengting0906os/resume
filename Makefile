.PHONY: render render-en render-zh

NAME = ChengTingChan
OUT  = rendercv_output

render:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	rendercv render $(NAME)_CV.yaml -pdf "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" -typ "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	rendercv render $(NAME)_CV_zh.yaml -pdf "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" -typ "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	echo "Created: $(OUT)/$$ts/"

render-en:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	rendercv render $(NAME)_CV.yaml -pdf "$(OUT)/$$ts/$(NAME)_EN_$$ts.pdf" -typ "$(OUT)/$$ts/$(NAME)_EN_$$ts.typ"; \
	echo "Created EN: $(OUT)/$$ts/"

render-zh:
	@ts=$$(date +%Y%m%d_%H%M%S); \
	rendercv render $(NAME)_CV_zh.yaml -pdf "$(OUT)/$$ts/$(NAME)_ZH_$$ts.pdf" -typ "$(OUT)/$$ts/$(NAME)_ZH_$$ts.typ"; \
	echo "Created ZH: $(OUT)/$$ts/"
