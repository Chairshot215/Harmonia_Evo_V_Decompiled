.class public abstract Lcom/android/mms/msg/AbstractMessage;
.super Ljava/lang/Object;
.source "AbstractMessage.java"


# instance fields
.field protected mAddress:Ljava/lang/String;

.field protected mBody:Ljava/lang/String;

.field protected mBoxId:I

.field protected mCallbackNumber:Ljava/lang/String;

.field protected mContact:Ljava/lang/String;

.field protected mDate2:J

.field protected mDeliveryReport:Z

.field protected mEvdo:Z

.field protected mGroupId:J

.field protected mGroupSmsAddressList:Ljava/lang/String;

.field protected mGroupSmsIdList:Ljava/lang/String;

.field protected mHighLight:Ljava/lang/String;

.field protected mIndexOnSim:I

.field protected mIsGroupSms:Z

.field protected mLocked:Z

.field protected mMePhoto:Landroid/graphics/Bitmap;

.field protected mMessageId:J

.field protected mMessageSize:I

.field protected mMessageUri:Landroid/net/Uri;

.field protected mPriority:I

.field protected mReadFlag:Z

.field protected mReadReport:Z

.field protected mSmsPrivacy:I

.field protected mSmsStatus:I

.field protected mThreadType:I

.field protected mTimestamp:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p3, p0, Lcom/android/mms/msg/AbstractMessage;->mThreadType:I

    .line 158
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/mms/msg/AbstractMessage;->copyMsgValue(Lcom/android/mms/msg/AbstractMessage;)V

    .line 118
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;
    .locals 4
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMessageType()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, type:Ljava/lang/String;
    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Lcom/android/mms/msg/TextMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/msg/TextMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 175
    :goto_0
    return-object v1

    .line 169
    :cond_0
    const-string v1, "mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/mms/msg/MultimediaMessage;->create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_1
    const-string v1, "htcmsgs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "vvm"

    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    new-instance v1, Lcom/android/mms/msg/HtcVoiceMailMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/msg/HtcVoiceMailMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    goto :goto_0

    .line 180
    :cond_2
    new-instance v1, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type of the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copyMsgValue(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageSize:I

    .line 122
    iget v0, p1, Lcom/android/mms/msg/AbstractMessage;->mThreadType:I

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mThreadType:I

    .line 123
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMePhoto:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p1, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    .line 126
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getHighLightStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mHighLight:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isEvdo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mEvdo:Z

    .line 128
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    .line 129
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    .line 130
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    .line 133
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getIndexOnSim()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    .line 134
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isRead()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    .line 135
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isDeliveryReportRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    .line 136
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isReadReportRequired()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    .line 137
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getSmsStatus()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsStatus:I

    .line 138
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mPriority:I

    .line 139
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mCallbackNumber:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    .line 141
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isEvdo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mEvdo:Z

    .line 142
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getSmsPrivacy()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsPrivacy:I

    .line 143
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupId:J

    .line 144
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getHtcDate2()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDate2:J

    .line 145
    return-void
.end method

.method formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "address"

    .prologue
    .line 403
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowNumberInDetailView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->sThreadContactNumberCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, size:I
    const/4 v1, 0x0

    .line 408
    .local v1, TempNumberArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 409
    .local v0, TempDisplayName:[Ljava/lang/String;
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 410
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity;->NumberLock:Ljava/lang/Object;

    monitor-enter v5

    .line 411
    :try_start_0
    sget-object v4, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    array-length v3, v4

    .line 412
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    .line 413
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->displayname:[Ljava/lang/String;

    .line 414
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 418
    aget-object v4, v1, v2

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 420
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    .end local v0           #TempDisplayName:[Ljava/lang/String;
    .end local v1           #TempNumberArray:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #size:I
    :goto_1
    return-object v4

    .line 414
    .restart local v0       #TempDisplayName:[Ljava/lang/String;
    .restart local v1       #TempNumberArray:[Ljava/lang/String;
    .restart local v3       #size:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 416
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v0           #TempDisplayName:[Ljava/lang/String;
    .end local v1           #TempNumberArray:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_2
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentCount()I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getCallbackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mCallbackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 367
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupSmsAddressList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsAddressList:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupSmsIdList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mGroupSmsIdList:Ljava/lang/String;

    return-object v0
.end method

.method public getHighLightStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mHighLight:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcDate2()J
    .locals 2

    .prologue
    .line 396
    iget-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDate2:J

    return-wide v0
.end method

.method public getIndexOnSim()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mIndexOnSim:I

    return v0
.end method

.method public getMePhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMePhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMessageBox()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    return v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageSize:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mPriority:I

    return v0
.end method

.method public getSmsPrivacy()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getSmsStatus()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mSmsStatus:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    return-wide v0
.end method

.method public getTimestampStr()Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090027

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    invoke-static {v4, v5, v6}, Lcom/htc/messaging/utils/MessageProvider$MissedMessages;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public abstract hasError()Z
.end method

.method protected interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    .line 312
    :goto_0
    return-void

    .line 310
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

.method public isAllSmsReceived()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public isAllSmsSent()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public isDeliveryReportRequired()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    return v0
.end method

.method public abstract isDrafts()Z
.end method

.method public isEvdo()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mEvdo:Z

    return v0
.end method

.method public isGroupSms()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mIsGroupSms:Z

    return v0
.end method

.method public abstract isIncoming()Z
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    return v0
.end method

.method public abstract isMultimediaMessage()Z
.end method

.method public abstract isNotification()Z
.end method

.method public abstract isPending()Z
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    return v0
.end method

.method public isReadReportRequired()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    return v0
.end method

.method public abstract isSent()Z
.end method

.method public abstract isTextMessage()Z
.end method

.method public abstract isVvm()Z
.end method

.method public lock(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    .line 333
    return-void
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public setHighLightStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 353
    iput-object p1, p0, Lcom/android/mms/msg/AbstractMessage;->mHighLight:Ljava/lang/String;

    .line 354
    :cond_0
    return-void
.end method

.method public setMePhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/mms/msg/AbstractMessage;->mMePhoto:Landroid/graphics/Bitmap;

    .line 279
    return-void
.end method

.method public setMessageBox(I)V
    .locals 0
    .parameter "mBoxId"

    .prologue
    .line 201
    iput p1, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    .line 202
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "nPriority"

    .prologue
    .line 337
    iput p1, p0, Lcom/android/mms/msg/AbstractMessage;->mPriority:I

    .line 338
    return-void
.end method
