# frozen_string_literal: true

class Animal
  attr_reader :name, :event

  def initialize(name, event = nil)
    @name   = name
    @event  = event
  end

  def swallow(previous_animal)
    if previous_animal == 'spider'
      "She swallowed the #{name} to catch the #{previous_animal} that wriggled and jiggled and tickled inside her."
    else
      "She swallowed the #{name} to catch the #{previous_animal}."
    end
  end
end

class FoodChain
  ANIMALS = [
    Animal.new('fly'),
    Animal.new('spider', 'It wriggled and jiggled and tickled inside her.'),
    Animal.new('bird', 'How absurd to swallow a bird!'),
    Animal.new('cat', 'Imagine that, to swallow a cat!'),
    Animal.new('dog', 'What a hog, to swallow a dog!'),
    Animal.new('goat', 'Just opened her throat and swallowed a goat!'),
    Animal.new('cow', 'I don\'t know how she swallowed a cow!')
  ].freeze

  def self.song
    verses = []
    passed_animals = []
    song = []
    ANIMALS.each do |animal|
      song << "I know an old lady who swallowed a #{animal.name}."

      if animal.event
        verses << animal.swallow(passed_animals.last)
        song << animal.event
      end

      verses.reverse.each do |verse|
        song << verse
      end

      song << "I don't know why she swallowed the fly. Perhaps she'll die.\n"
      passed_animals << animal.name
    end

    song << do_final
    song.join("\n")
  end

  def self.do_final
    "I know an old lady who swallowed a horse.\n"\
    "She's dead, of course!\n"
  end
end
