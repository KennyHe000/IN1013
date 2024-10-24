-- 1. Insert into events table the information ‘Fluffy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- 2. Insert into events table the information ‘Hammy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’.
-- Also, insert Hammy into the petPet table.
INSERT INTO petPet (petname, owner, species, gender, birth, death) 
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- 3. Fluffy had 5 kittens, 2 of which are male.
-- Assuming we want to record this as an event.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Fluffy', '2020-10-16', 'litter', '5 kittens, 2 male, 3 female');

-- 4. Claws broke the rib on “1997-08-03”.
-- Update the existing record for Slim with this information.
-- However, since "Slim" is not "Claws," we need to add a new entry for Claws.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Claws', '1997-08-03', 'vet', 'broke the rib');

-- 5. Puffball died on ‘2020-09-01’.
-- Update the petPet table to set the death date for Puffball.
UPDATE petPet 
SET death = '2020-09-01' 
WHERE petname = 'Puffball';

-- 6. Remove Harold's dog from the database due to GDPR.
-- Assuming "Buffy" is Harold's dog. If there are multiple dogs, identify them based on your data.
DELETE FROM petPet 
WHERE petname = 'Buffy';

-- Additionally, delete any events related to Buffy in petEvent.
DELETE FROM petEvent 
WHERE petname = 'Buffy';
