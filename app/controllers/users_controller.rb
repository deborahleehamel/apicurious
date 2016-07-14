class UsersController < ApplicationController

  def show
    # if current_user
    @service = GithubService.new(current_user)
    # @current_user = current_user
    # @github_profile = GithubProfile.new(current_user)
    @followers = GithubProfile.followers(current_user)
  #  end
  end
end
