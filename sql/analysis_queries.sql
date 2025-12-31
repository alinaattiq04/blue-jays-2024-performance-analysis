-- Top 10 hitters by WAR
SELECT Player, WAR, PA, "OPS+"
FROM hitters_2025
ORDER BY WAR DESC
LIMIT 10;

-- Top 10 hitters by OPS+ (min playing time)
SELECT Player, "OPS+", PA, WAR
FROM hitters_2025
WHERE PA >= 100
ORDER BY "OPS+" DESC
LIMIT 10;

-- Value concentration: total WAR
SELECT SUM(WAR) AS total_hitter_war
FROM hitters_2025;

-- WAR efficiency (WAR per 600 PA)
SELECT
  Player,
  PA,
  WAR,
  ROUND(WAR * 600.0 / PA, 2) AS WAR_per_600_PA,
  "OPS+"
FROM hitters_2025
WHERE PA >= 100
ORDER BY WAR_per_600_PA DESC
LIMIT 10;
