def game_hash
  hashketball = Hash.new
  hashketball[:home] = {
    :team_name => "Brooklyn Nets",
    :colors => "Black, White",
    :players=>
      [
        {"Alan Anderson" =>
        {
        :player_name=>"Alan Anderson",
          :number=>0,
          :shoe=>16,
          :num_points_scored=>22,
          :rebounds=>12,
          :assists=>12,
          :steals=>3,
          :blocks=>1,
          :slam_dunks=>1}
        },
          {"Reggie Evans"=>{
            :player_name=>"Reggie Evans",
          :number=>30,
          :shoe=>14,
          :num_points_scored=>12,
          :rebounds=>12,
          :assists=>12,
          :steals=>12,
          :blocks=>12,
          :slam_dunks=>7}
          },
          {"Brook Lopez"=>{
            :player_name=>"Brook Lopez",
          :number=>11,
          :shoe=>17,
          :num_points_scored=>17,
          :rebounds=>19,
          :assists=>10,
          :steals=>3,
          :blocks=>1,
          :slam_dunks=>15}
          },
          {"Mason Plumlee"=>{
            :player_name=>"Mason Plumlee",
          :number=>1,
          :shoe=>19,
          :num_points_scored=>26,
          :rebounds=>12,
          :assists=>6,
          :steals=>3,
          :blocks=>8,
          :slam_dunks=>5}
          },
          {"Jason Terry"=>{
            :player_name=>"Jason Terry",
          :number=>31,
          :shoe=>15,
          :num_points_scored=>19,
          :rebounds=>2,
          :assists=>2,
          :steals=>4,
          :blocks=>11,
          :slam_dunks=>1}
          }
        ]
    }
  hashketball[:away] = {
      :team_name => "Charlotte Hornets",
      :colors => "Turquoise, Purple",
      :players =>
      [
          {"Jeff Adrien" =>{
        :player_name=>"Jeff Adrien",
          :number=>4,
          :shoe=>18,
          :num_points_scored=>10,
          :rebounds=>1,
          :assists=>1,
          :steals=>2,
          :blocks=>7,
          :slam_dunks=>2}
        },
        {"Bismak Biyombo" =>{
        :player_name=>"Bismak Biyombo",
          :number=>0,
          :shoe=>16,
          :num_points_scored=>12,
          :rebounds=>4,
          :assists=>7,
          :steals=>7,
          :blocks=>15,
          :slam_dunks=>10}
        },
        {"DeSagna Diop" =>{
        :player_name=>"DeSagna Diop",
          :number=>2,
          :shoe=>14,
          :num_points_scored=>24,
          :rebounds=>12,
          :assists=>12,
          :steals=>4,
          :blocks=>5,
          :slam_dunks=>5}
        },
        {"Ben Gordon" =>{
        :player_name=>"Ben Gordon",
          :number=>8,
          :shoe=>15,
          :num_points_scored=>33,
          :rebounds=>3,
          :assists=>2,
          :steals=>1,
          :blocks=>1,
          :slam_dunks=>0}
          },
          {"Brendan Haywood" =>{
        :player_name=>"Brendan Haywood",
          :number=>33,
          :shoe=>15,
          :num_points_scored=>6,
          :rebounds=>12,
          :assists=>12,
          :steals=>22,
          :blocks=>5,
          :slam_dunks=>12}
            }

          ]

  }
  hashketball
end

def num_points_scored(name)
    array = []
    game_hash.each do |teams, team_info|
        team_info[:players].each do |a|
            if "#{a.flatten[0]}" == "#{name}"
               array << a.flatten[1][:num_points_scored]
            end
   end
   end
   array[0]
end

def shoe_size(name)
    array = []
    game_hash.each do |teams, team_info|
        team_info[:players].each do |a|
            if "#{a.flatten[0]}" == "#{name}"
          array << a.flatten[1][:shoe]
            end
   end
   end
   array[0]
end

def team_colors(name)
    array = []
    game_hash.each do |teams, team_info|
        if team_info[:team_name] == "#{name}"
            array << team_info[:colors]

   end
   end
   array.to_s.gsub!(/[^0-9A-Za-z, ]/, '').split(", ")
   end

def team_names
    team_array = []
  team_array << game_hash[:home][:team_name]
  team_array << game_hash[:away][:team_name]
  team_array
end

def player_numbers(team)
  jerzees = []
  game_hash.each do |teams, team_info|
      if team_info[:team_name] == "#{team}"
      puts team_info[:players].flatten[0]
  end
end
end








