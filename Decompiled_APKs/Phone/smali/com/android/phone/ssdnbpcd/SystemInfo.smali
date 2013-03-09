.class Lcom/android/phone/ssdnbpcd/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field private static final EVENT_CLOSE_CURSOR:I

.field private static final US_CC:Ljava/lang/Character;

.field private static m_bIsAssistedDialingOn:Z

.field private static m_bIsMCCUnknown:Z

.field private static m_bIsNBPCDAvailable:Z

.field private static m_iCurrentCountry_CountryCodeLength:I

.field private static m_iCurrentCountry_IDDLength:I

.field private static m_iCurrentCountry_NDDLength:I

.field private static m_iReferenceCountry_AreaCodeLength:I

.field private static m_iReferenceCountry_CountryCodeLength:I

.field private static m_iReferenceCountry_IDDLength:I

.field private static m_iReferenceCountry_NDDLength:I

.field private static m_iReferenceCountry_NationalNumberLength:I

.field private static m_szCurrentCountry_CountryCode:Ljava/lang/String;

.field private static m_szCurrentCountry_IDD:Ljava/lang/String;

.field private static m_szCurrentCountry_MCC:Ljava/lang/String;

.field private static m_szCurrentCountry_NDD:Ljava/lang/String;

.field private static m_szDeviceMDN:Ljava/lang/String;

.field private static m_szReferenceCountry_AreaCode:Ljava/lang/String;

.field private static m_szReferenceCountry_CountryCode:Ljava/lang/String;

.field private static m_szReferenceCountry_IDD:Ljava/lang/String;

.field private static m_szReferenceCountry_MCC:Ljava/lang/String;

.field private static m_szReferenceCountry_NDD:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field m_ContentResolver:Landroid/content/ContentResolver;

