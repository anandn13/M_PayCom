from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from app.api import register, login, payment, history, support

app = FastAPI(title="M_Paycom API", version="1.0.0")

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"], allow_credentials=True, allow_methods=["*"], allow_headers=["*"],
)

# Register API routers
app.include_router(register.router, prefix="/api")
app.include_router(login.router, prefix="/api")
app.include_router(payment.router, prefix="/api")
app.include_router(history.router, prefix="/api")
app.include_router(support.router, prefix="/api")