-- RUN FROM SQL EDITOR AS DEVUSER

CREATE SCHEMA "GREEK_MYTHOLOGY";

CREATE COLUMN TABLE "GREEK_MYTHOLOGY"."MEMBERS" (
	"NAME" VARCHAR(100) PRIMARY KEY,
	"TYPE" VARCHAR(100),
	"RESIDENCE" VARCHAR(100)
);

INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE") VALUES ('Chaos', 'primordial deity');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE") VALUES ('Gaia', 'primordial deity');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE") VALUES ('Uranus', 'primordial deity');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Rhea', 'titan', 'Tartarus');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Cronus', 'titan', 'Tartarus');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Zeus', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Poseidon', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Hades', 'god', 'Underworld');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Hera', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Demeter', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Athena', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Ares', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Aphrodite', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Hephaestus', 'god', 'Olymp');
INSERT INTO "GREEK_MYTHOLOGY"."MEMBERS"("NAME", "TYPE", "RESIDENCE") VALUES ('Persephone', 'god', 'Underworld');

CREATE COLUMN TABLE "GREEK_MYTHOLOGY"."RELATIONSHIPS" (
	"KEY" INT UNIQUE NOT NULL,
	"SOURCE" VARCHAR(100) NOT NULL REFERENCES "GREEK_MYTHOLOGY"."MEMBERS" ("NAME") ON UPDATE CASCADE ON DELETE CASCADE,
	"TARGET" VARCHAR(100) NOT NULL REFERENCES "GREEK_MYTHOLOGY"."MEMBERS" ("NAME") ON UPDATE CASCADE ON DELETE CASCADE,
	"TYPE" VARCHAR(100)
);

INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (1, 'Chaos', 'Gaia', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (2, 'Gaia', 'Uranus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (3, 'Gaia', 'Cronus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (4, 'Uranus', 'Cronus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (5, 'Gaia', 'Rhea', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (6, 'Uranus', 'Rhea', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (7, 'Cronus', 'Zeus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (8, 'Rhea', 'Zeus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (9, 'Cronus', 'Hera', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (10, 'Rhea', 'Hera', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (11, 'Cronus', 'Demeter', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (12, 'Rhea', 'Demeter', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (13, 'Cronus', 'Poseidon', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (14, 'Rhea', 'Poseidon', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (15, 'Cronus', 'Hades', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (16, 'Rhea', 'Hades', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (17, 'Zeus', 'Athena', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (18, 'Zeus', 'Ares', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (19, 'Hera', 'Ares', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (20, 'Uranus', 'Aphrodite', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (21, 'Zeus', 'Hephaestus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (22, 'Hera', 'Hephaestus', 'hasSon');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (23, 'Zeus', 'Persephone', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (24, 'Demeter', 'Persephone', 'hasDaughter');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (25, 'Zeus', 'Hera', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (26, 'Hera', 'Zeus', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (27, 'Hades', 'Persephone', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (28, 'Persephone', 'Hades', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (29, 'Aphrodite', 'Hephaestus', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (30, 'Hephaestus', 'Aphrodite', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (31, 'Cronus', 'Rhea', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (32, 'Rhea', 'Cronus', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (33, 'Uranus', 'Gaia', 'marriedTo');
INSERT INTO "GREEK_MYTHOLOGY"."RELATIONSHIPS"("KEY", "SOURCE", "TARGET", "TYPE") VALUES (34, 'Gaia', 'Uranus', 'marriedTo');

CREATE GRAPH WORKSPACE "GREEK_MYTHOLOGY"."GRAPH"
	EDGE TABLE "GREEK_MYTHOLOGY"."RELATIONSHIPS"
		SOURCE COLUMN "SOURCE"
		TARGET COLUMN "TARGET"
		KEY COLUMN "KEY"
	VERTEX TABLE "GREEK_MYTHOLOGY"."MEMBERS"
		KEY COLUMN "NAME"
;

SELECT * FROM "SYS"."GRAPH_WORKSPACES";
