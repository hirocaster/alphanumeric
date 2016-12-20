defmodule AlphanumericTest do
  use ExUnit.Case
  doctest Alphanumeric

  test "to_decimal_number62/1" do
    assert Alphanumeric.to_decimal_number62(0) == "0"
    assert Alphanumeric.to_decimal_number62(9) == "9"
    assert Alphanumeric.to_decimal_number62(10) == "A"
    assert Alphanumeric.to_decimal_number62(35) == "Z"
    assert Alphanumeric.to_decimal_number62(36) == "a"
    assert Alphanumeric.to_decimal_number62(61) == "z"
    assert Alphanumeric.to_decimal_number62(62) == "10"
    assert Alphanumeric.to_decimal_number62(3843) == "zz"
    assert Alphanumeric.to_decimal_number62(3844) == "100"
  end

  test "to_integer/1" do
    assert Alphanumeric.to_integer("0") == 0
    assert Alphanumeric.to_integer("9") == 9
    assert Alphanumeric.to_integer("A") == 10
    assert Alphanumeric.to_integer("Z") == 35
    assert Alphanumeric.to_integer("a") == 36
    assert Alphanumeric.to_integer("z") == 61
    assert Alphanumeric.to_integer("10") == 62
    assert Alphanumeric.to_integer("zz") == 3843
    assert Alphanumeric.to_integer("100") == 3844
    assert Alphanumeric.to_integer("FFFFFFFF") == 53690189897925
  end

  test "string_to_integer/1" do
    assert Alphanumeric.string_to_integer("0") == 0
    assert Alphanumeric.string_to_integer("z") == 61
  end

  test "get_index/2" do
    assert Alphanumeric.get_index([0,1,3], 3) == 2
    assert Alphanumeric.get_index(["a", "b", "c"], "c") == 2
  end

  test "total" do
    Enum.each(0..10_000, fn(x) ->
      str = Alphanumeric.to_decimal_number62(x)
      num = Alphanumeric.to_integer(str)
      IO.inspect "#{x} => #{str} => #{num}"
      assert x == num
    end)
  end

  test "index_base_num/1" do
    assert 3844 == Alphanumeric.index_base_num(2)
    assert 238328 == Alphanumeric.index_base_num(3)
  end
end
