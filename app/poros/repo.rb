class Repo
  attr_reader :id, :name, :private
  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @private = data[:private]
  end

  def self.sort_by_private(array)
    private_repos = array.find_all { |repo| repo.private == true }
    public_repos = array.find_all { |repo| repo.private == false }
    { private: private_repos,
      public: public_repos }
  end
end
