class TreasuresController < ApplicationController
    def index
        @treasures = Treasure.all 
    end

    def new
        @treasure = Treasure.new
    end

    def create
        @treasure = Treasure.create(treasure_params)
        redirect_to treasures_path
    end

    private

    def treasure_params
        params.require(:treasure).permit(:item)
    end
end

