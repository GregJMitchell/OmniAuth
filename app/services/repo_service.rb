class RepoService
  def self.repos(auth_token)
    response = Faraday.get("https://api.github.com/user/repos", {}, {"Authorization": "token #{auth_token}" })
    JSON.parse(response.body, symbolize_names: true)
  end
end