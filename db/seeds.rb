# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

cat1 = Category.create!(name: "Categoria 1")
cat2 = Category.create!(name: "Categoria 2")
cat3 = Category.create!(name: "Categoria 3")

cat1.products.build(name: "Producto 1", price: 1990)
cat2.products.build(name: "Producto 2", price: 2990)
cat3.products.build(name: "Producto 3", price: 5990)

#7.3.
Product.create!(name: "producto 4", price: 3590, category_id: cat1.id)
Product.create!(name: "producto 5", price: 11990, category_id: cat2.id)
Product.create!(name: "producto 6", price: 35990, category_id: cat3.id)


Product.last.destroy

prod = Product.last
prod.premium = true
prod.save

Category.all.each do |category|
	category.name = category.name.upcase
	category.save
end


