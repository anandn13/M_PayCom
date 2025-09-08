from fastapi import APIRouter, Depends
from datetime import datetime

router = APIRouter()

@router.get("/bills/reminders")
def get_bill_reminders(user_id: int):
    # Mocked: in real app, fetch from DB
    return [
        {"name": "Electricity", "due": "2025-09-15", "amount": "1200"},
        {"name": "DTH", "due": "2025-09-20", "amount": "450"},
    ]