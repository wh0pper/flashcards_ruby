# Flashcards

#### A simple Sinatra/PostgreSQL application, 02.19.2018

#### By Jared Clemmensen, Russell Hofvendahl

## Description
  A CRUD application for making and using flashcards. Uses class Card with methods to initialize card, access and modify card info and delete card data from database.

## Specs

#### Backend
  1. Create new Card instance (initialize).
    Example input:
    Example output:
  2. Get array of Card objects from cards table (all, class method).
  3. Clear cards table (clear_all, class method).
    Example input:
    Example output
  4. Update name, front or back, update database (name; front; back)
  5. Delete card instance, update database (delete)

#### Frontend
  1. Make card, display card fronts
  2. Click to display back; again to display front
  3. Click x icon to remove card
  4. click pencil icon to edit

## Setup/Installation Requirements
  1. install ruby 2.2.2
  2. install bundler gem ($ gem install bundler)
  3. clone or download word_definer repository
  4. run bundler in repository ($ bundle)
  5. host locally with Sinatra ($ ruby app.rb)

## Technologies Used
  This application was built with Sinatra and uses Postgresql for database management.

## License
  Copyright (c) 2018 Jared Clemmensen, Russell Hofvendahl

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
