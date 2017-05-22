class AddPortfolioReferenceToTechnology < ActiveRecord::Migration[5.1]
  def change
    add_reference :technologies, :portfolio, type: :integer, foreign_key: true, index: true
  end
end
