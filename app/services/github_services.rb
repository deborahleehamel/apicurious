class GithubService
  def initialize(user)
    @user = user
    @connection = Faraday.new('https://api.github.com')
    @connection.headers["Authorization"] = "token #{@user.token}"
  end

  def parse(response)
    JSON.parse(response.body)
  end
end
