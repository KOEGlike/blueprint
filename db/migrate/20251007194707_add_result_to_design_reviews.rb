class AddResultToDesignReviews < ActiveRecord::Migration[8.0]
  def change
    add_column :design_reviews, :result, :integer
  end
end
