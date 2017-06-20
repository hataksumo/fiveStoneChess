class GameManager
{
	constructor()
	{
		this.m_players = new Array();
	}
	addPlayer(v_player)
	{
		this.m_players.push(v_player);
	}
}



exports.GameManager = GameManager