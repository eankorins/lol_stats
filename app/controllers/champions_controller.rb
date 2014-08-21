class ChampionsController < ApplicationController
  before_action :set_champion, only: [:show, :edit, :update, :destroy]

  # GET /champions
  # GET /champions.json
  def index
    @champions = Champion.all.by_name
  end

  # GET /champions/1
  # GET /champions/1.json
  def show
    @champion = Champion.find(params[:id])
    @stats = @champion.stats

  end

  # DELETE /champions/1
  # DELETE /champions/1.json
  def destroy
    @champion.destroy
    respond_to do |format|
      format.html { redirect_to champions_url, notice: 'Champion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion
      @champion = Champion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champion_params
      params.require(:champion).permit(:id, :name, :title, :key, :enemy_tips, :ally_tips, :blurp, :lore, :par_type)
    end
end
