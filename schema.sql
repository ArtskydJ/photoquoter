create table invoice_anonymous (
	invoice_anonymous_id int unsigned auto_increment not null,
	uuid char(36) not null,
	unique key (uuid),
	primary key (invoice_anonymous_id)
);

create table invoice_line_item_anonymous (
	invoice_line_item_anonymous_id int unsigned auto_increment not null,
	description varchar(1000) not null,
	invoice_anonymous_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (invoice_anonymous_id) REFERENCES invoice_anonymous (invoice_anonymous_id),
	primary key (invoice_line_item_anonymous_id)
);

create table invoice_line_item_anonymous_image (
	invoice_line_item_anonymous_image_id int unsigned auto_increment not null,
	image blob not null,
	invoice_line_item_anonymous_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (invoice_line_item_anonymous_id) REFERENCES invoice_line_item_anonymous (invoice_line_item_anonymous_id),
	primary key (invoice_line_item_anonymous_image_id)
);

-- 2023-11-29
