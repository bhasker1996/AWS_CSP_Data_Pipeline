
# Table Creation
CREATE TABLE csp_tools.csp_tools_data1
(
    s_no INT PRIMARY KEY NOT NULL,
    team_name VARCHAR(255),
    tool_name VARCHAR(255) NOT NULL,
    description VARCHAR(65535),
    tool_code_link VARCHAR(255),
    tool_script VARCHAR(65535),
    wiki_link VARCHAR(255),
    impact_ticket_reduced_effort_saving_hc VARCHAR(255),
    impact_ticket_reduced_effort_saving_tat VARCHAR(255),
    created_date VARCHAR(50),
    active_inactive VARCHAR(50),
    reason_for_inactive_or_deprecation VARCHAR(65535),
    tool_used_by_csp_external_team VARCHAR(255),
    can_be_reused_across_csp_teams VARCHAR(50),
    eng_team_request_self VARCHAR(50),
    eng_business_team_name VARCHAR(255),
    op_link_from_eng_team VARCHAR(255),
    reason_for_cut VARCHAR(65535),
    remarks VARCHAR(65535),
    is_display BOOLEAN DEFAULT TRUE
)
DISTSTYLE AUTO SORTKEY(s_no);


// Here are few of the sql queries which i have used for this project.

select * From csp_tools.csp_tools_data_temp_new
where tool_name='Appeals Publishing'

SELECT description FROM csp_tools.csp_tools_data_temp_new
where s_no = 90
LIMIT 150;

ALTER TABLE csp_tools.csp_tools_data_temp_new
DROP COLUMN tool_developed_by;

ALTER TABLE csp_tools.csp_tools_data_temp_new
ADD COLUMN Reason_for_Catalog VARCHAR(500) DEFAULT 'N/A';


ALTER TABLE csp_tools.csp_tools_data_temp_new
ADD COLUMN Who_use_this_tool VARCHAR(500) DEFAULT 'N/A';


ALTER TABLE csp_tools.csp_tools_data_temp_new
RENAME COLUMN Reason_for_Catalog to reason_for_catalog_access;

update csp_tools.csp_tools_data_temp_new
set catalog_write_read='N/A'
where team_name='CMS'

update csp_tools.csp_tools_data_temp_new
set login='sasanjay'
where team_name='GCSS'


DELETE from csp_tools.csp_tools_data_temp_new
where s_no =18;

SELECT MIN(s_no), MAX(s_no), count(*) FROM csp_tools.csp_tools_data_temp_new;

delete from csp_tools.csp_tools_data_temp_new where s_no=136


select * from csp_tools.csp_tools_data_temp_new
where upper(team_name) like '%GCSS%'
order by s_no
LIMIT 150

