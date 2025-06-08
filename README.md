# Ruby on Rails E-commerce Application

## Introduction

A Ruby on Rails e-commerce application demonstrating modern frontend features with Hotwire/Turbo. This application allows users to browse products, add them to a shopping cart, and experience dynamic cart updates without full page reloads.

## Features

- **Product Browsing:** Users can view a list of available products.
- **Shopping Cart:** Products can be added to a shopping cart.
- **Dynamic Cart Updates:** The cart display and total bill are updated on the same page using Turbo Streams (part of Hotwire) when items are added.

## Technologies Used

- Ruby on Rails (v8.0.2)
- Ruby (v3.4.3)
- Hotwire (Turbo and Stimulus)
- Tailwind CSS
- SQLite3 (for development/testing)
- Puma web server
- Propshaft (asset pipeline)
- Importmap Rails
- Jbuilder
- Solid Cache
- Solid Queue
- Solid Cable

## Setup and Installation

1.  **Ensure Ruby 3.4.3 is installed:** You can use tools like `rbenv`, `asdf`, or `rvm` to manage Ruby versions.
    ```bash
    # Example using rbenv
    rbenv install 3.4.3
    rbenv global 3.4.3
    ```
2.  **Clone the repository:**
    ```bash
    git clone <repository-url>
    ```
3.  **Navigate to the project directory:**
    ```bash
    cd <project-directory>
    ```
4.  **Install dependencies:**
    ```bash
    bundle install
    ```
5.  **Create the database:**
    ```bash
    rails db:create
    ```
6.  **Run database migrations:**
    ```bash
    rails db:migrate
    ```
7.  **(Optional) Seed the database with sample products:**
    ```bash
    rails db:seed
    ```
    Check `db/seeds.rb` to see the actual seed data being created.

## How to Run

1.  **Start the development server:**
    ```bash
    bin/dev
    ```
    Alternatively, you can use:
    ```bash
    rails server
    ```
2.  **Access the application:**
    Open your web browser and navigate to `http://localhost:3000` (or the configured port).

## Running Tests

To run the test suite, execute the following command:

```bash
rails test
```

## Deployment

This application includes the `kamal` gem, suggesting it is set up or can be easily configured for deployment using [Kamal](https://kamal-deploy.org/). The presence of a `Dockerfile` and a `.kamal/` directory further indicates that the application is ready for containerization and deployment with Kamal. Consult the Kamal documentation for specific deployment steps.
