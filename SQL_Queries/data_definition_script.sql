USE [Final_MVC]
GO
/****** Object:  Table [dbo].[stg_asis_Austin]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_asis_Austin](
	[crash_id] [int] NULL,
	[crash_fatal_fl] [char](1) NULL,
	[crash_date] [datetime] NULL,
	[crash_time] [varchar](8) NULL,
	[case_id] [varchar](100) NULL,
	[rpt_latitude] [real] NULL,
	[rpt_longitude] [real] NULL,
	[rpt_block_num] [varchar](10) NULL,
	[rpt_street_pfx] [varchar](2) NULL,
	[rpt_street_name] [varchar](100) NULL,
	[rpt_street_sfx] [varchar](10) NULL,
	[crash_speed_limit] [int] NULL,
	[road_constr_zone_fl] [varchar](1) NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[street_name] [varchar](100) NULL,
	[street_nbr] [varchar](10) NULL,
	[street_name_2] [varchar](100) NULL,
	[street_nbr_2] [varchar](10) NULL,
	[crash_sev_id] [int] NULL,
	[sus_serious_injry_cnt] [int] NULL,
	[nonincap_injry_cnt] [int] NULL,
	[poss_injry_cnt] [int] NULL,
	[non_injry_cnt] [int] NULL,
	[unkn_injry_cnt] [int] NULL,
	[tot_injry_cnt] [int] NULL,
	[death_cnt] [int] NULL,
	[contrib_factr_p1_id] [int] NULL,
	[contrib_factr_p2_id] [int] NULL,
	[units_involved] [varchar](1000) NULL,
	[atd_mode_category_metadata] [varchar](max) NULL,
	[pedestrian_fl] [char](1) NULL,
	[motor_vehicle_fl] [char](1) NULL,
	[motorcycle_fl] [char](1) NULL,
	[bicycle_fl] [char](1) NULL,
	[other_fl] [char](1) NULL,
	[point] [varchar](50) NULL,
	[apd_confirmed_fatality] [varchar](1) NULL,
	[apd_confirmed_death_count] [int] NULL,
	[motor_vehicle_death_count] [int] NULL,
	[motor_vehicle_serious_injury_count] [int] NULL,
	[bicycle_death_count] [int] NULL,
	[bicycle_serious_injury_count] [int] NULL,
	[pedestrian_death_count] [int] NULL,
	[pedestrian_serious_injury_count] [int] NULL,
	[motorcycle_death_count] [int] NULL,
	[motorcycle_serious_injury_count] [int] NULL,
	[other_death_count] [int] NULL,
	[other_serious_injury_count] [int] NULL,
	[onsys_fl] [char](1) NULL,
	[private_dr_fl] [char](1) NULL,
	[micromobility_serious_injury_count] [int] NULL,
	[micromobility_death_count] [int] NULL,
	[micromobility_fl] [char](1) NULL,
	[DI_Process_ID] [varchar](10) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_asis_Chicago]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_asis_Chicago](
	[CRASH_RECORD_ID] [varchar](128) NULL,
	[CRASH_DATE_EST_I] [varchar](2) NULL,
	[CRASH_DATE] [datetime] NULL,
	[POSTED_SPEED_LIMIT] [int] NULL,
	[TRAFFIC_CONTROL_DEVICE] [varchar](24) NULL,
	[DEVICE_CONDITION] [varchar](24) NULL,
	[WEATHER_CONDITION] [varchar](24) NULL,
	[LIGHTING_CONDITION] [varchar](22) NULL,
	[FIRST_CRASH_TYPE] [varchar](28) NULL,
	[TRAFFICWAY_TYPE] [varchar](31) NULL,
	[LANE_CNT] [int] NULL,
	[ALIGNMENT] [varchar](21) NULL,
	[ROADWAY_SURFACE_COND] [varchar](15) NULL,
	[ROAD_DEFECT] [varchar](17) NULL,
	[REPORT_TYPE] [varchar](26) NULL,
	[CRASH_TYPE] [varchar](32) NULL,
	[INTERSECTION_RELATED_I] [varchar](2) NULL,
	[NOT_RIGHT_OF_WAY_I] [varchar](2) NULL,
	[HIT_AND_RUN_I] [varchar](2) NULL,
	[DAMAGE] [varchar](13) NULL,
	[DATE_POLICE_NOTIFIED] [datetime] NULL,
	[PRIM_CONTRIBUTORY_CAUSE] [varchar](80) NULL,
	[SEC_CONTRIBUTORY_CAUSE] [varchar](80) NULL,
	[STREET_NO] [int] NULL,
	[STREET_DIRECTION] [varchar](2) NULL,
	[STREET_NAME] [varchar](31) NULL,
	[BEAT_OF_OCCURRENCE] [int] NULL,
	[PHOTOS_TAKEN_I] [varchar](2) NULL,
	[STATEMENTS_TAKEN_I] [varchar](2) NULL,
	[DOORING_I] [varchar](2) NULL,
	[WORK_ZONE_I] [varchar](2) NULL,
	[WORK_ZONE_TYPE] [varchar](12) NULL,
	[WORKERS_PRESENT_I] [varchar](2) NULL,
	[NUM_UNITS] [int] NULL,
	[MOST_SEVERE_INJURY] [varchar](24) NULL,
	[INJURIES_TOTAL] [int] NULL,
	[INJURIES_FATAL] [int] NULL,
	[INJURIES_INCAPACITATING] [int] NULL,
	[INJURIES_NON_INCAPACITATING] [int] NULL,
	[INJURIES_REPORTED_NOT_EVIDENT] [int] NULL,
	[INJURIES_NO_INDICATION] [int] NULL,
	[INJURIES_UNKNOWN] [int] NULL,
	[CRASH_HOUR] [int] NULL,
	[CRASH_DAY_OF_WEEK] [int] NULL,
	[CRASH_MONTH] [int] NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](40) NULL,
	[DI_JobId] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_asis_NYC]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_asis_NYC](
	[COLLISION_ID] [int] NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](5) NULL,
	[BOROUGH] [varchar](50) NULL,
	[ZIP_CODE] [varchar](5) NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](100) NULL,
	[ON_STREET_NAME] [varchar](100) NULL,
	[CROSS_STREET_NAME] [varchar](100) NULL,
	[OFF_STREET_NAME] [varchar](100) NULL,
	[NUMBER_OF_PERSONS_INJURED] [int] NULL,
	[NUMBER_OF_PERSONS_KILLED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_INJURED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_KILLED] [int] NULL,
	[NUMBER_OF_CYCLIST_INJURED] [int] NULL,
	[NUMBER_OF_CYCLIST_KILLED] [int] NULL,
	[NUMBER_OF_MOTORIST_INJURED] [int] NULL,
	[NUMBER_OF_MOTORIST_KILLED] [int] NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_1] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_2] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_3] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_4] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_5] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_1] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_2] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_3] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_4] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_5] [varchar](100) NULL,
	[DI_Process_ID] [varchar](20) NULL,
	[DI_Create_Date] [datetime] NULL,
	[DI_Job_Name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Cleaned_Austin]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Cleaned_Austin](
	[crash_id] [int] NULL,
	[crash_fatal_fl] [char](2) NULL,
	[crash_date] [datetime] NULL,
	[crash_time] [varchar](8) NULL,
	[case_id] [varchar](100) NULL,
	[rpt_latitude] [real] NULL,
	[rpt_longitude] [real] NULL,
	[rpt_block_num] [int] NULL,
	[rpt_street_pfx] [varchar](2) NULL,
	[rpt_street_name] [varchar](100) NULL,
	[rpt_street_sfx] [varchar](10) NULL,
	[crash_speed_limit] [int] NULL,
	[road_constr_zone_fl] [varchar](2) NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[street_name] [varchar](100) NULL,
	[street_nbr] [int] NULL,
	[street_name_2] [varchar](100) NULL,
	[street_nbr_2] [varchar](10) NULL,
	[crash_sev_id] [int] NULL,
	[sus_serious_injry_cnt] [int] NULL,
	[nonincap_injry_cnt] [int] NULL,
	[poss_injry_cnt] [int] NULL,
	[non_injry_cnt] [int] NULL,
	[unkn_injry_cnt] [int] NULL,
	[tot_injry_cnt] [int] NULL,
	[death_cnt] [int] NULL,
	[contrib_factr_p1_id] [int] NULL,
	[contrib_factr_p2_id] [int] NULL,
	[units_involved] [varchar](1000) NULL,
	[atd_mode_category_metadata] [varchar](max) NULL,
	[pedestrian_fl] [varchar](2) NULL,
	[motor_vehicle_fl] [varchar](2) NULL,
	[motorcycle_fl] [varchar](2) NULL,
	[bicycle_fl] [varchar](2) NULL,
	[other_fl] [varchar](2) NULL,
	[point] [varchar](50) NULL,
	[apd_confirmed_fatality] [varchar](2) NULL,
	[apd_confirmed_death_count] [int] NULL,
	[motor_vehicle_death_count] [int] NULL,
	[motor_vehicle_serious_injury_count] [int] NULL,
	[bicycle_death_count] [int] NULL,
	[bicycle_serious_injury_count] [int] NULL,
	[pedestrian_death_count] [int] NULL,
	[pedestrian_serious_injury_count] [int] NULL,
	[motorcycle_death_count] [int] NULL,
	[motorcycle_serious_injury_count] [int] NULL,
	[other_death_count] [int] NULL,
	[other_serious_injury_count] [int] NULL,
	[onsys_fl] [varchar](2) NULL,
	[private_dr_fl] [varchar](2) NULL,
	[micromobility_serious_injury_count] [int] NULL,
	[micromobility_death_count] [int] NULL,
	[micromobility_fl] [varchar](2) NULL,
	[DI_Process_ID] [varchar](10) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Cleaned_Chicago]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Cleaned_Chicago](
	[CRASH_ID] [int] NULL,
	[CRASH_RECORD_ID] [varchar](128) NULL,
	[CRASH_DATE_EST_I] [varchar](2) NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](20) NULL,
	[POSTED_SPEED_LIMIT] [int] NULL,
	[TRAFFIC_CONTROL_DEVICE] [varchar](24) NULL,
	[DEVICE_CONDITION] [varchar](24) NULL,
	[WEATHER_CONDITION] [varchar](24) NULL,
	[LIGHTING_CONDITION] [varchar](22) NULL,
	[FIRST_CRASH_TYPE] [varchar](28) NULL,
	[TRAFFICWAY_TYPE] [varchar](31) NULL,
	[LANE_CNT] [int] NULL,
	[ALIGNMENT] [varchar](21) NULL,
	[ROADWAY_SURFACE_COND] [varchar](15) NULL,
	[ROAD_DEFECT] [varchar](17) NULL,
	[REPORT_TYPE] [varchar](26) NULL,
	[CRASH_TYPE] [varchar](32) NULL,
	[INTERSECTION_RELATED_I] [varchar](2) NULL,
	[NOT_RIGHT_OF_WAY_I] [varchar](2) NULL,
	[HIT_AND_RUN_I] [varchar](2) NULL,
	[DAMAGE] [varchar](13) NULL,
	[DATE_POLICE_NOTIFIED] [datetime] NULL,
	[PRIM_CONTRIBUTORY_CAUSE] [varchar](80) NULL,
	[SEC_CONTRIBUTORY_CAUSE] [varchar](80) NULL,
	[STREET_NO] [int] NULL,
	[STREET_DIRECTION] [varchar](2) NULL,
	[STREET_NAME] [varchar](31) NULL,
	[BEAT_OF_OCCURRENCE] [int] NULL,
	[PHOTOS_TAKEN_I] [varchar](2) NULL,
	[STATEMENTS_TAKEN_I] [varchar](2) NULL,
	[DOORING_I] [varchar](2) NULL,
	[WORK_ZONE_I] [varchar](2) NULL,
	[WORK_ZONE_TYPE] [varchar](12) NULL,
	[WORKERS_PRESENT_I] [varchar](2) NULL,
	[NUM_UNITS] [int] NULL,
	[MOST_SEVERE_INJURY] [varchar](24) NULL,
	[INJURIES_TOTAL] [int] NULL,
	[INJURIES_FATAL] [int] NULL,
	[INJURIES_INCAPACITATING] [int] NULL,
	[INJURIES_NON_INCAPACITATING] [int] NULL,
	[INJURIES_REPORTED_NOT_EVIDENT] [int] NULL,
	[INJURIES_NO_INDICATION] [int] NULL,
	[INJURIES_UNKNOWN] [int] NULL,
	[CRASH_HOUR] [int] NULL,
	[CRASH_DAY_OF_WEEK] [int] NULL,
	[CRASH_MONTH] [int] NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](40) NULL,
	[DI_JobId] [varchar](20) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Cleaned_NYC]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Cleaned_NYC](
	[COLLISION_ID] [int] NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](8) NULL,
	[BOROUGH] [varchar](50) NULL,
	[ZIP_CODE] [varchar](5) NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](100) NULL,
	[ON_STREET_NAME] [varchar](100) NULL,
	[CROSS_STREET_NAME] [varchar](100) NULL,
	[OFF_STREET_NAME] [varchar](100) NULL,
	[NUMBER_OF_PERSONS_INJURED] [int] NULL,
	[NUMBER_OF_PERSONS_KILLED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_INJURED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_KILLED] [int] NULL,
	[NUMBER_OF_CYCLIST_INJURED] [int] NULL,
	[NUMBER_OF_CYCLIST_KILLED] [int] NULL,
	[NUMBER_OF_MOTORIST_INJURED] [int] NULL,
	[NUMBER_OF_MOTORIST_KILLED] [int] NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_1] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_2] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_3] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_4] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_5] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_1] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_2] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_3] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_4] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_5] [varchar](100) NULL,
	[DI_Process_ID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkFlow_Name] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Final_Austin]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Final_Austin](
	[crash_id] [int] NULL,
	[crash_fatal_fl] [varchar](2) NULL,
	[crash_date] [datetime] NULL,
	[crash_time] [varchar](8) NULL,
	[case_id] [varchar](100) NULL,
	[rpt_latitude] [real] NULL,
	[rpt_longitude] [real] NULL,
	[rpt_block_num] [int] NULL,
	[rpt_street_pfx] [varchar](10) NULL,
	[rpt_street_name] [varchar](50) NULL,
	[rpt_street_sfx] [varchar](4) NULL,
	[crash_speed_limit] [int] NULL,
	[road_constr_zone_fl] [varchar](2) NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[street_name] [varchar](50) NULL,
	[street_nbr] [int] NULL,
	[street_name_2] [varchar](50) NULL,
	[street_nbr_2] [varchar](30) NULL,
	[crash_sev_id] [int] NULL,
	[sus_serious_injry_cnt] [int] NULL,
	[nonincap_injry_cnt] [int] NULL,
	[poss_injry_cnt] [int] NULL,
	[non_injry_cnt] [int] NULL,
	[unkn_injry_cnt] [int] NULL,
	[tot_injry_cnt] [int] NULL,
	[death_cnt] [int] NULL,
	[Contributing_Factor_Code] [int] NULL,
	[Contributing_Factor_Description] [varchar](100) NULL,
	[units_involved] [varchar](1000) NULL,
	[atd_mode_category_metadata] [varchar](6000) NULL,
	[pedestrian_fl] [varchar](2) NULL,
	[motor_vehicle_fl] [varchar](2) NULL,
	[motorcycle_fl] [varchar](2) NULL,
	[bicycle_fl] [varchar](2) NULL,
	[other_fl] [varchar](2) NULL,
	[point] [varchar](45) NULL,
	[apd_confirmed_fatality] [varchar](2) NULL,
	[apd_confirmed_death_count] [int] NULL,
	[motor_vehicle_death_count] [int] NULL,
	[motor_vehicle_serious_injury_count] [int] NULL,
	[bicycle_death_count] [int] NULL,
	[bicycle_serious_injury_count] [int] NULL,
	[pedestrian_death_count] [int] NULL,
	[pedestrian_serious_injury_count] [int] NULL,
	[motorcycle_death_count] [int] NULL,
	[motorcycle_serious_injury_count] [int] NULL,
	[other_death_count] [int] NULL,
	[other_serious_injury_count] [int] NULL,
	[onsys_fl] [varchar](2) NULL,
	[private_dr_fl] [varchar](2) NULL,
	[micromobility_serious_injury_count] [int] NULL,
	[micromobility_death_count] [int] NULL,
	[micromobility_fl] [varchar](2) NULL,
	[DI_ProcessID] [varchar](10) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkFileName] [varchar](50) NULL,
	[Source] [varchar](10) NULL,
	[Date] [datetime] NULL,
	[Crash_Hour] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Final_Chicago]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Final_Chicago](
	[CRASH_ID] [int] NULL,
	[CRASH_RECORD_ID] [varchar](128) NULL,
	[CRASH_DATE_EST_I] [varchar](2) NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](20) NULL,
	[POSTED_SPEED_LIMIT] [int] NULL,
	[TRAFFIC_CONTROL_DEVICE] [varchar](24) NULL,
	[DEVICE_CONDITION] [varchar](24) NULL,
	[WEATHER_CONDITION] [varchar](24) NULL,
	[LIGHTING_CONDITION] [varchar](22) NULL,
	[FIRST_CRASH_TYPE] [varchar](28) NULL,
	[IS_PEDESTRIAN] [varchar](2) NULL,
	[TRAFFICWAY_TYPE] [varchar](31) NULL,
	[LANE_CNT] [int] NULL,
	[ALIGNMENT] [varchar](21) NULL,
	[ROADWAY_SURFACE_COND] [varchar](15) NULL,
	[ROAD_DEFECT] [varchar](17) NULL,
	[REPORT_TYPE] [varchar](26) NULL,
	[CRASH_TYPE] [varchar](32) NULL,
	[INTERSECTION_RELATED_I] [varchar](2) NULL,
	[NOT_RIGHT_OF_WAY_I] [varchar](2) NULL,
	[HIT_AND_RUN_I] [varchar](2) NULL,
	[DAMAGE] [varchar](13) NULL,
	[DATE_POLICE_NOTIFIED] [datetime] NULL,
	[CONTRIBUTORY_CAUSE] [varchar](170) NULL,
	[CONTRIBUTORY_CAUSE_CODE] [int] NULL,
	[CONTRIBUTORY_CAUSE_DESCRIPTION] [varchar](80) NULL,
	[STREET_NO] [int] NULL,
	[STREET_DIRECTION] [varchar](2) NULL,
	[STREET_NAME] [varchar](31) NULL,
	[BEAT_OF_OCCURRENCE] [int] NULL,
	[PHOTOS_TAKEN_I] [varchar](2) NULL,
	[STATEMENTS_TAKEN_I] [varchar](2) NULL,
	[DOORING_I] [varchar](2) NULL,
	[WORK_ZONE_I] [varchar](2) NULL,
	[WORK_ZONE_TYPE] [varchar](12) NULL,
	[WORKERS_PRESENT_I] [varchar](2) NULL,
	[NUM_UNITS] [int] NULL,
	[MOST_SEVERE_INJURY] [varchar](24) NULL,
	[INJURIES_TOTAL] [int] NULL,
	[INJURIES_FATAL] [int] NULL,
	[INJURIES_INCAPACITATING] [int] NULL,
	[INJURIES_NON_INCAPACITATING] [int] NULL,
	[INJURIES_REPORTED_NOT_EVIDENT] [int] NULL,
	[INJURIES_NO_INDICATION] [int] NULL,
	[INJURIES_UNKNOWN] [int] NULL,
	[CRASH_HOUR] [int] NULL,
	[CRASH_DAY_OF_WEEK] [int] NULL,
	[CRASH_MONTH] [int] NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](40) NULL,
	[DI_JobId] [varchar](20) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](30) NULL,
	[SOURCE] [varchar](20) NULL,
	[DATE] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stg_Final_NYC]    Script Date: 4/7/2024 6:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stg_Final_NYC](
	[COLLISION_ID] [int] NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](8) NULL,
	[BOROUGH] [varchar](50) NULL,
	[ZIP_CODE] [varchar](5) NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](100) NULL,
	[ON_STREET_NAME] [varchar](100) NULL,
	[CROSS_STREET_NAME] [varchar](100) NULL,
	[OFF_STREET_NAME] [varchar](100) NULL,
	[IS_PEDESTRIAN] [varchar](2) NULL,
	[NUMBER_OF_PERSONS_INJURED] [int] NULL,
	[NUMBER_OF_PERSONS_KILLED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_INJURED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_KILLED] [int] NULL,
	[NUMBER_OF_CYCLIST_INJURED] [int] NULL,
	[NUMBER_OF_CYCLIST_KILLED] [int] NULL,
	[NUMBER_OF_MOTORIST_INJURED] [int] NULL,
	[NUMBER_OF_MOTORIST_KILLED] [int] NULL,
	[CONTRIBUTING_FACTOR_VEHICLE] [varchar](1000) NULL,
	[VEHICLE_TYPE_CODE] [varchar](1000) NULL,
	[CONTRIBUTING_FACTOR_CODE] [int] NULL,
	[CONTRIBUTING_FACTOR_DESCRIPTION] [varchar](200) NULL,
	[SOURCE] [varchar](10) NULL,
	[DI_Job_ID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
	[Crash_Hour] [int] NULL
) ON [PRIMARY]
GO


USE [Final_MVC]
GO
/****** Object:  Table [dbo].[Dim_Contributing_Factor_SCD]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Contributing_Factor_SCD](
	[SK_ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Contri_DK] [int] NOT NULL,
	[Description] [varchar](100) NULL,
	[SCD_StartDate] [datetime] NULL,
	[SCD_EndDate] [datetime] NULL,
	[SCD_Version] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_JobID] [varchar](20) NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[SK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[Date_SK] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[Week] [int] NULL,
	[Quarter] [int] NULL,
	[Season] [varchar](100) NULL,
	[DI_JobID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Date_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Location]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Location](
	[Location_SK] [int] NOT NULL,
	[STREET_NAME] [varchar](100) NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[DI_JobID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
	[SOURCE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Location_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Source]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Source](
	[Source_SK] [int] NOT NULL,
	[Source] [varchar](100) NULL,
	[DI_JobID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Source_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Time]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Time](
	[Time_SK] [int] NOT NULL,
	[Hour] [int] NULL,
	[DI_JobID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Time_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Vehicle_Type]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Vehicle_Type](
	[Vehicle_SK] [int] NOT NULL,
	[crash_id] [int] NULL,
	[units_involved] [varchar](1000) NULL,
	[Source] [varchar](10) NULL,
	[DI_ProcessID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

Insert Into Dim_Vehicle_Type values(1862, -1, 'NA', 'CHICAGO', 'kCnjbA', '2024-04-13 18:04:13.767', 'Load_Dim_Vehicle_Type_0.1');
/****** Object:  Table [dbo].[Fct_Accidents]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fct_Accidents](
	[Accidents_FCT_SK] [int] NOT NULL,
	[Date_SK] [int] NOT NULL,
	[Location_SK] [int] NOT NULL,
	[Source_SK] [int] NOT NULL,
	[Time_SK] [int] NOT NULL,
	[Crash_ID] [int] NULL,
	[IS_PEDESTRIAN] [varchar](2) NULL,
	[Pedestrian_Injured] [int] NULL,
	[Pedestrian_Killed] [int] NULL,
	[Total_Injured] [int] NULL,
	[Total_Killed] [int] NULL,
	[Motorist_Injured] [int] NULL,
	[Motorist_Killed] [int] NULL,
	[DI_JobId] [varchar](20) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Accidents_FCT_SK] ASC,
	[Date_SK] ASC,
	[Location_SK] ASC,
	[Source_SK] ASC,
	[Time_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fct_Contribution]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fct_Contribution](
	[Contribution_FCT_SK] [int] NOT NULL,
	[Accidents_FCT_SK] [int] NOT NULL,
	[Contri_SK] [int] NOT NULL,
	[Contri_DK] [int] NOT NULL,
	[DI_JobId] [varchar](20) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Contribution_FCT_SK] ASC,
	[Accidents_FCT_SK] ASC,
	[Contri_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fct_Vehicle]    Script Date: 4/7/2024 11:01:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fct_Vehicle](
	[Vehicle_FCT_SK] [int] NOT NULL,
	[Accidents_FCT_SK] [int] NOT NULL,
	[Vehicle_SK] [int] NOT NULL,
	[Vehicle_Count] [int] NULL,
	[DI_ProcessID] [varchar](20) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_Workflow_Name] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Vehicle_FCT_SK] ASC,
	[Accidents_FCT_SK] ASC,
	[Vehicle_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


