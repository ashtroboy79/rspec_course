RSpec.describe 'nested hooks' do

  before(:context) do
    puts 'OUTER Before Context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq 2
  end
  
  context 'with condition A' do

    before(:context) do
      puts 'INNER Before Context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'does some more basic math' do
      expect(2 + 2).to eq 4
    end

    it 'does subtraction aswell' do
      expect(4 - 2).to eq 2
    end

  end

end