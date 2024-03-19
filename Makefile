.PHONY: all clone build start stop

all: clone build start

clone:
	git clone https://github.com/isankadn/mongo-to-clickhouse.git ../mongo-to-clickhouse
	git clone https://github.com/isankadn/opt-out.git ../opt-out

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down