# NoR Proof of Concept

This project is proof that the structure and layout of the NoR web framework actually works.

Structure:

- `app/`

  - Where most of the source code of your project will go
  - `assets/`
    - Public assets used by your project (ie. CSS files)
    - `javascript/`
      - Where all your JavaScript files will be placed
    - `stylesheets/`
      - Where all your CSS/SCSS files will be placed
    - `images/`
      - Where all your Images will be placed
  - `controllers/`
    - The route functions for your application, and what they do
  - `models/`
    - Database insert and update defaults (code that runs before Create/Update operation on DB)
  - `helpers/`
    - Util functions. These are files/functions that does not belong inside of controllers. Standalone functions.
  - `views/`
    - The HTML code for your project (uses Nimja)

- `config/`

  - Your application configuration
  - `locales/`
    - Language files for your application.
  - `nimja.conf.nim`
    - Configuration for Nimja
  - `routes.nim`
    - Routes for your application

- `db/`

  - Database configuration for your application
  - `migrations/`
    - Migration files for your application databases
  - `schema.nim`
    - Your database schema/structure
  - `seeds.nim`
    - Any seeding for your database

- `log/`

  - Any logs for when you run your application

- `test/`

  - Tests your application should run
  - `controllers/`
    - Write tests for your application routes
  - `models/`
    - Write tests for your application database

- `tmp`
  - Temporary directory, for temporary files.
