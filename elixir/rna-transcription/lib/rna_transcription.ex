defmodule RnaTranscription do
  @spec to_rna(<<_::8>>) :: <<_::8>>
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    List.to_charlist(
      Enum.map(dna, fn n -> <<n>> end) |>
      Enum.map(fn n ->
        case n do
          "G" -> "C"
          "C" -> "G"
          "T" -> "A"
          "A" -> "U"
        end
    end))
  end
end
