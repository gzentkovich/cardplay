defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 52 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 52
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
  end

  test "deal hands out 5 cards" do
    deck = Cards.create_deck
    {hand, _deck} = Cards.deal(deck, 5)
    deck_length = length(hand)
    assert deck_length == 5
  end
end
