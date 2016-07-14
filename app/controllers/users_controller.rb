class UsersController < ApplicationController

  def show
    @service = GithubService.new(current_user)
    @followers = GithubProfile.followers(current_user)
    @starred = GithubProfile.starred(current_user)
    @following = GithubProfile.following(current_user)
  end
  
end
