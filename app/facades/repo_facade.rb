class RepoFacade
  def self.repos(auth_token)
    json = RepoService.repos(auth_token)
    json.map do |data|
      Repo.new(data)
    end
  end
end