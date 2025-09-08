# M_Paycom

**M_Paycom** is a full-stack mock UPI payment app with a beautiful, professional UI, real-time payment flows, and robust debugging.  
It is suitable for demos, hackathons, and as a foundation for a production payments app.

---

## Features

- **Send/Receive Money:** Instantly transfer money to contacts or via QR (mocked).
- **Bill Payments:** Pay bills (electricity, DTH, etc.).
- **Merchant Payments:** Scan QR and pay at stores.
- **Transaction History:** Filter/search with details and receipts.
- **Rewards & Offers:** Cashback, coupons, referral bonuses.
- **Security:** Device binding, PIN, (mocked) biometrics.
- **Notifications:** Real-time status and alerts.
- **Support:** 24x7 in-app chat and ticket system.
- **Multi-language:** Easily localized.

---

## Architecture Overview

- **Frontend (Flutter):** Cross-platform mobile app with Material 3, custom branding, and animations.
- **Backend (FastAPI):** REST & WebSocket API for all business logic, user management, payments, notifications, and support.
- **Database (PostgreSQL):** Stores users, transactions, rewards, support tickets.
- **Cache (Redis):** For session management and real-time events.
- **Docker Compose:** Runs all services for easy local development.
- **CI/CD Ready:** Easily expandable for cloud deployment.

---

## File & Folder Structure

- `frontend/` - Flutter app source
- `backend/` - FastAPI app with all API logic
- `infra/` - Docker Compose and infrastructure scripts
- `docs/` - Design documents (UI/UX, Figma links, API docs)

---

## How to Run

1. **Clone the repo:**
   ```bash
   git clone https://github.com/anandn13/M_Paycom.git
   cd M_Paycom
   ```

2. **Start backend and database:**
   ```bash
   cd backend
   docker-compose up --build
   # or from project root:
   docker compose -f infra/docker-compose.yaml up --build
   ```

3. **Start Flutter app:**
   ```bash
   cd frontend
   flutter pub get
   flutter run
   ```

**You’ll see a fully working payment app with all flows demo-ready!**

---

## Explanations

**Backend**
- Handles user registration/login, payment requests, transaction history, support chat, and offers.
- Mocks all payment processing for instant demo.
- Real-time events (like payment status) via WebSockets.

**Frontend**
- Follows modern UX principles: minimal, bold branding, smooth navigation.
- Animations and micro-interactions for a premium feel.
- Works on both Android and iOS.

**Database**
- Stores all users, accounts, transactions, rewards, and support tickets.

**Docker/Infra**
- Orchestrates backend, PostgreSQL, and Redis for easy setup.

---

## Security

- JWT tokens for API authentication
- PIN and (mocked) biometric for sensitive actions
- Encrypted user data at rest (in real prod)

---

## Disclaimer

> No real money moves; all payments are mocked for safety and demo.

---