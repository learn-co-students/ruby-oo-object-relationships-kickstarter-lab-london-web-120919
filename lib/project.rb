class Project

    attr_reader :title

    def initialize (title)
        @title = title
    end

    def add_backer(backer)
        @project = self
        ProjectBacker.new(@project, backer)
    end

    def backers
        ProjectBacker.all.map { |item| item.backer if item.project == self }.compact
    end
    

end