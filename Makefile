docs/tuist/preview:
	swift package --disable-sandbox preview-documentation --target tuist --hosting-base-path /
docs/tuist/build:
	swift package --allow-writing-to-directory .build/documentation generate-documentation --target tuist --disable-indexing --output-path .build/documentation --transform-for-static-hosting
	echo "/index.html	/documentation/tuist" > ".build/documentation/_redirects"
	cp assets/favicon.ico .build/documentation/favicon.ico
	cp assets/favicon.svg .build/documentation/favicon.svg
