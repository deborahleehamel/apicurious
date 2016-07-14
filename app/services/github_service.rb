class GithubService
  attr_reader :connection, :current_user

  def initialize(current_user)
    @current_user = current_user
    @connection = Faraday.new('https://api.github.com')
    @connection.headers["Authorization"] = "token #{@current_user.token}"
  end

  def followers
    get("/users/#{current_user.username}/followers")
  end
  #
  def get(path)
    JSON.parse(connection.get(path).body)
  end
end