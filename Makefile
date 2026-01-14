.PHONY: render

render:
	@timestamp=$$(date +%Y%m%d_%H%M%S); \
	out="rendercv_output/$$timestamp"; \
	rendercv render ChengTingChan_CV.yaml \
		-pdf "$$out/ChengTingChan_$$timestamp.pdf" \
		-html "$$out/ChengTingChan_$$timestamp.html" \
		-md "$$out/ChengTingChan_$$timestamp.md" \
		-typ "$$out/ChengTingChan_$$timestamp.typ" \
		-png "$$out/ChengTingChan_$$timestamp.png"; \
	echo "Created: $$out/"
