using {ds.api.cards as dsentity} from '../db/data-model';

service DSOdataService {
    entity DS_01 as projection on dsentity.DS01;
    entity DS_02 as projection on dsentity.DS02;
    entity DS_03 as projection on dsentity.DS03;
    entity DS_04 as projection on dsentity.DS04;
    entity DS_05 as projection on dsentity.DS05;

    entity card01 as 
    select a.asst_type2 /* 자산유형1 */
         , sum(b.cost1) as cost1 : Integer64 /* 취득가 */
         , sum(b.cost2) as cost2 : Integer64 /* 장부가 */
         , count(*) as cnt : Integer
      from dsentity.DS02 as a
      join dsentity.DS01 as b on a.qcode = b.qcode
     group by a.asst_type2;
    
    entity card02_01 as
    select a.line
         , round((avg(days_between(a.install_stdt, a.install_schd_eddt))),1) as line_lt_days : Decimal(10,10)
      from dsentity.DS03 as a
     group by a.line
    ;

    entity card02_02 as
    select a.gbm
         , round((avg(days_between(a.install_stdt, a.install_schd_eddt))),1) as gbm_lt_days : Decimal(10,10)
     from dsentity.DS03 as a
     group by a.gbm
    ;

    entity card02_03 as
    select a.site
         , round((avg(days_between(a.install_stdt, a.install_schd_eddt))),1) as site_lt_days : Decimal(10,10)
      from dsentity.DS03 as a
     group by a.site
    ;

    entity card02_04 as
    select a.use_org
         , round((avg(days_between(a.install_stdt, a.install_schd_eddt))),1) as org_lt_days : Decimal(10,10)
      from dsentity.DS03 as a
     group by a.use_org
    ;

    entity card03 as
    select a.fclt_id
         , a.asst_type1
         , a.asst_type2
         , a.asst_status
         , a.fclt_area
         , a.model
         , b.use_org
         , b.lfcycl_mng_org
         , b.building
         , b.line
         , b.floor
         , c.eam_status
         , days_between(b.install_stdt, b.install_schd_eddt) as end_days : Integer
         , days_between(b.install_stdt, CURRENT_DATE) as current_days : Integer
         , round((days_between(b.install_stdt, CURRENT_DATE) / days_between(b.install_stdt, b.install_schd_eddt)) * 100,1) as current_rate : Decimal(3,2)
      from dsentity.DS02 as a
      join dsentity.DS03 as b
        on a.fclt_id = b.fclt_id
      join dsentity.DS04 as c
        on b.fclt_id = c.fclt_id  
    ;

    entity card04 as
    /*
    AMS 상태 = 사용 
    EAM 상태 = 설치완료 or 철거 요청
    ||  
    AMS 상태 = 미사용 
    EAM 상태 = 미설치 or 설치 요청 or 철거 진행중 
    || 
    AMS 상태 = 폐기 
    EAM 상태 = 철거 완료 
    */
    select count(*) as cnt : Integer
      from ( select fclt_id
               from dsentity.DS04 as b
              minus
             select fclt_id
               from dsentity.DS04 as a
              where ((a.eam_status = '설치완료' or a.eam_status = '철거요청') and a.ams_status = '사용')
                 or ((a.eam_status = '미설치' or a.eam_status = '설치요청' or a.eam_status = '철거진행중') and a.ams_status = '미사용')
                 or (a.eam_status = '폐기' and a.ams_status = '철거완료')
      ) as z
    ;

    entity card_detail as
    select b.fclt_id
         , b.qcode
         , a.cost1
         , a.curr1
         , a.cost2
         , a.curr2
         , a.date1
         , b.asst_no
         , b.asst_type1
         , b.asst_type2
         , b.mst_code as ds02_mst_code
         , b.asst_status
         , b.fclt_area
         , b.model
         , b.serial_no
         , c.mst_code as ds03_mst_code
         , c.fclt_status
         , c.ams_status as ds03_ams_status
         , c.rgst_type
         , c.install_stdt
         , c.install_schd_eddt
         , c.install_eddt
         , c.dmsh_stdt
         , c.dmsh_schd_eddt
         , c.dmsh_eddt
         , c.asst_div
         , c.use_org
         , c.lfcycl_mng_org
         , c.lfcycl_mngr
         , c.inout_div
         , c.district
         , c.building
         , c.floor
         , c.line
         , c.bay
         , c.site
         , c.gbm
         , c.gain_dt
         , d.eam_status
         , d.ams_status as ds04_ams_status
      from dsentity.DS01 as a
      join dsentity.DS02 as b
        on a.qcode = b.qcode
      join dsentity.DS03 as c
        on b.fclt_id = c.fclt_id
      join dsentity.DS04 as d
        on c.fclt_id = d.fclt_id
    }
    ;
/* Deatail Query */

