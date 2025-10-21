# HackatonMsc41

## Setup

### 1. Clone the repo
```bash
git clone https://github.com/mehdiedd1/HackatonMsc41
cd HackatonMsc41
```

### 2. Set up the .env files
Create a `database.env` file with the following variables:
```
MYSQL_ROOT_PASSWORD='[mariadb root password]'
MYSQL_USER='user'
MYSQL_PASSWORD='[mariadb user password]'
MYSQL_DATABASES='Datasets MetabaseDB'
```

Create a `metabase.env` file with the following variables:
```
MB_DB_TYPE='mysql'
MB_DB_DBNAME='MetabaseDB'
MB_DB_PORT='3306'
MB_DB_USER='user'
MB_DB_PASS='[mariadb user password]'
MB_DB_HOST='mariadb'
```

### 3. Start the docker containers
```
docker compose up --build
```

### 4. Access the dashboard
Open the url http://localhost on your browser and log into metabase with the default account:
 - email: `admin@example.com`
 - password: `r00tpass`