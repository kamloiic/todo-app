create-directory: 
	mkdir -p pkg-repo/.imgpkg pkg-repo/packages/todo-app-pkg.kamloiic.github.com

resolve-container:
	kbld -f pkg-repo/packages/ --imgpkg-lock-output pkg-repo/.imgpkg/images.yml

push-publish-image:
	imgpkg push -b ghcr.io/kamloiic/todo-app-pkg-repo:1.0.0 -f pkg-repo

register-package:
	tanzu package repository add todo-app-repo \
  --url ghcr.io/kamloiic/todo-app-pkg-repo:1.0.0 \
  --namespace todoapp \
  --create-namespace

install-package:
	tanzu package install todo-app \
  --package-name todo-app-pkg.kamloiic.github.com \
  --version 1.0.0 \
  --namespace todoapp

update-package: 
  tanzu package repository update todo-app-repo \         
  --url ghcr.io/kamloiic/todo-app-pkg-repo:1.0.0 \
  --namespace todo 