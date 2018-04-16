require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../sportsteam.rb")

class SportsTeamTest < MiniTest::Test

def setup
  @sports_team = SportsTeam.new("Manchester United", ["Carrick", "Giggs", "Scholes"], "Ferguson")

end

  def test_team_name
    assert_equal("Manchester United", @sports_team.get_team_name())
  end

  def test_players
    assert_equal(["Carrick", "Giggs", "Scholes"], @sports_team.get_players())
  end

  def test_coach
    assert_equal("Ferguson", @sports_team.get_coach())
  end

end
