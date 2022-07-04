install-version: 
		kubectl apply -f https://github.com/pivotal/kpack/releases/download/v0.6.0/release-0.6.0.yaml
create-secret:
		kubectl create secret docker-registry registry-credentials-github \
   		--username=kamloiic \
    	--password=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 \
    	--server=ghcr.io \
    	--namespace default
deploy-files:
		kubectl apply -f 01-store.yaml
		kubectl apply -f 02-stack.yaml
		kubectl apply -f 03-service-account.yaml
		kubectl apply -f 04-builder.yaml
		kubectl apply -f 05-images.yaml