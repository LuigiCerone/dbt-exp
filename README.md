# dbt-exp

Within this repository, I've compiled all the code and configurations that I created while going through the [dbt fundamentals course](https://courses.getdbt.com/courses/fundamentals). 
The course prominently features the ["Jaffle Shop"](https://github.com/dbt-labs/jaffle-shop) case study, and here you'll find all the necessary files for seamless execution. 
To make things even more convenient, I've included a Docker Compose file in the repository, which allows you to easily set up
the required infrastructure on your local machine using a [local PostgreSQL database](https://docs.getdbt.com/docs/core/connect-data-platform/postgres-setup). This centralizes all the essential components, 
ensuring a smoother experience as you explore and work with the Jaffle Shop case study.

## Prerequisites

Tested with:

- Make 3.81
- Docker 20.10.22
- Python: 3.9.4

## How to run


#### Setup venv

Local environment is set up by using [make](https://www.gnu.org/software/make/) tool.

```bash
make
```

#### Run

After virtual environment activation:

```bash
source venv/bin/activate
```

[standard dbt commands](https://docs.getdbt.com/reference/dbt-commands) can be run.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[Apache License 2.0](https://choosealicense.com/licenses/apache-2.0/)
