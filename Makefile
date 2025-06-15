.PHONY: help build run stop logs clean test lint install-dev

# 기본 변수 설정
DOCKER_COMPOSE = docker-compose
PYTHON = python
UV = uv

# 도움말
help:
	@echo "사용 가능한 명령어:"
	@echo "  make install-dev    - 개발 환경 설정 (의존성 설치)"
	@echo "  make build          - Docker 이미지 빌드"
	@echo "  make run            - Docker 컨테이너 실행"
	@echo "  make stop           - Docker 컨테이너 중지"
	@echo "  make logs           - Docker 컨테이너 로그 확인"
	@echo "  make clean          - 불필요한 파일 정리"
	@echo "  make test           - 테스트 실행"
	@echo "  make lint           - 코드 린트 검사"
	@echo "  make local-run      - 로컬에서 애플리케이션 실행"
	@echo "  make local-trade    - 로컬에서 트레이딩 시스템 실행"

# 개발 환경 설정
install-dev:
	$(UV) sync
	$(UV) pip install -e ".[dev]"

# Docker 관련 명령어
build:
	$(DOCKER_COMPOSE) build

run:
	$(DOCKER_COMPOSE) up -d

stop:
	$(DOCKER_COMPOSE) down

logs:
	$(DOCKER_COMPOSE) logs -f

# 정리
clean:
	find . -type d -name "__pycache__" -exec rm -r {} +
	find . -type f -name "*.pyc" -delete
	find . -type f -name "*.pyo" -delete
	find . -type f -name "*.pyd" -delete
	find . -type f -name ".coverage" -delete
	find . -type d -name "*.egg-info" -exec rm -r {} +
	find . -type d -name "*.egg" -exec rm -r {} +
	find . -type d -name ".pytest_cache" -exec rm -r {} +
	find . -type d -name ".coverage" -exec rm -r {} +
	find . -type d -name "htmlcov" -exec rm -r {} +

# 테스트
test:
	$(PYTHON) -m pytest tests/

# 린트
lint:
	$(PYTHON) -m flake8 .
	$(PYTHON) -m black . --check
	$(PYTHON) -m isort . --check-only

# 로컬 실행
local-run:
	streamlit run main.py

local-trade:
	$(PYTHON) autotrade.py

# 기본 타겟
.DEFAULT_GOAL := help
