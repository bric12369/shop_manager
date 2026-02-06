from lib.item import *

def test_init_with_attributes():
    item = Item(1, 'Banana', 0.25, 17)
    assert item.id == 1
    assert item.name == 'Banana'
    assert item.unit_price == 0.25
    assert item.quantity == 17

def test_equality():
    item1 = Item(1, 'Banana', 0.25, 17)
    item2 = Item(1, 'Banana', 0.25, 17)
    assert item1 == item2

def test_format():
    item = Item(1, 'Banana', 0.25, 17)
    assert str(item) == 'Item(1, Banana, 0.25, 17)'