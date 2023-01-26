from logic import to_lower, to_upper


def test_to_lower():
    assert to_lower("HoLA") == "holA"


def test_to_upper():
    assert to_upper("HoLa") == "HOLA"
