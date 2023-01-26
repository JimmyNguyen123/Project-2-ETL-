CREATE TABLE contacts(
	contact_id integer not null,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	CONSTRAINT contacts_PK PRIMARY KEY (contact_id)
);
--Import contacts.csv
SELECT * FROM contacts;

CREATE TABLE category(
	category_id varchar not null,
	category varchar not null,
	CONSTRAINT category_PK PRIMARY KEY (category_id)
);
--Import category.csv
SELECT * FROM category;

CREATE TABLE subcategory(
	subcategory_id varchar not null,
	subcategory varchar not null,
	CONSTRAINT subcategory_PK PRIMARY KEY (subcategory_id)
);
--Import subcategory.csv
SELECT * FROM subcategory;

CREATE TABLE campaign(
	cf_id int not null,
	contact_id int not null,
	company_name varchar not null,
	description varchar not null,
	goal float(2),
	pledged float(2),
	outcome varchar not null,
	backers_count int,
	country varchar(3) not null,
	currency varchar(3) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar not null,
	subcategory_id varchar not null,
	CONSTRAINT campaign_PK PRIMARY KEY (cf_id),
	CONSTRAINT campaign_FK_contacts FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	CONSTRAINT campaign_FK_category FOREIGN KEY (category_id) REFERENCES category(category_id),
	CONSTRAINT campaign_FK_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
--Import campaign.csv
SELECT * FROM campaign;