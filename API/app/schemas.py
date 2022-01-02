from pydantic import BaseModel
from typing import Optional

# TODO: Requirements
# Users - Student Number, Password, User Type, User Permission
# Grades - Student Number, AY, SEM


class cred(BaseModel):
    user: int
    password: str
    id: Optional[int]
