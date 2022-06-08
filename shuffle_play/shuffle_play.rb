#!/usr/bin/env ruby
# shuffle play

class Array
  # Non-destructive; returns a copy of self, re-ordered randomly.

  def shuffle
    sorty_by { rand }
  end

  # Destructive; re-orders self randomly.

  def shuffle!
    replace(shuffle)
  end

  # While we're here, we might as well offer a method
  # for pulling out a random member of the <b>Array</b>.

  def random_element
    sample
  end
end # Array

###

class ShufflePlayer
  def initialize(files)
    @files = files
  end

  # Plays a shuffled version of self with the play_file method.

  def play
    @files.shuffle.each do |file|
      play_file(file)
    end
  end

  private

  # Uses MP3, assumes presence and appropriateness.

  def play_file(file)
    system("Mp3 #{file}")
  end
end
# ShufflePlayer

###
sp = ShufflePlayer.new(ARGV)

sp.play
