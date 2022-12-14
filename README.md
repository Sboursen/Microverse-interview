<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Microverse-take-home ](#-microverse-take-home-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Task Completion ](#task-completion-)
  - [🚀 Video Demo ](#-video-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup and Usage](#setup-and-usage)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Microverse-take-home <a name="about-project"></a>

> **Microverse-take-home** is my complete solution for **Microverse**'s technical assessment.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby 2.6.0
- Ruby on Rails 5.2
- PostgreSQL 14.5

<!-- Features -->

### Task Completion <a name="task-completion"></a>

- [x] Task 1: Fetch users' data from the API endpoint and store it in the DB.
- [x] Task 2: Implement controller action to render HTML and JSON views for the User model.
- [x] Task 3: Add tests (unit, integration, worker).

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- LIVE DEMO -->

## 🚀 Video Demo <a name="live-demo"></a>

[Demo Link](https://www.loom.com/share/b2ae52ed60814717ae73ec89e33f1f88)

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Description

### Prerequisites

In order to run this project you need:

- Modern browser (Firefox or Chrome preferred)
- Running PostgreSQL
- Ruby 2.6.0
- Running Redis server

### Setup and Usage

1. Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@gitlab.com:devsboursen/Microverse-interview
```

2. open a new terminal an cd into the `Microverse-interview` directory:
   ```sh
   cd Microverse-interview
   bundle install
   ```

3. create a `.env` file in the `Microverse-interview` holding the database credentials with the following structure:
   ```sh
  DATABASE_USERNAME="your_name"
  DATABASE_PASSWORD="you_password"

   ```
3. create a `local_env.yml` file in the `Microverse-interview/config` holding API key:
   ```sh
  USERS_API_KEY: 'the key'

   ```
3) run the client live server using that manages `Rails` and `SideKiq`
   ```sh
   ./bin/dev
   ```
4) open the url in the browser. default: `http://localhost:5000/`

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Soufiane Boursen**

- GitHub: [@Sbouren](https://github.com/Sboursen)
- Twitter: [@sboursen_dev](https://twitter.com/sboursen_dev)
- LinkedIn: [@sboursen](https://linkedin.com/in/sboursen)

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [x] **More Unit testing**
- [x] **Feature tests**
- [x] **Refactoring using service objects**
- [x] **Styling**
- [x] **Deployment**
- [x] **CI/CD workflows**

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](<[../../issues/](https://gitlab.com/devsboursen/byfood-take-home/-/issues)>).

<p align="right"><a href="#readme-top">⬆️</a></p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give a star

<p align="right"><a href="#readme-top">⬆️</a></p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right"><a href="#readme-top">⬆️</a></p>
