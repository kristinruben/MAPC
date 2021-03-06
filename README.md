<h1>MAPC Technical Challenge</h1>

<img src="https://codeship.com/projects/dacac670-5031-0134-33fd-06d0906c550d/status?branch=master" />
<a href="https://codeclimate.com/github/kristinruben/MAPC"><img src="https://codeclimate.com/github/kristinruben/MAPC/badges/gpa.svg" /></a>
<a href='https://coveralls.io/github/kristinruben/MAPC?branch=master'><img src='https://coveralls.io/repos/github/kristinruben/MAPC/badge.svg?branch=master' alt='Coverage Status' /></a>


A Rails web app comprising of a single form that allows potential customers to request a free demo project.

<h3>Steps Taken</h3>
1. Read instructions: https://docs.google.com/document/d/1N-XtORhuYWlGIQEXlDg_L3IopIUtYyC144SLmhqlaBw/edit (10 minutes)
2. Initialized new Rails app and set up version control (5 minutes)
3. Added badges (10 minutes)
4. Thought about practicing TDD and started writing tests; decided to learn Semantic UI first (30 minutes)
5. Studied Semantic UI docs, added it to app, troubleshot when it didn't work (4 hours)
6. Wrote form and customized errors (30 minutes)


<h3>Dependencies</h3>
<li>Ruby 2.2.3</li>
<li>Rails 4.2.6</li>
<li>Postgres</li>

<h3>Instructions</h3>
1. Clone down the repo at `git@github.com:kristinruben/MAPC.git`
2. `cd MAPC`
3. `bundle install`
4. `rake db:create`
5. `rake db:migrate`
6. `rails s`
7. Visit `http://localhost:3000/demos/new`
