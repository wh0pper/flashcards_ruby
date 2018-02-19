class Entry
  @@entries = []
  attr_accessor :word, :definitions

  def initialize(word)
    @@entries.push(self)
    @word = word
    @definitions = []
  end

  def self.list
    @@entries
  end

  def self.find(word)
    @@entries.each do |entry|
      return entry if entry.word == word
    end
  end

  def define(definition)
    @definitions.push(definition)
  end
end
