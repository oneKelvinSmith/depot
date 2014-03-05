Product.delete_all

Product.create! title: 'Programming Ruby',
                description: %{<p>Ruby is the fastest growing and most exciting dynamic language out there. If you need to get working programs delivered fast, you should add Ruby to your toolbox</p>},
                image_url: 'ruby.jpg',
                price: 49.95

Product.create! title: 'Madness',
                description: %{A journey into the mind of a madman},
                image_url: 'madness.jpg',
                price: 99.95

Product.create! title: 'Crafting Rails 4 Application',
                description: %{Another awesome book},
                image_url: 'rails.jpg',
                price: 49.95

Product.create! title: 'Learn Python the Hard Way',
                description: %{Some more literature on stuffs},
                image_url: 'python.jpg',
                price: 49.95