create-directory: 
	mkdir -p package/config package/.imgpkg

resolve-container:
	kbld -f package/config/ --imgpkg-lock-output package/.imgpkg/images.yml

push-publish-image:
	imgpkg push -b ghcr.io/kamloiic/todo-app-pkg:1.0.0 -f package/
