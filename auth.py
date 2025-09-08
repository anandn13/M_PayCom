from fastapi import Depends, HTTPException

def get_current_user(token: str = "demo-token"):
    # In real, decode JWT and lookup user
    return type("User", (), {"id": 1, "name": "Demo", "phone": "9999999999", "pin_hash": "hashed"})()