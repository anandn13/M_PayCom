from typing import Optional
from datetime import datetime

class User:
    def __init__(self, id: int, name: str, phone: str, pin_hash: str):
        self.id = id
        self.name = name
        self.phone = phone
        self.pin_hash = pin_hash

class Transaction:
    def __init__(self, user_id: int, to_user: str, amount: float, status: str, time: datetime, type: str):
        self.id = id(self)  # For demo; use real UUID in prod
        self.user_id = user_id
        self.to_user = to_user
        self.amount = amount
        self.status = status
        self.time = time
        self.type = type

    def dict(self):
        return self.__dict__