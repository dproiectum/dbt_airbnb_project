# Airbnb dbt Project

This repository contains a dbt project built for an Airbnb analytics use case.

## Project Overview

- Root project: `airbnb`
- dbt project name: `airbnb`
- Primary focus: transform Airbnb source data into cleansed dimensional models
- Core models include:
  - `models/src/` for source staging models
  - `models/dim/` for dimensional models such as `dim_hosts_cleansed` and `dim_listings_cleansed`

## Key Folders

- `airbnb/` - dbt project directory
  - `dbt_project.yml` - dbt project configuration
  - `profiles.yml` - dbt connection profiles
  - `models/` - dbt model SQL files
  - `macros/` - reusable dbt macros
  - `tests/` - dbt tests
  - `snapshots/` - dbt snapshots
  - `seeds/` - dbt seed files

- `_resources/` - supporting learning resources and example configuration

- `uv/` - Python environment and tooling configuration
  - `pyproject.toml` - Python dependencies, including dbt and related packages
  - `uv.lock` - locked dependency versions managed by uv

## Requirements

- Python 3.10 to 3.13
- uv
- dbt Core 1.11.x
- `dbt-snowflake` adapter
- A valid Snowflake profile if using Snowflake as the target data warehouse

## Setup Instructions

1. Go to the Python environment folder:

   ```bash
   cd uv
   ```

2. Create and synchronize the local Python environment with uv:

   ```bash
   uv sync
   ```

   This will create a project-specific virtual environment and install the dependencies defined in `pyproject.toml` and locked in `uv.lock`.

3. Activate the local environment:

   ```bash
   source .venv/bin/activate
   ```

4. Configure your dbt profile:

   Edit `airbnb/profiles.yml` with your Snowflake credentials and connection settings.

5. Run dbt commands from the `airbnb` folder:

   ```bash
   cd ../airbnb
   dbt debug
   dbt run
   dbt test
   ```

## Useful dbt Commands

Run all models:

```bash
dbt run
```

Run tests:

```bash
dbt test
```

Check the dbt connection and project configuration:

```bash
dbt debug
```

Generate dbt documentation:

```bash
dbt docs generate
```

Serve dbt documentation locally:

```bash
dbt docs serve
```

## Notes

- This repository is intended for learning and experimentation with dbt.
- The project demonstrates a typical analytics engineering workflow using dbt.
- The model structure separates source staging models and dimensional models.
- The Python environment is managed with uv, not Poetry.

## Helpful Resources

- dbt documentation: https://docs.getdbt.com/
- uv documentation: https://docs.astral.sh/uv/
- Udemy Complete dbt Bootcamp course materials

---

Enjoy exploring the Airbnb analytics project and building dbt transformations!