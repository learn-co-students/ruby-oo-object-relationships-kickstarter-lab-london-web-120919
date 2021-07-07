class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        p_backers = ProjectBacker.all.select{|projectB| projectB.project == self}
        p_backers.map {|each_b| each_b.backer}
    end
end