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