require_relative('hangman')

let(:Hangman) do
  Hangman.new('google')
end

describe 'Hangman game' do

  it "lets you know that the letter exists" do
    expect(Hangman)
  end


end