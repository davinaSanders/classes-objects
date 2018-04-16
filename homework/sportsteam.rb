



class SportsTeam
attr_reader(:name, :players, :coach, :points)

  def initialize (name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_team_name
  #   @name
  # end
  #
  # def get_players
  #   @players
  # end
  #
  # def get_coach
  #   @coach
  # end

  def set_coach_name(new_name)
    @coach = new_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def does_player_exist(check_player)
    for player in @players
      if player == check_player
        return true
      else
        return false
      end
    end
  end

  def count_points(wins)
    if wins >= 0
    @points += wins
  end
end

end
