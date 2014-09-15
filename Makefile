all: publish

publish:
	rm -rf /tmp/crazy-arcade-medals/
	git clone -b gh-pages https://github.com/devxoul/crazy-arcade-medals.git /tmp/crazy-arcade-medals/
	cp index.html /tmp/crazy-arcade-medals/
	cd /tmp/crazy-arcade-medals; \
		git add -f index.html; \
		git commit -am "Publish"; \
		git push -f origin gh-pages
	rm -rf /tmp/crazy-arcade-medals/
