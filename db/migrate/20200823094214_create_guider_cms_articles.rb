class CreateGuiderCmsArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :guider_cms_articles, id: :uuid do |t|
      t.text :title
      t.text :description
      t.text :body
      t.references :author, index: true, foreign_key: {to_table: GuiderCms.author_class.downcase.pluralize}, type: :uuid
      t.references :category, foreign_key: {to_table: "guider_cms_categories"}, null: false, type: :uuid

      t.timestamps
    end
  end
end
