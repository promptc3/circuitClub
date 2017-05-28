# Circuit Club Api

Download this repository and follow these steps::
  1. `cd api/`
  2. `bundle install`
  3. `bin/rails s -p PORTNUMBER'` (PORTNUMBER use the frontend one...)
  4. visit `http://localhost:PORTNUMBER/admin`
  5. email: admin@example.com, password: password (We will change it later)
  6. type `rails test` and press Enter to see if everything is fine.

## Links for getting json API
	1. `cd api/`
	2. `rails routes`
	3. Discard the one starting with /admin/
	4. For getting json use */:id.json or */index.json format 
	 

Version and Dependencies:

* Ruby version `ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]`

* Rails version `Rails 5.0.3`

* Database creation SQlite3
