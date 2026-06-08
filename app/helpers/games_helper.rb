module GamesHelper
  GAME_COVER_IMAGE = "board_game_images/869e8c86f98b372e3ba9a2a4ce33a4203260c04d.jpg"

  CONDITION_LABELS = {
    "mint" => "Mint",
    "excellent" => "Like New",
    "good" => "Good",
    "as_is" => "Damaged"
  }.freeze

  def game_condition_label(game)
    CONDITION_LABELS.fetch(game.condition, game.condition.humanize)
  end

  def formatted_game_price(game)
    number_to_currency(game.price_cents, precision: 2)
  end

  def game_bid_count(game)
    (game.id % 5) + 1
  end

  def game_cover_image(game)
    GAME_COVER_IMAGE
  end
end
