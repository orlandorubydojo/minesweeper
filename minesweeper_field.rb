class MinesweeperField
  def self.create
    [
      (0...6).map {get_field},
      (0...6).map {get_field},
      (0...6).map {get_field},
      (0...6).map {get_field}
    ]
  end
  def self.get_field
    if rand(2) == 0
      "_"
    else
      "*"
    end
  end
end
