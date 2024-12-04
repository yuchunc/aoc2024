defmodule AoC2024 do
  @moduledoc """
  Documentation for `AoC2024`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AoC2024.hello()
      :world

  """
  def hello do
    :world
  end

  def parse(input_text, mapper_fn \\ fn {row, _} -> row end) do
    input_text
    |> String.split("\n", trim: true)
    |> Enum.with_index()
    |> Enum.map(mapper_fn)
  end

  def load_text(filename) do
    File.read!(filename)
  end
end
