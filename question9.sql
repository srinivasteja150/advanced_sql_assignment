-- Drop the foreign key constraints
ALTER TABLE rental DROP FOREIGN KEY rental_customer_id_fk;
ALTER TABLE rental DROP FOREIGN KEY rental_inventory_id_fk;
ALTER TABLE rental DROP FOREIGN KEY rental_staff_id_fk;

-- Partition the table
ALTER TABLE rental PARTITION BY RANGE(YEAR(rental_date))
(
  PARTITION p0 VALUES LESS THAN (2005),
  PARTITION p1 VALUES LESS THAN (2011),
  PARTITION p2 VALUES LESS THAN (2016),
  PARTITION p3 VALUES LESS THAN (2021),
  PARTITION p4 VALUES LESS THAN MAXVALUE
);

-- Add the foreign key constraint back
ALTER TABLE rental ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);
ALTER TABLE rental ADD FOREIGN KEY (inventory_id) REFERENCES inventory (inventory_id);
ALTER TABLE rental ADD FOREIGN KEY (staff_id) REFERENCES staff (staff_id);
