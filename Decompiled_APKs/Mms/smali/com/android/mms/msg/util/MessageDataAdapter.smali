.class public Lcom/android/mms/msg/util/MessageDataAdapter;
.super Ljava/lang/Object;
.source "MessageDataAdapter.java"


# instance fields
.field private final mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    .line 36
    sget-object v0, Lcom/android/mms/msg/util/ColumnsMap;->DEFAULT:Lcom/android/mms/msg/util/ColumnsMap;

    iput-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V
    .locals 0
    .parameter "context"
    .parameter "cursor"
    .parameter "columnsMap"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    .line 41
    iput-object p3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    .line 42
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "gid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtcDate2()J
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcDate2:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtcMsgColumnVvmId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcMsgDate()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgDate:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtcMsgReadFlag()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgRead:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcMsgType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcMsgType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVvmAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmAddress:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVvmIsPrivate()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPrivate:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcVvmIsUrgent()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmUrgent:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHtcVvmPlayTime()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmPlayTime:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtcVvmType()I
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnHtcVvmType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsSimOnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 5

    .prologue
    .line 63
    const-wide/16 v1, 0x0

    .line 65
    .local v1, id:J
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v4, v4, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 72
    :cond_0
    :goto_0
    return-wide v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v4, v4, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const-string v1, ""

    .line 48
    .local v1, sType:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMsgType:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "sms"

    goto :goto_0
.end method

.method public getMmsContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsContentType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMmsDate()J
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDate:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMmsDeliveryReportFlag()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsDeliveryReport:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsErrorType()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsErrorType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getMmsLockedFlag()Z
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, lock:I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMmsMessageBox()I
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getMmsMessageType()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsMessageType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getMmsReadFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsRead:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsReadReportFlag()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsReadReport:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsSubject()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubject:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, subject:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 160
    .local v1, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .end local v1           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMmsSubjectEncoding()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, msgType:Ljava/lang/String;
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsPriority:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 94
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnMmsPriority:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSmsAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsCallbackNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsCallbackNumber:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDate()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsDate:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSmsDeliveryReportFlag()Z
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsMessageBox()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmsFlags()I
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsFlags:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSmsIsEvdo()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsIsEvdo:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSmsLockedFlag()Z
    .locals 4

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, lock:I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v3, v3, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSmsMessageBox()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getSmsMessageText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsBody:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsReadFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v2, v2, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsRead:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmsStatus()I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/mms/msg/util/MessageDataAdapter;->mColumnsMap:Lcom/android/mms/msg/util/ColumnsMap;

    iget v1, v1, Lcom/android/mms/msg/util/ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method
