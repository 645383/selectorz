PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sectors" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "parent_id" integer);
INSERT INTO sectors VALUES(1,'Manufacturing','2024-06-12 09:04:21.421837','2024-06-12 09:04:21.421837',NULL);
INSERT INTO sectors VALUES(2,'Construction materials','2024-06-12 09:04:21.430867','2024-06-12 09:04:21.430867',1);
INSERT INTO sectors VALUES(3,'Electronics and Optics','2024-06-12 09:04:21.433984','2024-06-12 09:04:21.433984',1);
INSERT INTO sectors VALUES(4,'Food and Beverage','2024-06-12 09:04:21.437129','2024-06-12 09:04:21.437129',1);
INSERT INTO sectors VALUES(5,'Bakery & confectionery products','2024-06-12 09:04:21.440247','2024-06-12 09:04:21.440247',4);
INSERT INTO sectors VALUES(6,'Beverages','2024-06-12 09:04:21.443323','2024-06-12 09:04:21.443323',4);
INSERT INTO sectors VALUES(7,'Fish & fish products','2024-06-12 09:04:21.446387','2024-06-12 09:04:21.446387',4);
INSERT INTO sectors VALUES(8,'Meat & meat products','2024-06-12 09:04:21.449519','2024-06-12 09:04:21.449519',4);
INSERT INTO sectors VALUES(9,'Milk & dairy products','2024-06-12 09:04:21.452614','2024-06-12 09:04:21.452614',4);
INSERT INTO sectors VALUES(10,'Other','2024-06-12 09:04:21.455688','2024-06-12 09:04:21.455688',4);
INSERT INTO sectors VALUES(11,'Sweets & snack food','2024-06-12 09:04:21.458881','2024-06-12 09:04:21.458881',4);
INSERT INTO sectors VALUES(12,'Furniture','2024-06-12 09:04:21.462319','2024-06-12 09:04:21.462319',1);
INSERT INTO sectors VALUES(13,'Bkathroom/sauna','2024-06-12 09:04:21.465331','2024-06-12 09:04:21.465331',12);
INSERT INTO sectors VALUES(14,'Bedroom','2024-06-12 09:04:21.468350','2024-06-12 09:04:21.468350',12);
INSERT INTO sectors VALUES(15,'Children’s room','2024-06-12 09:04:21.471450','2024-06-12 09:04:21.471450',12);
INSERT INTO sectors VALUES(16,'Kitchen','2024-06-12 09:04:21.474462','2024-06-12 09:04:21.474462',12);
INSERT INTO sectors VALUES(17,'Living room','2024-06-12 09:04:21.477427','2024-06-12 09:04:21.477427',12);
INSERT INTO sectors VALUES(18,'Office','2024-06-12 09:04:21.480450','2024-06-12 09:04:21.480450',12);
INSERT INTO sectors VALUES(19,'Other (Furniture)','2024-06-12 09:04:21.483599','2024-06-12 09:04:21.483599',12);
INSERT INTO sectors VALUES(20,'Outdoor','2024-06-12 09:04:21.486636','2024-06-12 09:04:21.486636',12);
INSERT INTO sectors VALUES(21,'Project furniture','2024-06-12 09:04:21.489644','2024-06-12 09:04:21.489644',12);
INSERT INTO sectors VALUES(22,'Machinery','2024-06-12 09:04:21.492981','2024-06-12 09:04:21.492981',1);
INSERT INTO sectors VALUES(23,'Machinery components','2024-06-12 09:04:21.496065','2024-06-12 09:04:21.496065',22);
INSERT INTO sectors VALUES(24,'Machinery equipment/tools','2024-06-12 09:04:21.499068','2024-06-12 09:04:21.499068',22);
INSERT INTO sectors VALUES(25,'Manufacture of machinery','2024-06-12 09:04:21.502185','2024-06-12 09:04:21.502185',22);
INSERT INTO sectors VALUES(26,'Maritime','2024-06-12 09:04:21.505253','2024-06-12 09:04:21.505253',22);
INSERT INTO sectors VALUES(27,replace(replace('Aluminium and steel\r\n        workboats','\r',char(13)),'\n',char(10)),'2024-06-12 09:04:21.508349','2024-06-12 09:04:21.508349',26);
INSERT INTO sectors VALUES(28,'Boat/Yacht building','2024-06-12 09:04:21.511353','2024-06-12 09:04:21.511353',26);
INSERT INTO sectors VALUES(29,replace(replace('Ship repair and\r\n        conversion','\r',char(13)),'\n',char(10)),'2024-06-12 09:04:21.514490','2024-06-12 09:04:21.514490',26);
INSERT INTO sectors VALUES(30,'Metal structures','2024-06-12 09:04:21.517521','2024-06-12 09:04:21.517521',22);
INSERT INTO sectors VALUES(31,'Other','2024-06-12 09:04:21.520544','2024-06-12 09:04:21.520544',22);
INSERT INTO sectors VALUES(32,'Repair and maintenance service','2024-06-12 09:04:21.523736','2024-06-12 09:04:21.523736',22);
INSERT INTO sectors VALUES(33,'Metalworking','2024-06-12 09:04:21.526815','2024-06-12 09:04:21.526815',1);
INSERT INTO sectors VALUES(34,'Construction of metal structures','2024-06-12 09:04:21.529946','2024-06-12 09:04:21.529946',33);
INSERT INTO sectors VALUES(35,'Houses and buildings','2024-06-12 09:04:21.532951','2024-06-12 09:04:21.532951',33);
INSERT INTO sectors VALUES(36,'Metal products','2024-06-12 09:04:21.536082','2024-06-12 09:04:21.536082',33);
INSERT INTO sectors VALUES(37,'Metal works','2024-06-12 09:04:21.539094','2024-06-12 09:04:21.539094',33);
INSERT INTO sectors VALUES(38,'CNC-machining','2024-06-12 09:04:21.542079','2024-06-12 09:04:21.542079',37);
INSERT INTO sectors VALUES(39,'Forgings, Fasteners','2024-06-12 09:04:21.545244','2024-06-12 09:04:21.545244',37);
INSERT INTO sectors VALUES(40,replace(replace('Gas, Plasma, Laser\r\n        cutting','\r',char(13)),'\n',char(10)),'2024-06-12 09:04:21.554785','2024-06-12 09:04:21.554785',37);
INSERT INTO sectors VALUES(41,replace(replace('MIG, TIG, Aluminum\r\n        welding','\r',char(13)),'\n',char(10)),'2024-06-12 09:04:21.558333','2024-06-12 09:04:21.558333',37);
INSERT INTO sectors VALUES(42,'Plastic and Rubber','2024-06-12 09:04:21.561397','2024-06-12 09:04:21.561397',1);
INSERT INTO sectors VALUES(43,'Packaging','2024-06-12 09:04:21.564443','2024-06-12 09:04:21.564443',42);
INSERT INTO sectors VALUES(44,'Plastic goods','2024-06-12 09:04:21.567681','2024-06-12 09:04:21.567681',42);
INSERT INTO sectors VALUES(45,'Plastic processing technology','2024-06-12 09:04:21.570894','2024-06-12 09:04:21.570894',42);
INSERT INTO sectors VALUES(46,'Blowing','2024-06-12 09:04:21.574046','2024-06-12 09:04:21.574046',45);
INSERT INTO sectors VALUES(47,'Moulding','2024-06-12 09:04:21.577175','2024-06-12 09:04:21.577175',45);
INSERT INTO sectors VALUES(48,replace(replace('Plastics welding and\r\n        processing','\r',char(13)),'\n',char(10)),'2024-06-12 09:04:21.580451','2024-06-12 09:04:21.580451',45);
INSERT INTO sectors VALUES(49,'Plastic profiles','2024-06-12 09:04:21.583584','2024-06-12 09:04:21.583584',42);
INSERT INTO sectors VALUES(50,'Printing','2024-06-12 09:04:21.586810','2024-06-12 09:04:21.586810',1);
INSERT INTO sectors VALUES(51,'Advertising','2024-06-12 09:04:21.589969','2024-06-12 09:04:21.589969',50);
INSERT INTO sectors VALUES(52,'Book/Periodicals printing','2024-06-12 09:04:21.592950','2024-06-12 09:04:21.592950',50);
INSERT INTO sectors VALUES(53,'Labelling and packaging printing','2024-06-12 09:04:21.595869','2024-06-12 09:04:21.595869',50);
INSERT INTO sectors VALUES(54,'Textile and Clothing','2024-06-12 09:04:21.599041','2024-06-12 09:04:21.599041',1);
INSERT INTO sectors VALUES(55,'Clothing','2024-06-12 09:04:21.601992','2024-06-12 09:04:21.601992',54);
INSERT INTO sectors VALUES(56,'Textile','2024-06-12 09:04:21.604899','2024-06-12 09:04:21.604899',54);
INSERT INTO sectors VALUES(57,'Wood','2024-06-12 09:04:21.607866','2024-06-12 09:04:21.607866',1);
INSERT INTO sectors VALUES(58,'Other (Wood)','2024-06-12 09:04:21.611343','2024-06-12 09:04:21.611343',57);
INSERT INTO sectors VALUES(59,'Wooden building materials','2024-06-12 09:04:21.614419','2024-06-12 09:04:21.614419',57);
INSERT INTO sectors VALUES(60,'Wooden houses','2024-06-12 09:04:21.617378','2024-06-12 09:04:21.617378',57);
INSERT INTO sectors VALUES(61,'Other','2024-06-12 09:04:21.619636','2024-06-12 09:04:21.619636',NULL);
INSERT INTO sectors VALUES(62,'Creative industries','2024-06-12 09:04:21.622624','2024-06-12 09:04:21.622624',61);
INSERT INTO sectors VALUES(63,'Energy technology','2024-06-12 09:04:21.625503','2024-06-12 09:04:21.625503',61);
INSERT INTO sectors VALUES(64,'Environment','2024-06-12 09:04:21.628607','2024-06-12 09:04:21.628607',61);
INSERT INTO sectors VALUES(65,'Service','2024-06-12 09:04:21.630945','2024-06-12 09:04:21.630945',NULL);
INSERT INTO sectors VALUES(66,'Business services','2024-06-12 09:04:21.633927','2024-06-12 09:04:21.633927',65);
INSERT INTO sectors VALUES(67,'Engineering','2024-06-12 09:04:21.636851','2024-06-12 09:04:21.636851',65);
INSERT INTO sectors VALUES(68,'Information Technology and Telecommunications','2024-06-12 09:04:21.639752','2024-06-12 09:04:21.639752',65);
INSERT INTO sectors VALUES(69,'Data processing, Web portals, E-marketing','2024-06-12 09:04:21.642948','2024-06-12 09:04:21.642948',68);
INSERT INTO sectors VALUES(70,'Programming, Consultancy','2024-06-12 09:04:21.645945','2024-06-12 09:04:21.645945',68);
INSERT INTO sectors VALUES(71,'Software, Hardware','2024-06-12 09:04:21.648848','2024-06-12 09:04:21.648848',68);
INSERT INTO sectors VALUES(72,'Telecommunications','2024-06-12 09:04:21.651849','2024-06-12 09:04:21.651849',68);
INSERT INTO sectors VALUES(73,'Tourism','2024-06-12 09:04:21.654849','2024-06-12 09:04:21.654849',65);
INSERT INTO sectors VALUES(74,'Translation services','2024-06-12 09:04:21.657917','2024-06-12 09:04:21.657917',65);
INSERT INTO sectors VALUES(75,'Transport and Logistics','2024-06-12 09:04:21.660926','2024-06-12 09:04:21.660926',65);
INSERT INTO sectors VALUES(76,'Air','2024-06-12 09:04:21.663943','2024-06-12 09:04:21.663943',75);
INSERT INTO sectors VALUES(77,'Rail','2024-06-12 09:04:21.666855','2024-06-12 09:04:21.666855',75);
INSERT INTO sectors VALUES(78,'Road','2024-06-12 09:04:21.669892','2024-06-12 09:04:21.669892',75);
INSERT INTO sectors VALUES(79,'Water','2024-06-12 09:04:21.672911','2024-06-12 09:04:21.672911',75);
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "agree_to_terms" boolean);
INSERT INTO users VALUES(1,'dddd','2024-06-12 09:07:25.223323','2024-06-12 09:07:33.140132',1);
INSERT INTO users VALUES(2,'ddd','2024-06-12 09:11:53.872444','2024-06-12 09:11:53.872444',1);
CREATE TABLE IF NOT EXISTS "sectors_users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer NOT NULL, "sector_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_02f3e110e9"
FOREIGN KEY ("sector_id")
  REFERENCES "sectors" ("id")
