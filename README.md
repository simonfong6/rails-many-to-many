# rails-many-to-many
Example of many to many relation in rails

# Setup
Checking installed rails versions.
```bash
gem list rails | grep ^rails\
```

Example not showing `5.2.3`
```
simon@Simons-MBP rails-many-to-many % gem list rails | grep \^rails 
rails (5.2.4.2)
rails-dom-testing (2.0.3)
rails-html-sanitizer (1.3.0)
```

Install `5.2.3` if needed
```bash
gem install rails --version=5.2.3
```

Example showing `5.2.3`
```
simon@Simons-MBP rails-many-to-many % gem list rails | grep \^rails 
rails (5.2.4.2, 5.2.3)
rails-dom-testing (2.0.3)
rails-html-sanitizer (1.3.0)
```

## Start a new  rails project
```bash
rails _5.2.3_ new my_project_name -G --database=postgresql
```

### Note
Create your database before running migrations
```
bundle exec rails db:create
```

# Models

rails generate model Article title:string text:text
rails generate model Comment commenter:string body:text article:references
rails generate model Category title:string articles:references



