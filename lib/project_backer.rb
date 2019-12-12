class ProjectBacker
    attr_reader :project, :backer
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        save
    end

    def save
        ProjectBacker.all.push(self)
    end

    def self.all
        @@all
    end
end