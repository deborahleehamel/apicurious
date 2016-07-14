class GithubProfile < OpenStruct
  attr_reader :service

  # def initialize(user)
  #   @user = user
  # end

  def self.service(current_user)
     @service ||= GithubService.new(current_user)
  end

  def self.followers(current_user)
     service(current_user).followers.map { |github_profile| GithubProfile.new(github_profile)}
  end
end