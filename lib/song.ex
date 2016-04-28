defmodule SONG do

  def lyrics() do
    lyrics( Enum.to_list(1..8), [])
  end

  defp lyrics([], acc) do
    List.foldl(acc, "", &(&1 <> &2))
  end
  defp lyrics([head|tail], acc) do
    lyrics(tail, [verse(head) | acc] )
  end

  defp swallow(predator, target) do
    "She swallowed the #{predator} to catch the #{target},\n"
  end

  defp begin_verse(animal) do
    "There was an old woman who swallowed a #{animal},\n"
  end

  defp middle_verse() do
    "That wriggled and jiggled and tickled inside her,\n"
  end

  defp end_verse(:first) do
    "I don't know why she swallowed a fly,\n" <>
    "Perhaps she'll die.\n\n"
  end
  defp end_verse(_) do
    "I don't know why she swallowed the fly,\n" <>
    "Perhaps she'll die.\n\n"
  end

  defp verse(1) do
    begin_verse('fly') <>
    end_verse(:first)
  end
  defp verse(2) do
    begin_verse('spider') <>
      middle_verse() <>
      swallow("spider","fly") <>
      end_verse(:not_first)
  end
  defp verse(3) do
    begin_verse('bird') <>
      "How absurd! to swallow a bird,\n" <>
      swallow("bird", "spider") <>
      middle_verse() <>
      swallow("spider", "fly") <>
      end_verse(:not_first)
  end
  defp verse(4) do
    begin_verse('cat') <>
      "Imagine that! to swallow a cat,\n" <>
      swallow("cat", "bird") <>
      swallow("bird", "spider") <>
      middle_verse() <>
      swallow("spider", "fly") <>
      end_verse(:not_first)
  end
  defp verse(5) do
    begin_verse('dog') <>
      "What a hog! to swallow a dog,\n" <>
      swallow("dog", "cat") <>
      swallow("cat", "bird") <>
      swallow("bird", "spider") <>
      middle_verse() <>
      swallow("spider", "fly") <>
      end_verse(:not_first)
  end
  defp verse(6) do
    begin_verse('goat') <>
      "Just opened her throat! to swallow a goat,\n" <>
      swallow("goat", "dog") <>
      swallow("dog", "cat") <>
      swallow("cat", "bird") <>
      swallow("bird", "spider") <>
      middle_verse() <>
      swallow("spider", "fly") <>
      end_verse(:not_first)
  end
  defp verse(7) do
    begin_verse('cow') <>
      "I don't know how she swallowed a cow!\n" <>
      swallow("cow", "goat") <>
      swallow("goat", "dog") <>
      swallow("dog", "cat") <>
      swallow("cat", "bird") <>
      swallow("bird", "spider") <>
      middle_verse() <>
      swallow("spider", "fly") <>
      end_verse(:not_first)
  end
  defp verse(8) do
    "There was an old woman who swallowed a horse,\n" <>
      "She's dead—of course!\n"
  end
end
