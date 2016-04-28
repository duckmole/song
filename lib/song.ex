defmodule SONG do

  def lyrics() do
    animals = ['horse', 'cow', 'goat', 'dog', 'cat', 'bird', 'spider', 'fly']
    [first | other] = Enum.reverse(animals)
    lyrics( [first], other, [])
  end

  defp lyrics(all_animals, [], acc) do
    final_acc = [verse(all_animals, :last) | acc]
    List.foldl(final_acc, "", &(&1 <> &2))
  end
  defp lyrics(current_swallowed, [next_swallowed | t], acc) do
    next = [next_swallowed | current_swallowed]
    lyrics(next, t, [verse(current_swallowed, :not_last) | acc] )
  end

  defp verse(swallowed_animals=[h|_], :last) do
    begin_verse(h) <>
    end_verse(swallowed_animals, :last)
  end
  defp verse(swallowed_animals=[h|_], step) when length(swallowed_animals) < 3 do
    begin_verse(h) <>
    end_verse(swallowed_animals, step)
  end
  defp verse(swallowed_animals=[h|_], step) do
    begin_verse(h) <>
      exclamation(h) <>
      swallowed_animals(swallowed_animals) <>
      end_verse(swallowed_animals, step)
  end

  defp swallow(predator, target) do
    "She swallowed the #{predator} to catch the #{target},\n"
  end

  defp swallowed_animals(animals) do
    swallowed_animals(animals, [])
  end

  defp swallowed_animals([_, _], acc) do
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

  defp end_verse(_, :last) do
    "She's dead—of course!\n"
  end
  defp end_verse([first], _) do
    why_swallowed('a', first)
  end
  defp end_verse(animals, _) do
    [first, second | _] = Enum.reverse(animals)
    middle_verse() <>
      swallow(second, first) <>
      why_swallowed('the', first)
  end

  defp why_swallowed(article, animal) do
    "I don't know why she swallowed #{article} #{animal},\n" <>
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
