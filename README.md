# Lena Research

## Downloading & Installing

**First make sure you have installed [DBT through homebrew](https://docs.getdbt.com/dbt-cli/installation#homebrew)**

1. Open commandline
2. `cd` into the directory you want to download the repository to
3. run `git clone git@github.com:KenleyArai/lena_research_dbt.git`
4. Add the database credentials to your `~/.dbt/profiles.yml`
5. Put csv data into to the `eda_data/` directory:
   *  ```shell
      lena_research_dbt/eda_data/
                        ├── PB_data.zip
                        └── raw_excel
                            ├── PB003_a1_int_f_p\ -\ EDA.csv
                            ├── PB003_a1_int_s\ -\ EDA.csv
                            ├── PB003_a1_qp_bl\ -\ EDA.csv
                            ├── PB003_a2_int_f_p\ -\ EDA.csv
                            ├── PB003_a2_int_s_p\ -\ EDA.csv
                            ├── PB003_a2_qp_bl\ -\ EDA.csv
                            ├── PB006_b1_int_f_p\ -\ EDA.csv
                            ...
        ```
6. Run `dbt seed` on the commandline
7. Run `dbt run` on the commandline
