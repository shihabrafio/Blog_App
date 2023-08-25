user_1 = User.create(name: 'Tom', photo: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=80', bio: 'Teacher from Mexico.')

user_2 = User.create(name: 'Lilly', photo: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80', bio: 'Teacher from Poland.')

post_1 = Post.create(title: 'Mastering the Art of Time Management', text: 'Balancing work, family, and personal time in today fast-paced world is possible through effective strategies like task prioritization, SMART goals, and the Pomodoro Technique, leading to enhanced productivity and reduced stress.', author_id: user_1.id)
post_2 = Post.create(title: 'Exploring the Wonders of Deep Sea Life', text: 'The ocean depths hold a myriad of fascinating creatures, from bioluminescent jellyfish to colossal squid with basketball-sized eyes.', author_id: user_1.id)
post_3 = Post.create(title: 'Discovering the Culinary Delights of Thailand', text: 'Thai cuisine blend of flavors, aromas, and spices creates a symphony of taste that delights food enthusiasts whether savoring street food in markets or indulging in gourmet creations at upscale restaurants, making exploring Thai cuisine a culinary adventure.', author_id: user_1.id)
post_4 = Post.create(title: 'Unveiling the Mysteries of Ancient Civilizations', text: 'emnants of ancient civilizations, like the pyramids of Egypt and stone cities of the Maya, provide insights into bygone cultures as archaeologists decipher clues from architecture, art, and written records, offering a deeper understanding of our shared human history and ingenuity.', author_id: user_1.id)

post_5 = Post.create(
    title: 'Exploring the Streets of Paris',
    text: 'Walking along the charming streets of Paris, you can discover hidden gems, from cozy cafes to world-famous landmarks like the Eiffel Tower and Louvre Museum.',
    author_id: user_2.id
  )
  
post_6 = Post.create(
    title: 'Savoring Authentic Italian Cuisine',
    text: 'Italy is a food lover\'s paradise, with dishes like pasta, pizza, and gelato that will tantalize your taste buds. Exploring the local food scene is a must!',
    author_id: user_2.id
  )
  
post_7 = Post.create(
    title: 'The Future of Artificial Intelligence',
    text: 'Artificial intelligence is rapidly advancing, with applications ranging from self-driving cars to medical diagnostics. Stay tuned for the latest developments!',
    author_id: user_2.id
  )
  
comment_1 = Comment.create(text: 'This is a great post!', author_id: user_2.id, post_id: post_1.id)
comment_2 = Comment.create(text: 'I love this post!', author_id: user_2.id, post_id: post_2.id)
comment_3 = Comment.create(text: 'Awesome!', author_id: user_2.id, post_id: post_3.id)
comment_4 = Comment.create(text: 'Fantastic!', author_id: user_2.id, post_id: post_4.id)
comment_5 = Comment.create(text: 'Great!', author_id: user_2.id, post_id: post_4.id)
comment_6 = Comment.create(text: 'Good!', author_id: user_2.id, post_id: post_4.id)
comment_7 = Comment.create(text: 'Nice!', author_id: user_1.id, post_id: post_5.id)
comment_8 = Comment.create(text: 'Cool!', author_id: user_1.id, post_id: post_6.id)
comment_9 = Comment.create(text: 'Amazing!', author_id: user_1.id, post_id: post_7.id)


like_1 = Like.create(author_id: user_2.id, post_id: post_1.id)
like_2 = Like.create(author_id: user_2.id, post_id: post_2.id)
like_3 = Like.create(author_id: user_2.id, post_id: post_3.id)
like_4 = Like.create(author_id: user_2.id, post_id: post_4.id)
like_5 = Like.create(author_id: user_1.id, post_id: post_5.id)
like_6 = Like.create(author_id: user_1.id, post_id: post_6.id)
like_7 = Like.create(author_id: user_1.id, post_id: post_7.id)