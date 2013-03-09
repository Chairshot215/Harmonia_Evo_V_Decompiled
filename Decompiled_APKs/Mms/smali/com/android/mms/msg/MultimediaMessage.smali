.class public abstract Lcom/android/mms/msg/MultimediaMessage;
.super Lcom/android/mms/msg/AbstractMessage;
.source "MultimediaMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultimediaMessage"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mErrorType:I

.field protected mMessageType:I

.field protected mSubject:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/AbstractMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 65
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    .line 67
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsMessageType()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mMessageType:I

    .line 68
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsMessageBox()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    .line 69
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsSubject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mSubject:Ljava/lang/String;

    .line 70
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsReadFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    .line 71
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsDeliveryReportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    .line 72
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsReadReportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadReport:Z

    .line 73
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsErrorType()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mErrorType:I

    .line 74
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    .line 76
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mContentType:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/AbstractMessage;->mPriority:I

    .line 81
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsLockedFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mLocked:Z

    .line 82
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcDate2()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mDate2:J

    .line 88
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)Lcom/android/mms/msg/AbstractMessage;
    .locals 5
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsMessageType()I

    move-result v1

    .line 93
    .local v1, msgType:I
    const/16 v2, 0x82

    if-ne v1, v2, :cond_0

    .line 94
    new-instance v2, Lcom/android/mms/msg/Notification;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/msg/Notification;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 101
    :goto_0
    return-object v2

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/msg/util/MessageDataAdapter;->getMmsContentType()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    new-instance v2, Lcom/android/mms/msg/MixedMultimediaMessage;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/msg/MixedMultimediaMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    new-instance v2, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/msg/RelatedMultimediaMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported content-type detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isForwardReq()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mMessageType:I

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFromAnonymous()Z
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRetrieveConf()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mMessageType:I

    const/16 v1, 0x84

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSendReq()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mMessageType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshFrom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/msg/MultimediaMessage;->formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshMessageBoxId()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method


# virtual methods
.method public getCc()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/msg/MultimediaMessage;->isRetrieveConf()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/mms/msg/MultimediaMessage;->isSendReq()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/msg/MultimediaMessage;->loadMultimediaMessage(Landroid/content/Context;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v1

    .line 142
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCc(Lcom/google/android/mms/pdu/GenericPdu;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_1
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MultimediaMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/mms/msg/MultimediaMessage;->isRetrieveConf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/msg/MultimediaMessage;->isFromAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/msg/MultimediaMessage;->formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/msg/MultimediaMessage;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampStrId()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f090027

    return v0
.end method

.method public hasError()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/android/mms/msg/MultimediaMessage;->mErrorType:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrafts()Z
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 206
    iget v1, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultimediaMessage()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/android/mms/msg/AbstractMessage;->mBoxId:I

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
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public isVvm()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected loadMultimediaMessage(Landroid/content/Context;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 184
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 186
    .local v0, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    iget v3, p0, Lcom/android/mms/msg/MultimediaMessage;->mMessageType:I

    const/16 v4, 0x84

    if-ne v3, v4, :cond_0

    move-object v2, v0

    .line 187
    check-cast v2, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 188
    .local v2, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/msg/MultimediaMessage;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 193
    .end local v2           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    goto :goto_0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 1
    .parameter "context"

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public willDiscardAttachmentWhileForwading()Z
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/mms/msg/MultimediaMessage;->mContentType:Ljava/lang/String;

    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 114
    check-cast v0, Lcom/android/mms/msg/RelatedMultimediaMessage;

    .line 116
    .local v0, mmi:Lcom/android/mms/msg/RelatedMultimediaMessage;
    invoke-virtual {v0}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasOtherAttachment()Z

    move-result v1

    .line 118
    .end local v0           #mmi:Lcom/android/mms/msg/RelatedMultimediaMessage;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract withMixedMessageBody()Z
.end method

.method public abstract withRelatedMessageBody()Z
.end method
