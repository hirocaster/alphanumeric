defmodule Alphanumeric do
  @table String.split("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", "")

  def to_decimal_number62(number) when number > 61 do
    to_decimal_number62(div(number, 62)) <> Enum.fetch!(@table, rem(number, 62))
  end

  def to_decimal_number62(number) when number <= 61 do
    Enum.fetch!(@table, rem(number, 62))
  end

  def to_integer(alphanumeric) when is_binary(alphanumeric) do
    reverse_string = String.split(alphanumeric, "", trim: true)
    |> Enum.reverse

    count = Enum.count(reverse_string)

    Enum.map(0..count - 1, fn(index) ->
      char = Enum.fetch!(reverse_string, index)
      do_to_integer(char, index)
    end) |> list_total
  end

  defp list_total([head | tail]) when tail == [] do
    head
  end
  defp list_total([head | tail]) do
    head + list_total(tail)
  end

  defp do_to_integer(char, index) when index == 0 do
    string_to_integer(char)
  end
  defp do_to_integer(char, index) when index > 0 do
    string_to_integer(char) * index_base_num(index)
  end

  def string_to_integer(char) do
    get_index(@table, char)
  end

  def get_index(collection, param) when is_list(collection) do
    Enum.with_index(collection)
    |> Enum.filter_map(fn {x, _} -> x == param end, fn {_, i} -> i end)
    |> List.first
  end

  def index_base_num(num) when num > 0 do
    62 * index_base_num(num - 1)
  end
  def index_base_num(num) when num == 0 do
    1
  end
end
