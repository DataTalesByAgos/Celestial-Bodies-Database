CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    size INT,
    shape TEXT,
    active BOOLEAN NOT NULL,
    color VARCHAR(50) NOT NULL
);

INSERT INTO galaxy (name, size, shape, active, color) VALUES
    ('Milky Way', 1000000, 'Spiral', true, 'blue'),
    ('Andromeda', 2000000, 'Spiral', true, 'red'),
    ('Triangulum', 500000, 'Irregular', true, 'green'),
    ('Messier 87', 15000000, 'Elliptical', false, 'orange'),
    ('Centaurus A', 700000, 'Elliptical', true, 'yellow'),
    ('Whirlpool', 800000, 'Spiral', true, 'purple');

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    galaxy_id INT REFERENCES galaxy(galaxy_id),
    type VARCHAR(50),
    mass NUMERIC NOT NULL,
    luminosity INT,
    habitable BOOLEAN NOT NULL
);

INSERT INTO star (name, galaxy_id, type, mass, luminosity, habitable) VALUES
    ('Sun', 1, 'G-type', 1.989e30, 382800000, false),
    ('Alpha Centauri A', 1, 'G-type', 2.1e30, 580000000, false),
    ('Alpha Centauri B', 1, 'K-type', 1.45e30, 410000000, false),
    ('Sirius', 2, 'A-type', 2.1e30, 2020000000, false),
    ('Betelgeuse', 2, 'M-type', 7.7e31, NULL, false),
    ('Proxima Centauri', 1, 'M-type', 0.1235e30, 1700000, true);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    star_id INT REFERENCES star(star_id),
    type VARCHAR(50),
    diameter NUMERIC NOT NULL,
    atmosphere TEXT,
    rings BOOLEAN NOT NULL
);

INSERT INTO planet (name, star_id, type, diameter, atmosphere, rings) VALUES
    ('Earth', 1, 'Terrestrial', 12742, 'Nitrogen, Oxygen', false),
    ('Mars', 1, 'Terrestrial', 6779, 'Carbon Dioxide', false),
    ('Jupiter', 2, 'Gas Giant', 139820, 'Hydrogen, Helium', true),
    ('Saturn', 2, 'Gas Giant', 116460, 'Hydrogen, Helium', true),
    ('Uranus', 2, 'Ice Giant', 50724, 'Hydrogen, Helium', true),
    ('Neptune', 2, 'Ice Giant', 49244, 'Hydrogen, Helium', true),
    ('Venus', 1, 'Terrestrial', 12104, 'Carbon Dioxide', false),
    ('Mercury', 1, 'Terrestrial', 4879, 'Oxygen, Sodium', false),
    ('Kepler-186f', 3, 'Terrestrial', 11135, 'Nitrogen, Oxygen', false),
    ('PSR B1257+12 A', 4, 'Exoplanet', 4000, 'Unknown', false),
    ('PSR B1257+12 B', 4, 'Exoplanet', 3000, 'Unknown', false),
    ('PSR B1257+12 C', 4, 'Exoplanet', 2000, 'Unknown', false);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    planet_id INT REFERENCES planet(planet_id),
    size NUMERIC,
    surface TEXT,
    habitable BOOLEAN NOT NULL
);

INSERT INTO moon (name, planet_id, size, surface, habitable) VALUES
    ('Moon', 1, 3475, 'Rocky', false),
    ('Phobos', 2, 22, 'Rocky', false),
    ('Deimos', 2, 12, 'Rocky', false),
    ('Europa', 7, 1561, 'Icy', false),
    ('Titan', 4, 5150, 'Icy', false),
    ('Enceladus', 4, 252, 'Icy', false),
    ('Ganymede', 3, 5262, 'Rocky', false),
    ('Io', 3, 3643, 'Volcanic', false),
    ('Charon', 6, 606, 'Rocky', false),
    ('Triton', 5, 2706, 'Icy', false),
    ('Dione', 4, 1120, 'Icy', false),
    ('Miranda', 5, 235, 'Rocky', false),
    ('Callisto', 3, 4821, 'Rocky', false),
    ('Rhea', 4, 1528, 'Icy', false),
    ('Mimas', 4, 396, 'Rocky', false),
    ('Titania', 5, 1578, 'Rocky', false),
    ('Iapetus', 4, 1468, 'Rocky', false),
    ('Oberon', 5, 1523, 'Rocky', false),
    ('Ariel', 5, 1157, 'Rocky', false),
    ('Umbriel', 5, 1169, 'Rocky', false),
    ('Proteus', 6, 420, 'Rocky', false);

CREATE TABLE spacecraft (
    spacecraft_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    purpose VARCHAR(100),
    launch_date DATE NOT NULL,
    operational BOOLEAN NOT NULL,
    fuel_type VARCHAR(50)
);

INSERT INTO spacecraft (name, purpose, launch_date, operational, fuel_type) VALUES
    ('Voyager 1', 'Interstellar exploration', '1977-09-05', true, 'Plutonium-238'),
    ('Voyager 2', 'Interstellar exploration', '1977-08-20', true, 'Plutonium-238'),
    ('New Horizons', 'Kuiper Belt exploration', '2006-01-19', true, 'Plutonium-238');