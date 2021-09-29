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

# Definitions

- S1 - session 1
- S2 - session 2 

- F_INT - first interaction
- S_INT - second interaction

- FM - first mover
- SM - second mover

- QP_BL - quiet period baseline

### Examples:


- PB003_S1_F_INT_FM_EDA
   - participant 3
   - session 1
   - first interation
   - first mover
- PB007_S2_SM_QP_BL_EDA
   - participant 7
   - session 1 
   - second mover
   - quiet period baseline
- PB006_S2_S_INT_SM_EDA
   - participant 6
   - session 2
   - second interaction
   - second mover



