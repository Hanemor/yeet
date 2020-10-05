USE Roprosjekt;

UPDATE utover
SET fornavn = REPLACE(fornavn, '1', 'æ')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '2', 'ø')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '3', 'å')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '4', 'ö')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '5', 'Š')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '6', 'ě')
WHERE uID < 1000;

UPDATE utover
SET fornavn = REPLACE(fornavn, '7', 'á')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '1', 'æ')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '2', 'ø')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '3', 'å')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '4', 'ö')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '8', 'í')
WHERE uID < 1000;

UPDATE utover
SET etternavn = REPLACE(etternavn, '9', 'č')
WHERE uID < 1000;
