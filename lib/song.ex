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

  defp verse(1) do
    "There was an old woman who swallowed a fly,\n" <>
      "I don't know why she swallowed a fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(2) do
    "There was an old woman who swallowed a spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(3) do
    "There was an old woman who swallowed a bird,\n" <>
      "How absurd! to swallow a bird,\n" <>
      "She swallowed the bird to catch the spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(4) do
    "There was an old woman who swallowed a cat,\n" <>
      "Imagine that! to swallow a cat,\n" <>
      "She swallowed the cat to catch the bird,\n" <>
      "She swallowed the bird to catch the spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(5) do
    "There was an old woman who swallowed a dog,\n" <>
      "What a hog! to swallow a dog,\n" <>
      "She swallowed the dog to catch the cat,\n" <>
      "She swallowed the cat to catch the bird,\n" <>
      "She swallowed the bird to catch the spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(6) do
    "There was an old woman who swallowed a goat,\n" <>
      "Just opened her throat! to swallow a goat,\n" <>
      "She swallowed the goat to catch the dog,\n" <>
      "She swallowed the dog to catch the cat,\n" <>
      "She swallowed the cat to catch the bird,\n" <>
      "She swallowed the bird to catch the spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(7) do
    "There was an old woman who swallowed a cow,\n" <>
      "I don't know how she swallowed a cow!\n" <>
      "She swallowed the cow to catch the goat,\n" <>
      "She swallowed the goat to catch the dog,\n" <>
      "She swallowed the dog to catch the cat,\n" <>
      "She swallowed the cat to catch the bird,\n" <>
      "She swallowed the bird to catch the spider,\n" <>
      "That wriggled and jiggled and tickled inside her,\n" <>
      "She swallowed the spider to catch the fly,\n" <>
      "I don't know why she swallowed the fly,\n" <>
      "Perhaps she'll die.\n\n"
  end
  defp verse(8) do
    "There was an old woman who swallowed a horse,\n" <>
      "She's dead—of course!\n"
  end
end
