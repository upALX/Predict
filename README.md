# Predict

complete ETL solution enabling consumption forecasting for multiple sectors.

*Tech overview*
This app use docker + compose to management the workflows, so to simplify all work you need to use the make comands that will be explained below on **"how to use"** section.

---

## Tech stack
python >= 3.11
airflow==2.7.0
pandas>=2.1
sqlalchemy>=2.0
postgresql==15
streamlit>=1.25

## How to use

**1 - build the app**

```
make build
```

**2 - up the app**
```
make up
```

**3 - setup the app**
```
make setup
```

**4 - Link and fix**
```
make lint
make lint-fix
```

**5 - Run all tests**
```
make tests
```

**6 - stop the app**

```
make down
```

## Issues


---
Keep look at the stars