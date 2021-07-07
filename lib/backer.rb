require "pry"
class Backer
    attr_reader :name, :backer
    @@all = []
    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        b_projects = ProjectBacker.all.select {|project| project.backer == self }
        b_projects.map {|each_p| each_p.project}
    end
end