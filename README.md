# telegram-bot-sec
# Secure Telegram Bot (DevOps/DevSecOps Demo)

## Purpose
Demo project with CI/CD and security for small Python projects.

## Tech Stack
- Python
- GitHub Actions
- Docker

## CI/CD Pipeline
- Lint (flake8)
- Tests (pytest)
- SAST (Bandit)
- Dependency Scan (Trivy FS)
- Container Scan (Trivy Image)

## Security
- No secrets in repo
- Pipeline fails on HIGH / CRITICAL vulnerabilities
- Non-root Docker container

## Run locally
export TELEGRAM_BOT_TOKEN=xxx
docker build -t bot .
docker run -e TELEGRAM_BOT_TOKEN=$TELEGRAM_BOT_TOKEN bot
