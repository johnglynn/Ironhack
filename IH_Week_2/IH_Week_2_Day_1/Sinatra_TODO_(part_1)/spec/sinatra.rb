class Task

    attr_reader :content, :id, :complete?, 
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete? = false
    end

    def is_complete?
    	@complete?
    end	

    def make_complete!
    	@complete? = true
    end	

end