.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_MCC:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_IDD:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_NDD:Ljava/lang/String;

    .line 25
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_CountryCodeLength:I

    .line 26
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_IDDLength:I

    .line 27
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_NDDLength:I

    .line 29
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsMCCUnknown:Z

    .line 30
    sput-boolean v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsNBPCDAvailable:Z

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_MCC:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_CountryCode:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_IDD:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_NDD:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;

    .line 40
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_CountryCodeLength:I

    .line 41
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_IDDLength:I

    .line 42
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NDDLength:I

    .line 43
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_AreaCodeLength:I

    .line 44
    sput v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NationalNumberLength:I

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szDeviceMDN:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsAssistedDialingOn:Z

    .line 56
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->US_CC:Ljava/lang/Character;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    .line 53
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 61
    new-instance v0, Lcom/android/phone/ssdnbpcd/SystemInfo$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ssdnbpcd/SystemInfo$1;-><init>(Lcom/android/phone/ssdnbpcd/SystemInfo;)V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private RetrieveCurrentCountryInfo()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveCurrentCountryInfo() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    const/4 v6, 0x0

    .line 114
    .local v6, bRetrieveInfoComplete:Z
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 115
    .local v3, szQuerySentence:Ljava/lang/String;
    const/4 v10, 0x0

    .line 116
    .local v10, iTotalRecords:I
    const/4 v8, 0x0

    .line 119
    .local v8, curRecord:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxDefaultMCCLength()I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceMCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [Query sentence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_CurrentCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    if-nez v8, :cond_6

    move v10, v13

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-nez v10, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 141
    .local v11, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), Unknown MCC."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceUserSelectedCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'TRUE\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_CurrentCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    if-nez v8, :cond_7

    move v10, v13

    .line 147
    :goto_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v11           #msg:Landroid/os/Message;
    :cond_2
    if-lez v10, :cond_3

    if-eqz v8, :cond_3

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 155
    .local v9, iColumnIndex:I
    if-lez v9, :cond_8

    .line 156
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_CountryCodeLength:I

    .line 158
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [m_szCurrentCountry_CountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_CountryCodeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceIDD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 166
    if-lez v9, :cond_9

    .line 167
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_IDD:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_IDD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_IDDLength:I

    .line 169
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [m_szCurrentCountry_IDD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_IDD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_IDDLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceNDD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 177
    if-lez v9, :cond_a

    .line 178
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_NDD:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_NDD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_NDDLength:I

    .line 180
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [m_szCurrentCountry_NDD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_NDD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_NDDLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v6, 0x1

    .line 189
    .end local v9           #iColumnIndex:I
    :cond_3
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][Total column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :goto_3
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveCurrentCountryInfo() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v7, v6

    .line 203
    .end local v6           #bRetrieveInfoComplete:Z
    .local v7, bRetrieveInfoComplete:I
    :goto_4
    return v7

    .line 125
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    .restart local v6       #bRetrieveInfoComplete:Z
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceUserSelectedCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'TRUE\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 135
    :cond_6
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    goto/16 :goto_1

    .line 146
    .restart local v11       #msg:Landroid/os/Message;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_2

    .line 196
    .end local v11           #msg:Landroid/os/Message;
    .restart local v9       #iColumnIndex:I
    :cond_8
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 198
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_4

    .line 196
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_9
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 198
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_4

    .line 196
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_a
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 198
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_4

    .line 191
    .end local v7           #bRetrieveInfoComplete:I
    .end local v9           #iColumnIndex:I
    .end local v11           #msg:Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 192
    .local v12, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveCurrentCountryInfo(), Database query error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 196
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 197
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    throw v0
.end method

.method private RetrieveReferenceCountryInfo()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveReferenceCountryInfo() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    const/4 v6, 0x0

    .line 216
    .local v6, bRetrieveInfoComplete:Z
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 217
    .local v3, szQuerySentence:Ljava/lang/String;
    const/4 v10, 0x0

    .line 218
    .local v10, iTotalRecords:I
    const/4 v8, 0x0

    .line 221
    .local v8, curRecord:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceUserSelectedCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'TRUE\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [Query sentence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_ReferenceCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 231
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-lez v10, :cond_2

    if-eqz v8, :cond_2

    .line 235
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceMCC()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 238
    .local v9, iColumnIndex:I
    if-lez v9, :cond_4

    .line 239
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_MCC:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_szReferenceCountry_MCC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_MCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 248
    if-lez v9, :cond_5

    .line 249
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_CountryCode:Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_CountryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_CountryCodeLength:I

    .line 251
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_szReferenceCountry_CountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_CountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_CountryCodeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceIDD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 259
    if-lez v9, :cond_6

    .line 260
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_IDD:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_IDD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_IDDLength:I

    .line 262
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_szReferenceCountry_IDD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_IDD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_IDDLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceNDD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 270
    if-lez v9, :cond_7

    .line 271
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_NDD:Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_NDD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NDDLength:I

    .line 273
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_szReferenceCountry_NDD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_NDD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NDDLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 281
    if-lez v9, :cond_8

    .line 282
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_AreaCodeLength:I

    .line 284
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_szReferenceCountry_AreaCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_AreaCodeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceNationalNumberLength()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 292
    if-lez v9, :cond_9

    .line 293
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NationalNumberLength:I

    .line 294
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [m_iReferenceCountry_NationalNumberLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NationalNumberLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_1
    const/4 v6, 0x1

    .line 303
    .end local v9           #iColumnIndex:I
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][Total column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .local v11, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    :goto_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveReferenceCountryInfo() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v7, v6

    .line 318
    .end local v6           #bRetrieveInfoComplete:Z
    .local v7, bRetrieveInfoComplete:I
    :goto_3
    return v7

    .line 310
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    .restart local v6       #bRetrieveInfoComplete:Z
    .restart local v9       #iColumnIndex:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 312
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_3

    .line 310
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_5
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 312
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_3

    .line 310
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_6
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 312
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_3

    .line 310
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_7
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v7, v6

    .line 312
    .restart local v7       #bRetrieveInfoComplete:I
    goto :goto_3

    .line 287
    .end local v7           #bRetrieveInfoComplete:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_8
    :try_start_1
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szDeviceMDN:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 305
    .end local v9           #iColumnIndex:I
    :catch_0
    move-exception v12

    .line 306
    .local v12, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveReferenceCountryInfo(), Database query error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 297
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #sqlException:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #iColumnIndex:I
    :cond_9
    :try_start_3
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szDeviceMDN:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NationalNumberLength:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 310
    .end local v9           #iColumnIndex:I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 311
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    throw v0
.end method


# virtual methods
.method Get_CurrentCountry_CountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    return-object v0
.end method

.method Get_CurrentCountry_CountryCodeLength()I
    .locals 1

    .prologue
    .line 480
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_CountryCodeLength:I

    return v0
.end method

.method Get_CurrentCountry_IDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_IDD:Ljava/lang/String;

    return-object v0
.end method

.method Get_CurrentCountry_IDDLength()I
    .locals 1

    .prologue
    .line 488
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_IDDLength:I

    return v0
.end method

.method Get_CurrentCountry_MCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_MCC:Ljava/lang/String;

    return-object v0
.end method

.method Get_CurrentCountry_NDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_NDD:Ljava/lang/String;

    return-object v0
.end method

.method Get_CurrentCountry_NDDLength()I
    .locals 1

    .prologue
    .line 496
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iCurrentCountry_NDDLength:I

    return v0
.end method

.method Get_DeviceMDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szDeviceMDN:Ljava/lang/String;

    return-object v0
.end method

.method Get_IsAssistedDialingOn()Z
    .locals 1

    .prologue
    .line 609
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsAssistedDialingOn:Z

    return v0
.end method

.method Get_IsMCCUnknown()Z
    .locals 1

    .prologue
    .line 585
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsMCCUnknown:Z

    return v0
.end method

.method Get_IsNBPCDAvailable()Z
    .locals 1

    .prologue
    .line 593
    sget-boolean v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsNBPCDAvailable:Z

    return v0
.end method

.method Get_ReferenceCountry_AreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_AreaCode:Ljava/lang/String;

    return-object v0
.end method

.method Get_ReferenceCountry_AreaCodeLength()I
    .locals 1

    .prologue
    .line 569
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_AreaCodeLength:I

    return v0
.end method

.method Get_ReferenceCountry_CountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_CountryCode:Ljava/lang/String;

    return-object v0
.end method

.method Get_ReferenceCountry_CountryCodeLength()I
    .locals 1

    .prologue
    .line 545
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_CountryCodeLength:I

    return v0
.end method

.method Get_ReferenceCountry_IDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_IDD:Ljava/lang/String;

    return-object v0
.end method

.method Get_ReferenceCountry_IDDLength()I
    .locals 1

    .prologue
    .line 553
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_IDDLength:I

    return v0
.end method

.method Get_ReferenceCountry_MCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_MCC:Ljava/lang/String;

    return-object v0
.end method

.method Get_ReferenceCountry_NDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szReferenceCountry_NDD:Ljava/lang/String;

    return-object v0
.end method

.method Get_ReferenceCountry_NDDLength()I
    .locals 1

    .prologue
    .line 561
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NDDLength:I

    return v0
.end method

.method Get_ReferenceCountry_NationalNumberLength()I
    .locals 1

    .prologue
    .line 577
    sget v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_iReferenceCountry_NationalNumberLength:I

    return v0
.end method

.method IsVZWCDMANetworkConnected()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::IsVZWCDMANetworkConnected() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    sget-object v0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_CountryCode:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/ssdnbpcd/SystemInfo;->US_CC:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Define_ResultMatch()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 330
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::IsVZWCDMANetworkConnected() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method RetrieveSystemInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:SystemInfo::RetrieveSystemInfo() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->RetrieveCurrentCountryInfo()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    :cond_1
    :goto_0
    return v0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->RetrieveReferenceCountryInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveSystemInfo() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method RetrieveUserSelectedIDD()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveUserSelectedIDD() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 347
    .local v11, szUserSelectedIDD:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 348
    .local v3, szQuerySentence:Ljava/lang/String;
    const/4 v8, 0x0

    .line 349
    .local v8, iTotalRecords:I
    const/4 v6, 0x0

    .line 352
    .local v6, curRecord:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxDefaultMCCLength()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceMCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_MCC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceUserSelectedIDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'TRUE\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), [Query sentence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_CurrentCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 368
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-lez v8, :cond_2

    if-eqz v6, :cond_2

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceIDD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 374
    .local v7, iColumnIndex:I
    if-lez v7, :cond_5

    .line 375
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 376
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), [szUserSelectedIDD = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v7           #iColumnIndex:I
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][Total column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 391
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    :goto_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveUserSelectedIDD() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    return-object v11

    .line 357
    .end local v9           #msg:Landroid/os/Message;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceUserSelectedCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'TRUE\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 379
    .restart local v7       #iColumnIndex:I
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), User Selected IDD Not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 385
    .end local v7           #iColumnIndex:I
    :catch_0
    move-exception v10

    .line 386
    .local v10, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:SystemInfo::RetrieveUserSelectedIDD(), Database query error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 391
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 390
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 391
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/SystemInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    throw v0
.end method

.method Set_CurrentCountry_MCC(Ljava/lang/String;)V
    .locals 0
    .parameter "szCurrentCountry_MCC"

    .prologue
    .line 435
    sput-object p1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szCurrentCountry_MCC:Ljava/lang/String;

    .line 436
    return-void
.end method

.method Set_DeviceMDN(Ljava/lang/String;)V
    .locals 0
    .parameter "szDeviceMDN"

    .prologue
    .line 419
    sput-object p1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_szDeviceMDN:Ljava/lang/String;

    .line 420
    return-void
.end method

.method Set_IsAssistedDialingOn(Z)V
    .locals 0
    .parameter "bIsAssistedDialingOn"

    .prologue
    .line 427
    sput-boolean p1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsAssistedDialingOn:Z

    .line 428
    return-void
.end method

.method Set_IsNBPCDAvailable(Z)V
    .locals 0
    .parameter "bIsNBPCDAvailable"

    .prologue
    .line 411
    sput-boolean p1, Lcom/android/phone/ssdnbpcd/SystemInfo;->m_bIsNBPCDAvailable:Z

    .line 412
    return-void
.end method
