#---
# Excerpted from "Metaprogramming Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/cmelixir for more book information.
#---
defmodule Translator do

  defmacro __using__(_options) do
    quote do
      Module.register_attribute __MODULE__, :locales, accumulate: true,  
                                                      persist: false
      import unquote(__MODULE__), only: [locale: 2]
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(env) do
    compile(Module.get_attribute(env.module, :locales))                  
  end

  defmacro locale(name, mappings) do
    quote bind_quoted: [name: name, mappings: mappings] do
      @locales {name, mappings}                                          
    end
  end

  def compile(translations) do
    # TBD: Return AST for all translation function definitions
  end
end
