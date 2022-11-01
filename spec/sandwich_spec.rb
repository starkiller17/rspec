Sandwich = Struct.new(:taste, :toppings)
RSpec.describe 'And ideal sandwich' do
  # let
  # Binding a name to the result of a computation.
  # RSpec will run the block the first time any example calls sandwich.
  let(:sandwich) { Sandwich.new('delicious', []) }

  # Helper method
  # Has several issues when storing falsey values
  # because every time we call the method will create a new instance.
  # def sandwich
  #   @sandwich ||= Sandwich.new('delicious', [])
  # end

  # Hook
  # If you need to clear out a test database before each example
  # before { @sandwich = Sandwich.new('delicious', []) }
  it 'is delicious' do
    
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings
    
    expect(toppings).not_to be_empty
  end
end