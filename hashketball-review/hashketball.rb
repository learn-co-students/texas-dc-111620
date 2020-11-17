# Write your code here!

require 'pry'

def game_hash
    {
      home: {
        team_name: "Brooklyn Nets",
        colors: ["Black", "White"],
        players: [
          {
            player_name: "Alan Anderson",
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
            player_name: "Reggie Evans",
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
            player_name: "Brook Lopez",
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
            player_name: "Mason Plumlee",
            number: 1,
            shoe: 19,
            points: 26,
            rebounds: 11,
            assists: 6,
            steals: 3,
            blocks: 8,
            slam_dunks: 5
          },
          {
            player_name: "Jason Terry",
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
            player_name: "Jeff Adrien",
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
            player_name: "Bismack Biyombo",
            number: 0,
            shoe: 16,
            points: 12,
            rebounds: 4,
            assists: 7,
            steals: 22,
            blocks: 15,
            slam_dunks: 10
          },
          {
            player_name: "DeSagna Diop",
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
            player_name: "Ben Gordon",
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
            player_name: "Kemba Walker",
            number: 33,
            shoe: 15,
            points: 6,
            rebounds: 12,
            assists: 12,
            steals: 7,
            blocks: 5,
            slam_dunks: 12
          }
        ]
      }
    }
  end
# delegated method
def find_player(name)
    selected_player = {}
    game_hash.each do |home_away, team_info|
        team_info[:players].each do | player |      
            if player[:player_name] == name
                selected_player = player
            end
        end
    end
    selected_player
end
 def num_points_scored(name)
    # game_hash.each do |home_away, team_info|
    #     # we want to iterate through team_info 
    #     # team_info.each do | k, v | 
    #     #     binding.pry
    #     # end

    #     team_info[:players].each do | player | 
    #         # we chose the players key in team_infor hash, to directly iterate and find our matching name 
    #         # binding.pry
    #         if player[:player_name] == name
    #              total_points = player[:points]
    #         end
    #     end
    # end
    player = find_player(name)
    player[:points]
 end 

 def shoe_size(name)
    player = find_player(name)
    player[:shoe]
 end

 def team_colors(name)
    colors = []
    game_hash.each do | h_and_a, team_info |
       if team_info[:team_name] == name
        colors = team_info[:colors]
       end
    end
    colors
 end

 def team_names
    # iterate through hash
    [ game_hash[:home][:team_name], game_hash[:away][:team_name] ]
    # grab both team names and add them to array 
    # return the array

    # team_array = [] 
    # game_hash.each do | h_and_a, team_info |
    #      team_array.push(team_info[:team_name])
    #     #  team_array << team_info[:team_name]
    # end
    # team_array
 end

 def player_numbers(team_name)
    # return the player jersey numbers 
    # array of jersey numbers
    jersey_array = [] 

    game_hash.map do | k , v | 
        v[:players].map do | value2 |
        if v[:team_name] == team_name
            jersey_array << value2[:number]
        end
    end
    # v[:players].map {| value2 |
    #     if v[:team_name] == team_name
    #         jersey_array << value2[:number]
    #     end
    # }
end
    
    jersey_array
 end

 def player_stats(name)
    player = find_player(name) #find player
    player.delete(:player_name) #remove player_name key value pair
    player # return AS-IS 
 end

 def big_shoe_rebounds
    # find biggest shoe size
    big_shoe = 0 
    big_shoe_rebound = 0
    game_hash.each do | k, v | 
        v[:players].each do | player |
            if player[:shoe] > big_shoe 
                big_shoe = player[:shoe]
                big_shoe_rebound = player[:rebounds]
            end
        end
    end
    # then we return that number of rebounds 
    big_shoe_rebound
 end









