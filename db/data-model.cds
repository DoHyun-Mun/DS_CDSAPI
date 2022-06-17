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
    statusNm : String(20);
    titleNm : String(30);
}

