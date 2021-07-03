class Backer

attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def backed_projects
        ProjectBacker.all.map{|e|
        if e.backer.name == self.name
        e.project
        end}.compact
    end
end