from fastapi import APIRouter

router = APIRouter()

@router.get("/rewards")
def get_rewards(user_id: int):
    return [
        {"title": "₹20 Cashback", "desc": "On first bill payment", "claimed": False},
        {"title": "₹50 Referral", "desc": "Invite a friend", "claimed": True},
    ]