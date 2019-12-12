class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

        def backers
        ProjectBacker.all.map { |e| 
            if e.project.title == self.title
            e.backer
            end
        }.compact
    end

end