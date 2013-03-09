.class Lcom/android/phone/ssdnbpcd/CountryCodeCheck;
.super Ljava/lang/Object;
.source "CountryCodeCheck.java"


# static fields
.field private static final EVENT_CLOSE_CURSOR:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field m_ContentResolver:Landroid/content/ContentResolver;

.field m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-direct {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    .line 21
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 150
    new-instance v0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ssdnbpcd/CountryCodeCheck$1;-><init>(Lcom/android/phone/ssdnbpcd/CountryCodeCheck;)V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method ContainCountryCode(Ljava/lang/String;)Z
    .locals 14
    .parameter "szFilteredInputString"

    .prologue
    const/4 v13, 0x0

    .line 28
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainCountryCode() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v6, 0x0

    .line 33
    .local v6, bContainCountryCode:Z
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxCountyCodeLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 34
    .local v8, iChecklength:I
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 35
    .local v3, szQuerySentence:Ljava/lang/String;
    const/4 v10, 0x0

    .line 36
    .local v10, iTotalRecords:I
    const/4 v7, 0x0

    .line 38
    .local v7, curRecord:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, iIndex:I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p1, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:CountryCodeCheck::ContainCountryCode(), [Query sentence = "

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

    .line 45
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_ReferenceCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 48
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:CountryCodeCheck::ContainCountryCode(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][Total column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

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

    .line 50
    if-lez v10, :cond_5

    .line 51
    const/4 v6, 0x1

    .line 60
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 61
    .local v11, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .end local v11           #msg:Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainCountryCode() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    return v6

    .line 33
    .end local v3           #szQuerySentence:Ljava/lang/String;
    .end local v7           #curRecord:Landroid/database/Cursor;
    .end local v8           #iChecklength:I
    .end local v9           #iIndex:I
    .end local v10           #iTotalRecords:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxCountyCodeLength()I

    move-result v8

    goto/16 :goto_0

    .line 60
    .restart local v3       #szQuerySentence:Ljava/lang/String;
    .restart local v7       #curRecord:Landroid/database/Cursor;
    .restart local v8       #iChecklength:I
    .restart local v9       #iIndex:I
    .restart local v10       #iTotalRecords:I
    :cond_5
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 61
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 55
    .end local v11           #msg:Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 56
    .local v12, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainCountryCode(), Database query error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 61
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 60
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 61
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    throw v0
.end method

.method ContainCurrentCountryCode(Ljava/lang/String;)Z
    .locals 5
    .parameter "szFilteredInputString"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:CountryCodeCheck::ContainCurrentCountryCode() [+++]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v1, Lcom/android/phone/ssdnbpcd/SystemInfo;

    invoke-direct {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;-><init>()V

    .line 83
    .local v1, cSystemInfo:Lcom/android/phone/ssdnbpcd/SystemInfo;
    const/4 v0, 0x0

    .line 85
    .local v0, bContainCurrentCountryCode:Z
    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/SystemInfo;->Get_CurrentCountry_CountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 86
    const/4 v0, 0x1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[msg]:CountryCodeCheck::ContainCurrentCountryCode() [bContainCurrentCountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[msg]:CountryCodeCheck::ContainCurrentCountryCode() [---]."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    return v0
.end method

.method ContainUserAddedCountryCode(Ljava/lang/String;)Z
    .locals 14
    .parameter "szFilteredInputString"

    .prologue
    const/4 v13, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainUserAddedCountryCode() [+++]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    const/4 v6, 0x0

    .line 107
    .local v6, bContainUserAddedCountryCode:Z
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxCountyCodeLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 108
    .local v8, iChecklength:I
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 109
    .local v3, szQuerySentence:Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, iTotalRecords:I
    const/4 v7, 0x0

    .line 112
    .local v7, curRecord:Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, iIndex:I
    :goto_1
    if-ge v9, v8, :cond_2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {p1, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:CountryCodeCheck::ContainUserAddedCountryCode(), [Query sentence = "

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

    .line 119
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_CurrentCountryTable()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 122
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[msg]:CountryCodeCheck::ContainUserAddedCountryCode(), [iTotalRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][Total column = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

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

    .line 124
    if-lez v10, :cond_5

    .line 125
    const/4 v6, 0x1

    .line 134
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 135
    .local v11, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v11           #msg:Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainUserAddedCountryCode() [---]."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_3
    return v6

    .line 107
    .end local v3           #szQuerySentence:Ljava/lang/String;
    .end local v7           #curRecord:Landroid/database/Cursor;
    .end local v8           #iChecklength:I
    .end local v9           #iIndex:I
    .end local v10           #iTotalRecords:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxCountyCodeLength()I

    move-result v8

    goto/16 :goto_0

    .line 134
    .restart local v3       #szQuerySentence:Ljava/lang/String;
    .restart local v7       #curRecord:Landroid/database/Cursor;
    .restart local v8       #iChecklength:I
    .restart local v9       #iIndex:I
    .restart local v10       #iTotalRecords:I
    :cond_5
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 135
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 129
    .end local v11           #msg:Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 130
    .local v12, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[msg]:CountryCodeCheck::ContainUserAddedCountryCode(), Database query error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 135
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 134
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 135
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    iget-object v1, p0, Lcom/android/phone/ssdnbpcd/CountryCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    throw v0
.end method
