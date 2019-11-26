module Advent
  module Solvable
    def solution
      raise NotImplementedError
    end

    def resource_path(filename)
      resources_dir = File.expand_path("../resources/", __FILE__)
      File.expand_path(filename, resources_dir)
    end
  end
end