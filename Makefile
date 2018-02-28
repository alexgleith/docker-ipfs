up:
	docker-compose up

exec:
	docker-compose exec ipfs sh

cors:
	docker-compose exec ipfsipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*"]'
	docker-compose exec ipfsipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["GET", "POST"]'
	docker-compose exec ipfsipfs config --json API.HTTPHeaders.Access-Control-Allow-Headers '["Authorization"]'
	docker-compose exec ipfsipfs config --json API.HTTPHeaders.Access-Control-Expose-Headers '["Location"]'
	docker-compose exec ipfsipfs config --json API.HTTPHeaders.Access-Control-Allow-Credentials '["true"]'
