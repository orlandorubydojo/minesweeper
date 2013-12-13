require './minesweeper_field.rb'

describe MinesweeperField do
  it 'prints a field with four rows' do
    field = MinesweeperField.create
    expect(field.size).to eq(4)
  end

  it 'prints six columns' do
    field = MinesweeperField.create
    (0...4).each do |x|
      expect(field[x].size).to eq(6)
    end
  end

  it 'contains random mines within field' do
    pass = true
    field = MinesweeperField.create
    (0...4).each do |x|
      (0...6).each do |y|
        if field[x][y] != "_" && field[x][y] != "*"
          pass = false
        end
      end
    end
    expect(pass).to be_true
  end

  describe ".get_field" do
    it "it returns _ or *" do
      field = MinesweeperField.get_field
      expect(['*', '_']).to include(field)
    end
  end

  it 'always randomizes the field' do
    field1, field2 = MinesweeperField.create, MinesweeperField.create
    expect(field1).to_not eq(field2)
  end

  describe ".to_s" do
    it 'returns a string' do
      field = MinesweeperField.create
      expect(field.to_s).to be_kind_of(String)
    end
  end
end
