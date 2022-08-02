class AddParentIdToGuiderCmsCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :guider_cms_categories, :parent, index: true, foreign_key: {to_table: :guider_cms_categories}, type: :uuid
  end
end
