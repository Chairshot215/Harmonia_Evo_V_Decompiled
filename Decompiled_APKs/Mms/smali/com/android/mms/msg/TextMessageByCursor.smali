.class public Lcom/android/mms/msg/TextMessageByCursor;
.super Lcom/android/mms/msg/TextMessage;
.source "TextMessageByCursor.java"


# instance fields
.field private mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/msg/TextMessageByCursor;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;IZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;IZ)V
    .locals 10
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .parameter "isGroupThread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/TextMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 39
    iput-object v5, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 50
    iput-object p2, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 52
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_0

    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsGroupThread:Z

    if-eqz v0, :cond_3

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gid in (Select gid from sms where _id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and gid > 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "address"

    aput-object v0, v3, v9

    .line 56
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 60
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mIsGroupSms:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;

    .line 64
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 65
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 67
    if-lez v8, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 77
    .end local v8           #i:I
    :cond_2
    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 82
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    return-void

    .line 77
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/android/mms/msg/TextMessage;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p1, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget v1, p1, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageBox()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 155
    iget-wide v1, p1, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 157
    iget v1, p1, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getIndexOnSim()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 159
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->isRead()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 161
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->isDeliveryReportRequired()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 163
    iget-boolean v1, p1, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->isLocked()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsCallbackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageBox()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, meString:Ljava/lang/String;
    iget v1, p0, Lcom/android/mms/msg/AbstractMessage;->mThreadType:I

    if-nez v1, :cond_0

    .line 105
    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .end local v0           #meString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 108
    .restart local v0       #meString:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 116
    .end local v0           #meString:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/msg/TextMessageByCursor;->formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getGroupId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHtcDate2()J
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcDate2()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexOnSim()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getIndexOnSim()I

    move-result v0

    return v0
.end method

.method public getMessageBox()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsMessageBox()I

    move-result v0

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSmsPrivacy()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/msg/TextMessageByCursor;->getSmsPrivacy(Lcom/android/mms/msg/util/MessageDataAdapter;)I

    move-result v0

    return v0
.end method

.method public getSmsStatus()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsStatus()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsMessageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 190
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    goto :goto_0
.end method

.method public isDeliveryReportRequired()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsDeliveryReportFlag()Z

    move-result v0

    return v0
.end method

.method public isDrafts()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageBox()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvdo()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsIsEvdo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageBox()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsLockedFlag()Z

    move-result v0

    return v0
.end method

.method public isMultimediaMessage()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-virtual {v0}, Lcom/android/mms/msg/util/MessageDataAdapter;->getSmsReadFlag()Z

    move-result v0

    return v0
.end method

.method public isReadReportRequired()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public isSent()Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->getMessageBox()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextMessage()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public isVvm()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public lock(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 301
    return-void
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public setDataAdapter(Lcom/android/mms/msg/util/MessageDataAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/msg/TextMessageByCursor;->mDataAdapter:Lcom/android/mms/msg/util/MessageDataAdapter;

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/msg/TextMessageByCursor;->initMap()V

    .line 89
    return-void
.end method

.method public setMessageBox(I)V
    .locals 0
    .parameter "mBoxId"

    .prologue
    .line 204
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "nPriority"

    .prologue
    .line 306
    return-void
.end method
