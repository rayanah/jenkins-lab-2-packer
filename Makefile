all: stop start exec 



init:
	export PROJECT_NAME="web-server"
	echo "$$OWNER"
	echo "$$PROJECT_NAME"

start:
	docker run -it -d \
		--env TF_NAMESPACE=$$TF_NAMESPACE \
		--env AWS_PROFILE="kh-labs" \
		--env AWS_ACCESS_KEY_ID="$$(sed -n 2p creds/credentials | sed 's/.*=//')" \
		--env AWS_SECRET_ACCESS_KEY="$$(sed -n 3p creds/credentials | sed 's/.*=//')" \
		--env OWNER=$$OWNER \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v $$PWD:/$$(basename $$PWD) \
		-v k3s_packer:/token \
		-v /some/content:/usr/share/nginx/html:ro \
		-w /$$(basename $$PWD) \
		--name $$(basename $$PWD) \
		--hostname $$(basename $$PWD) \
		-p 80:80
		nginx

stop:
	docker rm -f $$(basename $$PWD) 2> /dev/null || true

exec:
	docker exec -it $$(basename $$PWD) bash || true

build:
	packer build packer.json
