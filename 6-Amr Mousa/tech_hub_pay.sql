create database tech_hub_pay;
use tech_hub_pay;

create table users (
id int not null auto_increment,
ipa varchar(33) unique not null,
primary key (id)
);

create table banks_info (
id int not null auto_increment,
bankId varchar(25) unique not null,
senderUrl text,
receiverUrl text,
addAccountUrl text,
qm varchar(15) unique,
primary key (id)
);

create table users_accounts (
id int not null auto_increment,
ipa varchar(33) not null,
accountKey varchar(32) unique not null,
bankId varchar(25) not null,
isDefault boolean not null,
isActive boolean not null,
primary key (id),
foreign key(ipa) references users(ipa) on delete cascade,
foreign key(bankId) references banks_info(bankId) on delete cascade
);

create table queues (
id int not null auto_increment,
bankId varchar(25) not null,
remoteName varchar(30) not null,
bankLqName varchar(30) not null,
qUsage enum('registeration','transaction','addAccount') not null,
foreign key(bankId) references banks_info(bankId) on delete cascade,
primary key (id)
);

create table transactions (
id int not null auto_increment,
transactionId varchar(32) unique not null,
clientId varchar(15) not null,
senderAccountKey varchar(32) not null,
receiverAccount varchar(34) not null,
receiverAccountType enum('ipa', 'wallet', 'iban', 'bankAccoun') not null,
amount decimal(19,4) not null,
issuerBank varchar(25) not null,
acquireBank varchar(25) not null,
transactionStatus enum('success','processing','failed') not null,
transactionDate datetime not null,
foreign key(issuerBank) references banks_info(bankId) on delete cascade,
foreign key(acquireBank) references banks_info(bankId) on delete cascade,
foreign key(senderAccountKey) references users_accounts(accountKey) on delete cascade,
primary key (id)
);
/* datetime format: ‘YYYY-MM-DD hh: mm: ss.nnn */;
