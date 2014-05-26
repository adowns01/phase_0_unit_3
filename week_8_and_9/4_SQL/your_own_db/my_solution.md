<!-- ## Show the terminal output here.  -->

input: .schema
output:
```bash
--CREATE TABLE appointments (
--  id INTEGER PRIMARY KEY AUTOINCREMENT, 
--  patient_id INTEGER NOT NULL, 
--  appt_date DATETIME NOT NULL, 
--  provider TEXT(50) NOT NULL, 
--  symptom TEXT(50) NOT NULL, 
--  treatment TEXT(100), 
--  created_at DATETIME NOT NULL, 
--  updated_at DATETIME NOT NULL
--);
--CREATE TABLE patients (
--  id INTEGER PRIMARY KEY AUTOINCREMENT, 
--  name TEXT(20) NOT NULL, 
--  species TEXT(20) NOT NULL, 
--  owner_name TEXT(50) NOT NULL, 
--  created_at DATETIME NOT NULL,
--  updated_at DATETIME NOT NULL
--);
```
input: SELECT * FROM patients JOIN appointments ON patients.id = appointments.patient_id;
output: there was no output because there are no values in either table


After we added our values...
input: SELECT * FROM patients;

output: 
```bash
1|Esther|Main Coon|Amelia|2014-05-25 20:23:19|2014-05-25 20:23:19
2|Stripes|Tom Cat|Amelia|2014-05-25 20:23:19|2014-05-25 20:23:19
3|Beau Bunny|Bunny|Amelia|2014-05-25 20:23:19|2014-05-25 20:23:19
4|Princess Amelia|Cat|Amelia|2014-05-25 20:23:19|2014-05-25 20:23:19
5|Fat Louie|Cat|Amelia|2014-05-25 20:23:21|2014-05-25 20:23:21
6|Fergie|K9|Bridgette|2014-05-25 20:24:00|2014-05-25 20:24:00
7|Pubby|K9|Bridgette|2014-05-25 20:24:00|2014-05-25 20:24:00
8|China|K9|Bridgette|2014-05-25 20:24:00|2014-05-25 20:24:00
9|Mickey|Feline|Bridgette|2014-05-25 20:24:00|2014-05-25 20:24:00
10|Misty|Feline|Bridgette|2014-05-25 20:24:01|2014-05-25 20:24:01
```

Then I added one value to appointments to test the join. 
```bash
1|Esther|Main Coon|Amelia|2014-05-25 20:23:19|2014-05-25 20:23:19|1|1|2014-05-26 16:37:10|Amelia|Too Cute|Extra Cuddling|2014-05-26 16:37:10|2014-05-26 16:37:10

```

