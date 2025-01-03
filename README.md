# Universe Database

This repository contains the schema and sample data for a PostgreSQL database named `universe`. The database models celestial entities including asteroids, galaxies, moons, planets, and stars. Below is a detailed description of the database structure and its contents.

---

## Database Information

- **Database Name:** `universe`
- **Owner:** `freecodecamp`
- **Encoding:** UTF-8
- **Locale:** `C.UTF-8`

---

## Tables and Descriptions

### 1. **Asteroid**
Stores information about asteroids.

| Column Name | Data Type        | Description                |
|-------------|------------------|----------------------------|
| asteroid_id | `integer`        | Unique identifier.         |
| name        | `varchar(20)`    | Name of the asteroid.      |
| diameter    | `numeric(3,1)`   | Diameter in kilometers.    |

**Sample Data:**
| asteroid_id | name      | diameter |
|-------------|-----------|----------|
| 1           | Ceres     | 93.9     |
| 2           | Vesta     | 52.5     |

---

### 2. **Galaxy**
Stores information about galaxies.

| Column Name         | Data Type        | Description                                  |
|---------------------|------------------|----------------------------------------------|
| galaxy_id           | `integer`        | Unique identifier.                          |
| name                | `varchar(20)`    | Name of the galaxy.                         |
| description         | `text`           | Description of the galaxy.                  |
| type                | `varchar(20)`    | Type of the galaxy (e.g., Spiral, Elliptical). |
| distance_from_earth | `numeric(10,2)`  | Distance from Earth in million light-years. |

**Sample Data:**
| galaxy_id | name          | description                               | type          | distance_from_earth |
|-----------|---------------|-------------------------------------------|---------------|---------------------|
| 1         | Milky Way     | The galaxy that contains our Solar System. | Spiral       | 0.00                |
| 2         | Andromeda     | The nearest spiral galaxy to the Milky Way. | Spiral       | 2.54                |

---

### 3. **Moon**
Stores information about moons.

| Column Name      | Data Type        | Description                          |
|------------------|------------------|--------------------------------------|
| moon_id          | `integer`        | Unique identifier.                   |
| name             | `varchar(20)`    | Name of the moon.                    |
| description      | `text`           | Description of the moon.             |
| has_water        | `boolean`        | Indicates if the moon has water.     |
| diameter_in_km   | `numeric(5,1)`   | Diameter in kilometers.              |
| planet_id        | `integer`        | Identifier of the planet it orbits.  |

**Sample Data:**
| moon_id | name     | description                        | has_water | diameter_in_km | planet_id |
|---------|----------|------------------------------------|-----------|----------------|-----------|
| 20      | Moon     | Earth only natural satellite.     | true      | 3474.8         | 1         |
| 21      | Phobos   | The larger moon of Mars.          | false     | 22.4           | 2         |

---

### 4. **Planet**
Stores information about planets.

| Column Name         | Data Type        | Description                               |
|---------------------|------------------|-------------------------------------------|
| planet_id           | `integer`        | Unique identifier.                        |
| name                | `varchar(20)`    | Name of the planet.                       |
| description         | `text`           | Description of the planet.                |
| has_life            | `boolean`        | Indicates if the planet supports life.    |
| has_water           | `boolean`        | Indicates if the planet has water.        |
| diameter_in_km      | `integer`        | Diameter in kilometers.                   |
| number_of_moons     | `integer`        | Number of moons orbiting the planet.      |
| star_id             | `integer`        | Identifier of the star it orbits.         |

**Sample Data:**
| planet_id | name    | description                           | has_life | has_water | diameter_in_km | number_of_moons | star_id |
|-----------|---------|---------------------------------------|----------|-----------|----------------|-----------------|---------|
| 1         | Earth   | The third planet from the Sun.       | true     | true      | 12742          | 1               | 1       |
| 2         | Mars    | The red planet with iron oxide.      | false    | true      | 6779           | 2               | 1       |

---

### 5. **Star**
Stores information about stars.

| Column Name | Data Type        | Description                        |
|-------------|------------------|------------------------------------|
| star_id     | `integer`        | Unique identifier.                 |
| name        | `varchar(20)`    | Name of the star.                  |
| description | `text`           | Description of the star.           |
| galaxy_id   | `integer`        | Identifier of the galaxy it belongs to. |
| luminosity  | `numeric`        | Luminosity of the star.            |

**Sample Data:**
| star_id | name      | description                     | galaxy_id | luminosity |
|---------|-----------|---------------------------------|-----------|------------|
| 1       | Sun       | The star at the center of the Solar System. | 1         | 1.0        |

---

## How to Use

1. Install PostgreSQL on your system.
2. Clone the repository and navigate to the project directory.
3. Execute the SQL dump file using the following command:
   psql -U <username> -f universe.sql
4. Access the `universe` database:
   psql -U <username> -d universe

---