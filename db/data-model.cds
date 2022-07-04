namespace ds.api.cards;

/**
    Q 코드
    취득가
    curr
    장부가
    장부가curr
    App. Date
 */
entity DS01 {
    key qcode : String(5);
    cost1 : Decimal(15,10);
    curr1 : String(3);
    cost2 : Integer64;
    curr2 : String(3);
    date1 : Date;
}

/**
    설비ID
    No
    자산유형1
    자산유형2
    Q 코드
    마스터코드
    자산상태
    설비AREA CLASS
    MODEL
    S/N
 */
entity DS02 {
    /**
    설비ID
     */
    key fclt_id : String(6);
    asst_no	: String(5);
    asst_type1 : String(10);
    asst_type2 : String(10);
    qcode : String(5);
    mst_code : String(3);
    asst_status : String(10);
    fclt_area : String(3);
    model : String(2);
    serial_no : String(5);
}
/**
    설비ID
    마스터코드
    Q Code
    설비상태
    AMS 상태
    등록유형
    설치시작일
    설치완료예정일
    설치완료일
    철거시작일
    철거완료예정
    철거종료일
    자산구분
    사용부서
    생애관리부서
    생애관리자
    사내외구분
    District
    Building
    Floor
    Line
    Bay
    Site
    Gbm
    취득일자
 */
entity DS03 {
    key fclt_id : String(6);
    mst_code : String(3);
    qcode : String(5);    
    fclt_status : String(6);
    ams_status : String(6);
    rgst_type : String(10);
    install_stdt : Date;
    install_schd_eddt : Date;
    install_eddt : Date;
    dmsh_stdt : Date;
    dmsh_schd_eddt : Date;
    dmsh_eddt : Date;
    asst_div : String(5);
    use_org : String(20);
    lfcycl_mng_org : String(20);
    lfcycl_mngr : String(10);
    inout_div : String(8);
    district : String(12);
    building : String(20);
    floor : String(3);
    line : String(3);
    bay : String(3);
    site : String(3);
    gbm : String(10);
    gain_dt : Date;
}
/**
    설비ID
    EAM상태
    AMS상태
  */
entity DS04 {
    key fclt_id : String(6);
    eam_status : String(10);
    ams_status : String(6);
}

/**
    추천시작일
    추천종료일
    사용자ID
    Tile 순서
    Tile 추천 유형
    T-code
    T-code 명
    ERP사용 백분위수
    추천수행일
    프로그램 유형
    Semantic Object (Fiori)
    URL
    Tile 아이콘
    시스템 타겟
 */
entity DS05 {
    zfrdt : Date;
    ztodt : Date;
    bname : String(15);
    zseq : Integer;
    ztype : String(1);
    tcode : String(30);
    nerp_tcode_nm : String(100);
    percentile : String(5);
    batdt : Date;
    zpgmtype : String(2);
    intent : String(30);
    url : String(200);
    icon : String(100);
    sysalias_tgt : String(5);
}

entity DS06 {
    key seqId : Integer;
    activityId: String(30);
    claimedAt: String(30);
    completedAt: String(30);
    createdAt: String(30);
    description: String(100);
    id: String(50);
    processor: String(10);
    recipientUsers: String(50);
    recipientGroups: String(50);
    status: String(30);
    subject: String(50);
    workflowDefinitionId: String(50);
    workflowInstanceId: String(50);
    priority: String(30);
    dueDate: String(30);
    createdBy: String(30);
    definitionId: String(50);
    lastChangedAt: String(30);
    applicationScope: String(10);
}

