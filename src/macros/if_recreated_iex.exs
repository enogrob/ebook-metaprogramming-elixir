#---
# Excerpted from "Metaprogramming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/cmelixir for more book information.
#---
iex> c "if_recreated.exs"
[MyIf]

iex> require ControlFlow
nil
iex> ControlFlow.my_if 1 == 1 do
...>   "correct"
...> else
...>   "incorrect"
...> end
"correct"
