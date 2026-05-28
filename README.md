# Aegis Escrow

Decentralized escrow platform for secure peer-to-peer transactions with on-chain custody and off-chain dispute workflows.

## Architecture

```
┌──────────────────────────────┐
│          Frontend            │
│            Nuxt.js           │
│ Wallet Integration + UI/UX   │
└──────────────┬───────────────┘
               │ ethers.js
┌──────────────▼───────────────┐
│       Smart Contracts        │
│            Solidity          │
│            Foundry           │
│ Escrow + Roles + Payments    │
└──────────────┬───────────────┘
               │ WebSocket + REST API
┌──────────────▼───────────────┐
│         Django Backend       │
│ Disputes + Messaging + Auth  │
│ Django Channels + Postgres   │
└──────────────┬───────────────┘
               │
┌──────────────▼───────────────┐
│          PostgreSQL          │
│   Messages + Dispute Logs    │
└──────────────────────────────┘
```

## Quickstart

1. Copy environment variables:
   - `cp .env.example .env`
2. Start all services:
   - `docker compose up --build`

## Development

- Contracts:
  - `cd contracts && forge build && forge test`
- Frontend:
  - `cd frontend && npm install && npm run dev`
- Backend:
  - `cd backend && python -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt && python manage.py runserver`

## Reference

- Product specification: `SPECS.md`
