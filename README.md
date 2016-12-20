# Alphanumeric

Convert 62 decimal number tools. Integer to String and String to Integer.

## Sample

``` elixir
# Integer to String(62 decimal)
Alphanumeric.to_decimal_number62(0) # => "0"
Alphanumeric.to_decimal_number62(9) # => "9"
Alphanumeric.to_decimal_number62(10) # => "A"
Alphanumeric.to_decimal_number62(35) # => "Z"
Alphanumeric.to_decimal_number62(36) # => "a"
Alphanumeric.to_decimal_number62(61) # => "z"
Alphanumeric.to_decimal_number62(62) # => "10"
Alphanumeric.to_decimal_number62(3843) # => "zz"
Alphanumeric.to_decimal_number62(3844) # => "100"

# String(62 decimal) to Integer
Alphanumeric.to_integer("0") # => 0
Alphanumeric.to_integer("9") # => 9
Alphanumeric.to_integer("A") # => 10
Alphanumeric.to_integer("Z") # => 35
Alphanumeric.to_integer("a") # => 36
Alphanumeric.to_integer("z") # => 61
Alphanumeric.to_integer("10") # => 62
Alphanumeric.to_integer("zz") # => 3843
Alphanumeric.to_integer("100") # => 3844
Alphanumeric.to_integer("FFFFFFFF") # => 53690189897925
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `alphanumeric` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:alphanumeric, "~> 0.1.0"}]
    end
    ```

  2. Ensure `alphanumeric` is started before your application:

    ```elixir
    def application do
      [applications: [:alphanumeric]]
    end
    ```
