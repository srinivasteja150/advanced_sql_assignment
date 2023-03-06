-- Drop the foreign key constraints
ALTER TABLE film DROP FOREIGN KEY film_language_id_fk;


ALTER TABLE film PARTITION BY LIST (rating)
(
    PARTITION p_r VALUES ('R'),
    PARTITION p_pg13pg VALUES ('PG-13', 'PG'),
    PARTITION p_gnc17 VALUES ('G', 'NC-17')
)
PARTITIONS 4
SUBPARTITION BY HASH (film_id)
(
    SUBPARTITION p1,
    SUBPARTITION p2,
    SUBPARTITION p3,
    SUBPARTITION p4
);

-- Add the foreign key constraint back
ALTER TABLE film ADD FOREIGN KEY (language_id) REFERENCES language (language_id);
