class Project
    attr_reader :title, :backer

@@all = []
    def initialize(title)
        @title = title

@@all << self
    end

def self.all
@@all
end

    def add_backer(backer)
    ProjectBacker.new(self, backer)
    end

   def backers
    filtered_backers = ProjectBacker.all.select {|backer|backer.project == self}
filtered_backers.collect {|p|p.backer}
end

    ####
end##