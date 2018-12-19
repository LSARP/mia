
### Mia ###
Please note that Mia was developed for a Windows environment. This setup guide assumes a windows environment and Python3.6. Although the GUI will work on Linux based systems, it is not supported.

To run Mia, enter the Mia directory and create a virtual environment:

`virvualenv .miavenv`

Activate the virtual environment

`.\.miaenv\Sources\activate`

Install required packages

`pip3 install -r requirements.txt`

Run mia

`python3.6 mia.pyw`

The database is included with Mia and is called `files.db`. You can edit it with sqlite3. To see the files table schema, use `sqlite3 files.db` then run `.schema files`

IF THE FILE DATABASE DOES NOT EXIST:

It can be created using sqlite3. Ensure sqlite3 has been downloaded and added to the path environment variable. The command:

`sqlite3 name_of_db.db`

will create the database and open the sqlite3 console to the database. After this, use the command:

`CREATE TABLE files(filename varchar(1028), date_created date, date_moved date, new_location varchar(1028)); `

To create the table that will maintain the file information. As mia is hardcoded to use a table called "files", please ensure you do not change the name of the table. The database can be named whatever you would like. After you have done this, ensure that mia is pointing to this database (whatever you have named it) in the database field of the GUI.

### Insider notes

Do the install fuckery
If Xcalibur fails, kill it and restart.
Enable MSMQ Server 
	Control Panel -> Programs -> Programs and Features
		->Microsoft Message Queue (MSMQ) Server)
regsvr32 C:\Program Files (x86)\Thermo\Foundation\XRawfile2.dll
readw.exe should now work