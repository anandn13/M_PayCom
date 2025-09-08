from fastapi import APIRouter

router = APIRouter()

@router.get("/payees")
def get_saved_payees(user_id: int):
    return [
        {"name": "Raj", "upi": "raj@bank"},
        {"name": "Priya", "upi": "priya@bank"},
        {"name": "Electricity Board", "upi": "ebill@utility"},
    ]