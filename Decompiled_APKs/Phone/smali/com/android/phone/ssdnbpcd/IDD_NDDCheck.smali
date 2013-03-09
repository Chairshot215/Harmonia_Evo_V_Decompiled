.class Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;
.super Ljava/lang/Object;
.source "IDD_NDDCheck.java"


# static fields
.field private static final CONTAIN_CURRENT_COUNTRY_NDD:I = 0x1

.field private static final CONTAIN_REFERENCE_COUNTRY_NDD:I = 0x2

.field private static final EVENT_CLOSE_CURSOR:I

.field private static final NO_CURRENT_REFERENCE_COUNTRY_NDD:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field m_ContentResolver:Landroid/content/ContentResolver;

.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

.field m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

.field private m_iNonUSIDDLength:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    .line 20
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    .line 22
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_iNonUSIDDLength:I

    .line 194
    new-instance v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck$1;-><init>(Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;)V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method ContainCurrentIDD(Ljava/lang/String;)Z
    .locals 4
    .parameter "szFilteredInputString"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainCurrentIDD() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, bContainCurrentCountryIDD:Z
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_IDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainCurrentIDD() [bContainCurrentCountryIDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainCurrentIDD() [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_2
    return v0
.end method

.method ContainCurrent_ReferenceNDD(Ljava/lang/String;)I
    .locals 2
    .parameter "szFilteredInputString"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_NDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD(), Contain Current Country NDD."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_NDD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD(), Contain Reference Country NDD."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:IDD_NDDCheck::ContainCurrent_ReferenceNDD() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ContainNonUSIDD(Ljava/lang/String;)Z
    .locals 19
    .parameter "szFilteredInputString"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainNonUSIDD() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v7, 0x0

    .line 115
    .local v7, bContainNonUSIDD:Z
    const/4 v14, 0x0

    .line 116
    .local v14, iTotalRecords:I
    const/4 v8, 0x0

    .line 119
    .local v8, curRecord:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_NonUSIDDTable()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainNonUSIDD(), [iTotalRecords = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][Total column = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-lez v14, :cond_5

    if-eqz v8, :cond_5

    .line 126
    new-array v0, v14, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 127
    .local v18, szNonUSIDDList:[Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v17}, Ljava/lang/String;-><init>()V

    .line 129
    .local v17, szNonUSIDD:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 130
    const/4 v13, 0x0

    .line 132
    .local v13, iNonUSIDDIndex:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceNonUSIDD()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 134
    .local v11, iColumnIndex:I
    if-ltz v11, :cond_2

    .line 135
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v18, v13

    .line 138
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 139
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    .end local v11           #iColumnIndex:I
    .end local v13           #iNonUSIDDIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxNonUSIDDLength()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 145
    .local v10, iChecklength:I
    :goto_0
    move v12, v10

    .local v12, iIndex:I
    :goto_1
    const/4 v1, 0x1

    if-lt v12, v1, :cond_5

    .line 146
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainNonUSIDD(), [szNonUSIDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v9, 0x0

    .local v9, iCheckItem:I
    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v9, v1, :cond_4

    .line 150
    aget-object v1, v18, v9

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Define_ResultMatch()I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 151
    const/4 v7, 0x1

    .line 152
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_iNonUSIDDLength:I

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainNonUSIDD(), [szNonUSIDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_4
    const/4 v1, 0x1

    if-ne v7, v1, :cond_9

    .line 168
    .end local v9           #iCheckItem:I
    .end local v10           #iChecklength:I
    .end local v12           #iIndex:I
    .end local v17           #szNonUSIDD:Ljava/lang/String;
    .end local v18           #szNonUSIDDList:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 169
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainNonUSIDD(), [bContainNonUSIDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainNonUSIDD() [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    return v7

    .line 143
    .end local v15           #msg:Landroid/os/Message;
    .restart local v17       #szNonUSIDD:Ljava/lang/String;
    .restart local v18       #szNonUSIDDList:[Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxNonUSIDDLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0

    .line 149
    .restart local v9       #iCheckItem:I
    .restart local v10       #iChecklength:I
    .restart local v12       #iIndex:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 145
    :cond_9
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 165
    .end local v9           #iCheckItem:I
    .end local v10           #iChecklength:I
    .end local v12           #iIndex:I
    .end local v17           #szNonUSIDD:Ljava/lang/String;
    .end local v18           #szNonUSIDDList:[Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 166
    .local v16, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainNonUSIDD(), Database query error."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 169
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 168
    .end local v15           #msg:Landroid/os/Message;
    .end local v16           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 169
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    throw v1
.end method

.method ContainReferenceIDD(Ljava/lang/String;)Z
    .locals 4
    .parameter "szFilteredInputString"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainReferenceIDD() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, bContainReferenceCountryIDD:Z
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_ReferenceCountry_IDD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:IDD_NDDCheck::ContainReferenceIDD() [bContainReferenceCountryIDD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:IDD_NDDCheck::ContainReferenceIDD() [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    return v0
.end method

.method Get_NonUSIDDLength()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/phone/ssdnbpcd/IDD_NDDCheck;->m_iNonUSIDDLength:I

    return v0
.end method
