class API
    # set up like a class
    #responsible for talking w/ our API
        #make calls to our api

    attr_accessor :query
    
    def initialize(query)
        @query = query
    end

    def fetch_shows
        url = "http://api.tvmaze.com/shows/#{query}?embed[]=seasons&embed[]=episodes&embed[]=cast"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        shows = JSON.parse(response)
    end

    def create_shows
        self.fetch_shows.each{|show| Show.new(show["name"], show["status"], show["rating"], ,show["genres"]show["summary"])}
    end


end