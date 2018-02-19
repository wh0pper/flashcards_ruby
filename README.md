# Word Definer

#### A sinatra application, 02.16.2018

#### By Jared Clemmensen, Russell Hofvendahl

## Description
  A simple CRUD application for making and using flashcards. Uses class Card with methods to initialize card, access and modify card info and delete card data from database.

## Specs

#### Backend
  1. Create new Card instance, store attributes in postgres cards table (initialize).
    Example input:
    Example output:
  2. Get array of Card objects from cards table (all, class method).
  3. Clear cards table & objects array (clear_all, class method).
    Example input:
    Example output
  4. Find card given name (find, class method)???
  5. Update name, front or back, update database (name; front; back)
  6. Delete card with given name, update database (delete)

#### Frontend
  1. Input word, display word list
  2. Click word, display word page
  3. Input word definition, display word definitions

## Setup/Installation Requirements
  1. install ruby 2.2.2
  2. install bundler gem ($ gem install bundler)
  3. clone or download word_definer repository
  4. run bundler in repository ($ bundle)
  5. host locally with Sinatra ($ ruby app.rb)
  Word Definer is also hosted at https://secret-bayou-20843.herokuapp.com/

## Technologies Used
  This application was built with Sinatra and hosted with Heroku.

## License
  Copyright (c) 2018 Jared Clemmensen, Russell Hofvendahl

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
