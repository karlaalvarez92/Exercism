COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue',
          'violet',
          'grey',
          'white'
]

class ResistorColorDuo
  def self.value(values)
    "#{COLORS.find_index(values[0])}#{COLORS.find_index(values[1])}".to_i
  end
end

