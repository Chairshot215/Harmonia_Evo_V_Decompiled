.class Lcom/android/phone/ssdnbpcd/AreaCodeCheck;
.super Ljava/lang/Object;
.source "AreaCodeCheck.java"


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

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    .line 21
    iget-object v0, p0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v0}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ssdnbpcd/AreaCodeCheck$1;-><init>(Lcom/android/phone/ssdnbpcd/AreaCodeCheck;)V

    iput-object v0, p0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method ContainNANPAreaCode(Ljava/lang/String;)Z
    .locals 19
    .parameter "szFilteredInputString"

    .prologue
    .line 28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:AreaCodeCheck::ContainNANPAreaCode() [+++]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 33
    .local v7, bContainNANPAreaCode:Z
    const/4 v14, 0x0

    .line 34
    .local v14, iTotalRecords:I
    const/4 v8, 0x0

    .line 37
    .local v8, curRecord:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_ContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_NANPTable()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 38
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 40
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:AreaCodeCheck::ContainNANPAreaCode(), [iTotalRecords = "

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

    .line 43
    if-lez v14, :cond_5

    if-eqz v8, :cond_5

    .line 44
    new-array v0, v14, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 45
    .local v18, szNANPAreaCodeList:[Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v17}, Ljava/lang/String;-><init>()V

    .line 47
    .local v17, szNANPAreaCode:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 48
    const/4 v13, 0x0

    .line 50
    .local v13, iNANPAreaCodeIndex:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_QuerySentenceNANPAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 52
    .local v11, iColumnIndex:I
    if-ltz v11, :cond_2

    .line 53
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v18, v13

    .line 56
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    .end local v11           #iColumnIndex:I
    .end local v13           #iNANPAreaCodeIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxNANPAreaCodeLength()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 63
    .local v10, iChecklength:I
    :goto_0
    move v12, v10

    .local v12, iIndex:I
    :goto_1
    const/4 v1, 0x1

    if-lt v12, v1, :cond_5

    .line 64
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:AreaCodeCheck::ContainNANPAreaCode(), [szNANPAreaCode = "

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

    .line 67
    const/4 v9, 0x0

    .local v9, iCheckItem:I
    :goto_2
    move-object/from16 v0, v18

    array-length v1, v0

    if-ge v9, v1, :cond_4

    .line 68
    aget-object v1, v18, v9

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v2}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_Define_ResultMatch()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_8

    .line 69
    const/4 v7, 0x1

    .line 74
    :cond_4
    const/4 v1, 0x1

    if-ne v7, v1, :cond_9

    .line 84
    .end local v9           #iCheckItem:I
    .end local v10           #iChecklength:I
    .end local v12           #iIndex:I
    .end local v17           #szNANPAreaCode:Ljava/lang/String;
    .end local v18           #szNANPAreaCodeList:[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 85
    .local v15, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[msg]:AreaCodeCheck::ContainNANPAreaCode(), [bContainNANPAreaCode = "

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

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_DBG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:AreaCodeCheck::ContainNANPAreaCode() [---]."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_6
    return v7

    .line 61
    .end local v15           #msg:Landroid/os/Message;
    .restart local v17       #szNANPAreaCode:Ljava/lang/String;
    .restart local v18       #szNANPAreaCodeList:[Ljava/lang/String;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_MaxNANPAreaCodeLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0

    .line 67
    .restart local v9       #iCheckItem:I
    .restart local v10       #iChecklength:I
    .restart local v12       #iIndex:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 63
    :cond_9
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 81
    .end local v9           #iCheckItem:I
    .end local v10           #iChecklength:I
    .end local v12           #iIndex:I
    .end local v17           #szNANPAreaCode:Ljava/lang/String;
    .end local v18           #szNANPAreaCodeList:[Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 82
    .local v16, sqlException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->m_cClassSharedInformation:Lcom/android/phone/ssdnbpcd/ClassSharedInformation;

    invoke-virtual {v1}, Lcom/android/phone/ssdnbpcd/ClassSharedInformation;->Get_LOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[msg]:AreaCodeCheck::ContainNANPAreaCode(), Database query error."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 85
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 84
    .end local v15           #msg:Landroid/os/Message;
    .end local v16           #sqlException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 85
    .restart local v15       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ssdnbpcd/AreaCodeCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    throw v1
.end method
