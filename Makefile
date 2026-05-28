SHELL := /bin/bash

.PHONY: up down logs contracts-test frontend-dev backend-dev ci-local

up:
	docker compose up --build -d

down:
	docker compose down -v

logs:
	docker compose logs -f --tail=200

contracts-test:
	cd contracts && forge test -vvv

frontend-dev:
	cd frontend && npm run dev

backend-dev:
	cd backend && source .venv/bin/activate && python manage.py runserver 0.0.0.0:8000

ci-local:
	cd contracts && forge build && forge test -vvv
	cd frontend && npm ci && npm run lint && npm run typecheck && npm run build
	cd backend && source .venv/bin/activate && ruff check . && python manage.py check && pytest