, CONSTRAINT "fk_rails_c9931290a6"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO sectors_users VALUES(6,1,50,'2024-06-12 09:08:17.852650','2024-06-12 09:08:17.852650');
INSERT INTO sectors_users VALUES(7,1,56,'2024-06-12 09:08:17.856523','2024-06-12 09:08:17.856523');
INSERT INTO sectors_users VALUES(10,2,1,'2024-06-12 09:14:50.621088','2024-06-12 09:14:50.621088');
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20240611123113');
INSERT INTO schema_migrations VALUES('20240611114941');
INSERT INTO schema_migrations VALUES('20240611112132');
INSERT INTO schema_migrations VALUES('20240611112106');
INSERT INTO schema_migrations VALUES('20240611112048');
INSERT INTO schema_migrations VALUES('20240612090007');
INSERT INTO schema_migrations VALUES('20240612090320');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2024-06-12 09:01:01.582949','2024-06-12 09:01:01.582955');
INSERT INTO ar_internal_metadata VALUES('schema_sha1','f1ece70d4b5791011f6531dbe9017288566e5979','2024-06-12 09:01:01.584833','2024-06-12 09:01:01.584836');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('sectors_users',10);
INSERT INTO sqlite_sequence VALUES('sectors',79);
INSERT INTO sqlite_sequence VALUES('users',2);
CREATE INDEX "index_sectors_users_on_sector_id" ON "sectors_users" ("sector_id");
CREATE INDEX "index_sectors_users_on_user_id" ON "sectors_users" ("user_id");
CREATE UNIQUE INDEX "index_users_on_name" ON "users" ("name");
CREATE UNIQUE INDEX "index_sectors_on_name_and_parent_id" ON "sectors" ("name", "parent_id");
COMMIT;
