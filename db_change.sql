--------------20220610-----------------
create table w_project_info (
	id bigint primary key ,
	project_name varchar(200) ,
	customer_name varchar(200) ,
	status        smallint  default 0 ,
	create_date   timestamp default now() ,
	create_user   varchar(100),
	modified_date timestamp default now() ,
	modified_user varchar(100)
);
comment on table w_project_info is '项目基本信息';
comment on column w_project_info.id is '主键ID';
comment on column w_project_info.project_name is '项目名称';
comment on column w_project_info.customer_name is '客户名称';
comment on column w_project_info.status is '记录状态';
comment on column w_project_info.create_date is '创建时间';
comment on column w_project_info.create_user is '创建人';
comment on column w_project_info.modified_date is '最近修改时间';
comment on column w_project_info.modified_user is '最近修改人';

--------------20220615-----------------
drop table if exists w_project_info;

create table if not exists w_project_info
(
    id bigint primary key,
    status smallint default 0,
    create_date timestamp default now(),
    create_user varchar(100),
    modified_date timestamp default now(),
    modified_user varchar(100),
    project_name varchar(200) not null,
    customer_name varchar(200) not null,
    contract_sign_date date,
    contract_number varchar(50),
    contract_type smallint,
    sales_manager varchar(50) not null,
    start_date date,
    priority smallint default 0 not null,
    project_status smallint default 0 not null,
    settlement_status smallint default 0 not null,
    remark   varchar(2000),
    contract_total_amount money,
    received_ratio smallint,
    received_amount money,
    estimated_next_payment_date date,
    estimated_next_payment_percentage smallint,
    next_payment_condition varchar(2000)
);

comment on table w_project_info is '项目基本信息';
comment on column w_project_info.project_name is '项目名称';
comment on column w_project_info.customer_name is '客户名称';
comment on column w_project_info.contract_sign_date is '签约时间';
comment on column w_project_info.contract_number is '合同编号';
comment on column w_project_info.contract_type is '合同性质';
comment on column w_project_info.sales_manager is '销售经理';
comment on column w_project_info.start_date is '开始时间';
comment on column w_project_info.priority is '优先级';
comment on column w_project_info.project_status is '项目状态';
comment on column w_project_info.settlement_status is '结算状态';
comment on column w_project_info.remark is '备注';
comment on column w_project_info.contract_total_amount is '合同总金额';
comment on column w_project_info.received_ratio is '已收款比例';
comment on column w_project_info.received_amount is '已收款金额';
comment on column w_project_info.estimated_next_payment_date is '预计下次付款时间';
comment on column w_project_info.estimated_next_payment_percentage is '预计下次付款比例';
comment on column w_project_info.next_payment_condition is '下次付款条件';

comment on column w_project_info.id is '主键ID';
comment on column w_project_info.status is '记录状态';
comment on column w_project_info.create_date is '创建时间';
comment on column w_project_info.create_user is '创建人';
comment on column w_project_info.modified_date is '最近修改时间';
comment on column w_project_info.modified_user is '最近修改人';

drop table w_project_moments;
create table if not exists w_project_moments(
    id bigint primary key,
    status smallint default 0,
    create_date timestamp default now(),
    create_user varchar(100),
    modified_date timestamp default now(),
    modified_user varchar(100),
    occur_time timestamptz not null,
    contact_info smallint not null,
    customer_name varchar(50),
    manager varchar(50) not null,
    moment_content varchar(2000)
);

comment on table w_project_moments is '项目动态';
comment on column w_project_moments.occur_time is '发生时间';
comment on column w_project_moments.contact_info is '联系方式';
comment on column w_project_moments.customer_name is '客户联系人';
comment on column w_project_moments.manager is '经办人';
comment on column w_project_moments.moment_content is '动态内容';

comment on column w_project_moments.id is '主键ID';
comment on column w_project_moments.status is '记录状态';
comment on column w_project_moments.create_date is '创建时间';
comment on column w_project_moments.create_user is '创建人';
comment on column w_project_moments.modified_date is '最近修改时间';
comment on column w_project_moments.modified_user is '最近修改人';

-- drop table 项目概况;
-- create table if not exists 项目概况(
--     合同总金额 money,
--     已收款比例 smallint,
--     已收款金额 money,
--     预计下次付款时间 date,
--     预计下次付款比例 smallint,
--     下次付款条件 varchar(2000)
-- );

drop table w_project_finance;
create table if not exists w_project_finance(
    id bigint primary key,
    status smallint default 0,
    create_date timestamp default now(),
    create_user varchar(100),
    modified_date timestamp default now(),
    modified_user varchar(100),
    payment_type smallint not null,
    money_amount money not null,
    occur_date date not null,
    remark varchar(2000)
);

comment on table w_project_finance is '项目财务';
comment on column w_project_finance.payment_type is '款项种类';
comment on column w_project_finance.money_amount is '金额';
comment on column w_project_finance.occur_date is '发生时间';
comment on column w_project_finance.remark is '备注';

comment on column w_project_finance.id is '主键ID';
comment on column w_project_finance.status is '记录状态';
comment on column w_project_finance.create_date is '创建时间';
comment on column w_project_finance.create_user is '创建人';
comment on column w_project_finance.modified_date is '最近修改时间'; 
comment on column w_project_finance.modified_user is '最近修改人';

drop table if exists w_choice_info;
create table if not exists w_choice_info(
    id bigint primary key,
    status smallint default 0,
    create_date timestamp default now(),
    create_user varchar(100),
    modified_date timestamp default now(),
    modified_user varchar(100),
    category_id bigint,
    choice_description varchar(100)
);

comment on table w_choice_info is '选项信息表';
comment on column w_choice_info.choice_description is '选项描述';
comment on column w_choice_info.id is '主键ID';
comment on column w_choice_info.category_id is '类别ID';
comment on column w_choice_info.status is '记录状态';
comment on column w_choice_info.create_date is '创建时间';
comment on column w_choice_info.create_user is '创建人';
comment on column w_choice_info.modified_date is '最近修改时间';
comment on column w_choice_info.modified_user is '最近修改人';