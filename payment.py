from fastapi import APIRouter, Depends, HTTPException
from app.core.auth import get_current_user
from app.models import Transaction, User
from datetime import datetime

router = APIRouter()

@router.post("/payment/send")
async def send_payment(to_user: str, amount: float, user: User = Depends(get_current_user)):
    if amount <= 0:
        raise HTTPException(status_code=400, detail="Amount must be positive.")
    txn = Transaction(
        user_id=user.id,
        to_user=to_user,
        amount=amount,
        status="SUCCESS",
        time=datetime.utcnow(),
        type="SEND"
    )
    # Normally, save to DB; here, just mock return:
    return {"status": "SUCCESS", "txn_id": txn.id, "details": txn.dict()}