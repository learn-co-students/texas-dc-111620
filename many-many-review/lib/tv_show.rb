class TVShow 

    attr_reader :title, :runtime, :category, :channel

    def initialize(title, runtime, category, channel)
        @title = title
        @runtime = runtime
        @category = category
        @channel = channel
    end
end

