class CreateGuiderCmsCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :guider_cms_categories, id: :uuid do |t|
      t.string :classification

      t.timestamps
    end
  end
end
