require ("rspec")
require ("scrabble_score")

describe('String#scrabble_score') do
  it ("returns a scrabble score for a letter") do
    expect("A".scrabble()).to(eq(1))
  end
  it ("returns a scrabble score for two letters") do
    expect("Ab".scrabble()).to(eq(4))
  end
  it ("returns a scrabble score for a whole word") do
    expect("Zebra".scrabble()).to(eq(16))
  end
end
