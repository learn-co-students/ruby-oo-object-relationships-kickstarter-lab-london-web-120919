class Project 

    attr_reader :title 

    def initialize(title)
        @title = title
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        array = []
        ProjectBacker.all.map do |project| 
            if project.project == self 
                array << project.backer
            end
        end
        array
    end 
end 