require "pry"

class Backer

    attr_reader :name

    def initialize (name)
        @name = name
    end

    def back_project(project)
        @backer = self
        ProjectBacker.new(project, @backer)
    end

    def backed_projects
        ProjectBacker.all.map { |item| item.project if item.backer == self }.compact
    end


end