entity DS03_Performance {
    key seqNo : Integer;
    fclt_id_1 :  String(6);
    mst_code_1 :  String(3);
    qcode_1 :  String(5); 
    fclt_status_1 :  String(6);
    ams_status_1 :  String(6);
    rgst_type_1 :  String(10);
    install_stdt_1 :  Date;
    install_schd_eddt_1 :  Date;
    install_eddt_1 :  Date;
    dmsh_stdt_1 :  Date;
    dmsh_schd_eddt_1 :  Date;
    dmsh_eddt_1 :  Date;
    asst_div_1 :  String(5);
    use_org_1 :  String(20);
    lfcycl_mng_org_1 :  String(20);
    lfcycl_mngr_1 :  String(10);
    inout_div_1 :  String(8);
    district_1 :  String(12);
    building_1 :  String(20);
    floor_1 :  String(3);
    line_1 :  String(3);
    bay_1 :  String(3);
    site_1 :  String(3);
    gbm_1 :  String(10);
    gain_dt_1 :  Date;
    fclt_id_2 :  String(6);
    mst_code_2 :  String(3);
    qcode_2 :  String(5); 
    fclt_status_2 :  String(6);
    ams_status_2 :  String(6);
    rgst_type_2 :  String(10);
    install_stdt_2 :  Date;
    install_schd_eddt_2 :  Date;
    install_eddt_2 :  Date;
    dmsh_stdt_2 :  Date;
    dmsh_schd_eddt_2 :  Date;
    dmsh_eddt_2 :  Date;
    asst_div_2 :  String(5);
    use_org_2 :  String(20);
    lfcycl_mng_org_2 :  String(20);
    lfcycl_mngr_2 :  String(10);
    inout_div_2 :  String(8);
    district_2 :  String(12);
    building_2 :  String(20);
    floor_2 :  String(3);
    line_2 :  String(3);
    bay_2 :  String(3);
    site_2 :  String(3);
    gbm_2 :  String(10);
    gain_dt_2 :  Date;
    fclt_id_3 :  String(6);
    mst_code_3 :  String(3);
    qcode_3 :  String(5); 
    fclt_status_3 :  String(6);
    ams_status_3 :  String(6);
    rgst_type_3 :  String(10);
    install_stdt_3 :  Date;
    install_schd_eddt_3 :  Date;
    install_eddt_3 :  Date;
    dmsh_stdt_3 :  Date;
    dmsh_schd_eddt_3 :  Date;
    dmsh_eddt_3 :  Date;
    asst_div_3 :  String(5);
    use_org_3 :  String(20);
    lfcycl_mng_org_3 :  String(20);
    lfcycl_mngr_3 :  String(10);
    inout_div_3 :  String(8);
    district_3 :  String(12);
    building_3 :  String(20);
    floor_3 :  String(3);
    line_3 :  String(3);
    bay_3 :  String(3);
    site_3 :  String(3);
    gbm_3 :  String(10);
    gain_dt_3 :  Date;
    fclt_id_4 :  String(6);
    mst_code_4 :  String(3);
    qcode_4 :  String(5); 
    fclt_status_4 :  String(6);
    ams_status_4 :  String(6);
    rgst_type_4 :  String(10);
    install_stdt_4 :  Date;
    install_schd_eddt_4 :  Date;
    install_eddt_4 :  Date;
    dmsh_stdt_4 :  Date;
    dmsh_schd_eddt_4 :  Date;
    dmsh_eddt_4 :  Date;
    asst_div_4 :  String(5);
    use_org_4 :  String(20);
    lfcycl_mng_org_4 :  String(20);
    lfcycl_mngr_4 :  String(10);
    inout_div_4 :  String(8);
    district_4 :  String(12);
    building_4 :  String(20);
    floor_4 :  String(3);
    line_4 :  String(3);
    bay_4 :  String(3);
    site_4 :  String(3);
    gbm_4 :  String(10);
    gain_dt_4 :  Date;
    fclt_id_5 :  String(6);
    mst_code_5 :  String(3);
    qcode_5 :  String(5); 
    fclt_status_5 :  String(6);
    ams_status_5 :  String(6);
    rgst_type_5 :  String(10);
    install_stdt_5 :  Date;
    install_schd_eddt_5 :  Date;
    install_eddt_5 :  Date;
    dmsh_stdt_5 :  Date;
    dmsh_schd_eddt_5 :  Date;
    dmsh_eddt_5 :  Date;
    asst_div_5 :  String(5);
    use_org_5 :  String(20);
    lfcycl_mng_org_5 :  String(20);
    lfcycl_mngr_5 :  String(10);
    inout_div_5 :  String(8);
    district_5 :  String(12);
    building_5 :  String(20);
    floor_5 :  String(3);
    line_5 :  String(3);
    bay_5 :  String(3);
    site_5 :  String(3);
    gbm_5 :  String(10);
    gain_dt_5 :  Date;
    fclt_id_6 :  String(6);
    mst_code_6 :  String(3);
    qcode_6 :  String(5); 
    fclt_status_6 :  String(6);
    ams_status_6 :  String(6);
    rgst_type_6 :  String(10);
    install_stdt_6 :  Date;
    install_schd_eddt_6 :  Date;
    install_eddt_6 :  Date;
    dmsh_stdt_6 :  Date;
    dmsh_schd_eddt_6 :  Date;
    dmsh_eddt_6 :  Date;
    asst_div_6 :  String(5);
    use_org_6 :  String(20);
    lfcycl_mng_org_6 :  String(20);
    lfcycl_mngr_6 :  String(10);
    inout_div_6 :  String(8);
    district_6 :  String(12);
    building_6 :  String(20);
    floor_6 :  String(3);
    line_6 :  String(3);
    bay_6 :  String(3);
    site_6 :  String(3);
    gbm_6 :  String(10);
    gain_dt_6 :  Date;
    fclt_id_7 :  String(6);
    mst_code_7 :  String(3);
    qcode_7 :  String(5); 
    fclt_status_7 :  String(6);
    ams_status_7 :  String(6);
    rgst_type_7 :  String(10);
    install_stdt_7 :  Date;
    install_schd_eddt_7 :  Date;
    install_eddt_7 :  Date;
    dmsh_stdt_7 :  Date;
    dmsh_schd_eddt_7 :  Date;
    dmsh_eddt_7 :  Date;
    asst_div_7 :  String(5);
    use_org_7 :  String(20);
    lfcycl_mng_org_7 :  String(20);
    lfcycl_mngr_7 :  String(10);
    inout_div_7 :  String(8);
    district_7 :  String(12);
    building_7 :  String(20);
    floor_7 :  String(3);
    line_7 :  String(3);
    bay_7 :  String(3);
    site_7 :  String(3);
    gbm_7 :  String(10);
    gain_dt_7 :  Date;
    fclt_id_8 :  String(6);
    mst_code_8 :  String(3);
    qcode_8 :  String(5); 
    fclt_status_8 :  String(6);
    ams_status_8 :  String(6);
    rgst_type_8 :  String(10);
    install_stdt_8 :  Date;
    install_schd_eddt_8 :  Date;
    install_eddt_8 :  Date;
    dmsh_stdt_8 :  Date;
    dmsh_schd_eddt_8 :  Date;
    dmsh_eddt_8 :  Date;
    asst_div_8 :  String(5);
    use_org_8 :  String(20);
    lfcycl_mng_org_8 :  String(20);
    lfcycl_mngr_8 :  String(10);
    inout_div_8 :  String(8);
    district_8 :  String(12);
    building_8 :  String(20);
    floor_8 :  String(3);
    line_8 :  String(3);
    bay_8 :  String(3);
    site_8 :  String(3);
    gbm_8 :  String(10);
    gain_dt_8 :  Date;
}