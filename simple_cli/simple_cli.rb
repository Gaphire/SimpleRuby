#!/usr/bin/env ruby
# simple_cli.rb

##
# Parses command line options.
#

class SimpleCLI

  OPTIONS = {
    :version  => ['-v', '--version'],
    :help     => ['-h', '--help'],
    :reset    => ['r', '--reset'],
  }

USAGE =<<END_OF_USAGE

  This program understands the following options:
    -v, --version : displays the current version of the program
    -h, --help    : displays a message with usage instructions
    -r, --reset   : resets the program

  With no command-line options, the program performs its default behavior.

END_OF_USAGE

    VERSION = "Simple Cli version 0.5"

  # METHODS

  def parse_opts(args)
    return option_by_args(args[0]) if understands_args?(args)
    # options are note understandable, therefore display_usage
    display(USAGE)
  end

  private

  def display(content)
    puts content
  end

  def do_default()
    puts 'I am performing my default behavior'
  end

  def option_by_args(arg)
    return display(VERSION) if OPTIONS[:version].include?(arg)
    return display(USAGE)   if OPTIONS[:help].include?(arg)
    return reset()          if OPTIONS[:reset].include?(arg)
    do_default()
  end

  def reset()
    puts 'I am resetting myself.'
  end

  def understand_args?(args)
    OPTIONS.keys.any? { | KEY | OPTIONS[key].include?(args[0]) }
  end
end


