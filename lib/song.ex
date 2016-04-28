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
    swallowed_animals = ['fly']
    begin_verse('fly') <>
    end_verse(swallowed_animals)
  end
  defp verse(2) do
    swallowed_animals = [h|t] = ['spider', 'fly']
    begin_verse(h) <>
      end_verse(swallowed_animals)
  end
  defp verse(3) do
    swallowed_animals = [h|t] = ['bird', 'spider', 'fly']
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals)
  end
  defp verse(4) do
    swallowed_animals = [h|t] = ['cat', 'bird', 'spider', 'fly']
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals)
  end
  defp verse(5) do
    swallowed_animals = [h|t] = ['dog', 'cat', 'bird', 'spider', 'fly']
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals)
  end
  defp verse(6) do
    swallowed_animals = [h|t] = ['goat', 'dog', 'cat', 'bird', 'spider', 'fly']
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals)
  end
  defp verse(7) do
    swallowed_animals = [h|t] = ['cow', 'goat', 'dog', 'cat', 'bird', 'spider', 'fly']
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals)
  end
  defp verse(8) do
    swallowed_animals = [h|t] = ['horse', 'cow', 'goat', 'dog', 'cat', 'bird', 'spider', 'fly']
    "There was an old woman who swallowed a horse,\n" <>
      "She's dead—of course!\n"
  end

  defp swallow(predator, target) do
    "She swallowed the #{predator} to catch the #{target},\n"
  end

  defp swallowed_animals(animals) do
    swallowed_animals(animals, [])
  end

  defp swallowed_animals([first, second], acc) do
    List.foldl(acc, "", &(&1 <> &2))
  end
  defp swallowed_animals([first | t]=[first, second | _], acc) do
    swallowed_animals(t, [swallow(first, second) | acc])
  end

  defp begin_verse(animal) do
    "There was an old woman who swallowed a #{animal},\n"
  end

  defp middle_verse() do
    "That wriggled and jiggled and tickled inside her,\n"
  end

  defp end_verse([first]) do
    "I don't know why she swallowed a #{first},\n" <>
    "Perhaps she'll die.\n\n"
  end
  defp end_verse(animals) do
    [first, second | _] = Enum.reverse(animals)
    middle_verse() <>
      swallow(second, first) <>
      "I don't know why she swallowed the #{first},\n" <>
      "Perhaps she'll die.\n\n"
  end

  defp exclamation('bird') do
    "How absurd! to swallow a bird,\n"
  end
  defp exclamation('cat') do
    "Imagine that! to swallow a cat,\n"
  end
  defp exclamation('dog') do
    "What a hog! to swallow a dog,\n"
  end
  defp exclamation('goat') do
    "Just opened her throat! to swallow a goat,\n"
  end
  defp exclamation('cow') do
    "I don't know how she swallowed a cow!\n"
  end
end
