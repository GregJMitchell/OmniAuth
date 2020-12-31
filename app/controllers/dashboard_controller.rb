class DashboardController < ApplicationController
  def show
    repos = RepoFacade.repos(current_user.token)
    @repos = Repo.sort_by_private(repos)
    require 'pry'; binding.pry
  end
end
