from logic import to_lower, to_upper


def test_to_lower():
    assert to_lower("HeLLo") == "hello"


def test_to_upper():
    assert to_upper("HeLLo") == "HELLO"
