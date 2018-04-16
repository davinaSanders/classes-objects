require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../sportsteam.rb")

class SportsTeamTest < MiniTest::Test

def setup
  @sports_team = SportsTeam.new("Manchester United", ["Carrick", "Giggs", "Scholes"], "Ferguson")

end

  def test_team_name
    assert_equal("Manchester United", @sports_team.name())
  end

  def test_players
    assert_equal(["Carrick", "Giggs", "Scholes"], @sports_team.players())
  end

  def test_coach
    assert_equal("Ferguson", @sports_team.coach())
  end

  def test_set_coach_new_name
    @sports_team.set_coach_name("Sanders")
    assert_equal("Sanders", @sports_team.coach())
  end

  def test_add_player
    @sports_team.add_player("Davina")
    assert_equal(["Carrick", "Giggs", "Scholes", "Davina"], @sports_team.players())
  end

  def test_does_player_exist
    assert_equal(true, @sports_team.does_player_exist("Carrick"))
  end

  def test_does_player_exist_no
    assert_equal(false, @sports_team.does_player_exist("Davina"))
  end

  def test_count_points
    assert_equal(1, @sports_team.count_points(1))
  end

end
