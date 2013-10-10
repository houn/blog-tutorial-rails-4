It's a source code of advanced Ruby on Rails 3 blog tutorial by Robert Huberdeau.
I followed Robert's tutorial step by step with Rails 4.
Everything is working great, SQLite 3 exception is handled in migration, all visible deprecation warnings has been eliminated.
This is a good starting point for a real blogging application.




To make it work type in Terminal following:
rake db:migrate

rails console
r = Role.new
r.name = 'Admin'
r.save
r = Role.new
r.name = 'Moderator'
r.save
r = Role.new
r.name = 'Member'
r.save
exit

Then run server:
rails server

Open in your browser: localhost:3000
Click "New artilcle".
Then click "Sign up".
Enter mail, password and confirmation.
Create your account.
Go back to Terminal and stop server by pressing Ctrl+C.

rails console
u = User.first
u.user_ids = [1]
u.save
exit

rails server

That's all - use it and improve it!




Here are original tutorial links:
http://www.roberthuberdeau.com/articles/4-how-to-create-a-blog-in-ruby-on-rails-3
http://www.roberthuberdeau.com/articles/6-how-to-create-a-blog-in-ruby-on-rails-3-part-two
http://www.roberthuberdeau.com/articles/9-blog-tutorial-part-3
http://www.roberthuberdeau.com/articles/10-blog-tutorial-part-4-how-to-create-a-sitemap
http://www.roberthuberdeau.com/articles/12-blog-tutorial-part-5-adding-authors-and-displaying-tags
http://www.roberthuberdeau.com/articles/13-blog-tutorial-part-6-better-nested-validation
http://www.roberthuberdeau.com/articles/14-blog-tutorial-part-7-publishing-and-pagination

Thanks to Robert!