# Make sure to use this gem in the project
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        {
          name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_point_scored(player_name)
  # Given a name, we want to return the
  # points that they scored

  # game_hash
  # 1. Iterate through game_hash
  # 2. COMPARING player_name to the values through each iteration
  # 3. Once it matches, return the points


  # Making a big ol' array of players
  find_player(player_name)[:points]
end


def shoe_size(player_name)

  # 1. Gather all the players together in array
  # 2. Iterate over them till you find the person whose name matches
  # 3. Return their shoe size


  find_player(player_name)[:shoe]
end

def players_array
  game_hash[:home][:players].concat(game_hash[:away][:players])
end

def find_player(player_name)
  # Find the player whose name matches but return the entire hash
  players_array.find do |player_hash|
    player_hash[:name] == player_name
  end

  # .find => Finds the first element that is true
  # .select => Finds a list of elements that are true
  # .map => "Returns an array based off of whatever you want"
  # players_array.each do |player_hash|
  #   if player_hash[:name] == player_name
  #     return player_hash
  #   end
  # end
end

puts num_point_scored("Ben Gordon")
























# # EXERCISE:
# # Define a method called get_names that takes an array of instructors
# # and returns just their names.
# instructors = [
#   {name: 'Alex', hometown: 'upstate ny', mood: 'excited'},
#   {name: 'rachel', hometown: 'maine'},
#   {name: 'maxwell', hometwon: 'brookyln'}
# ]
#
# def get_names(instructors)
#
# end



# def get_players
#
# end


# [1,2,3,4,5,6,7,8,9].select do |num|
#   num.even?
# end



# EXERCISE
# What do the following return?
# arr = (1..100).to_a
