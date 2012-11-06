module Spree
  # UPGRADE_CHECK
  # class AuthorsController < Spree::StoreController
  class AuthorsController < BaseController
    before_filter :load_product, :only => :show
    # rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def index
      @authors = Spree::Author.all
    end

    def show

    end

    private
      def load_product
        @author = Author.find_by_permalink!(params[:id])
      end
  end
end