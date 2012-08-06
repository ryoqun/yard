module Gem
  class << self
    undef source_index
    # Returns the Gem::SourceIndex of specifications that are in the Gem.path
    def source_index
      @@source_index ||= SourceIndex.from_installed_gems
    end
  end
end
