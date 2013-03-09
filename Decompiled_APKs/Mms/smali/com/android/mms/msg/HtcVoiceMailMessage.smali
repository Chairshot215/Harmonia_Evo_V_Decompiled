.class public Lcom/android/mms/msg/HtcVoiceMailMessage;
.super Lcom/android/mms/msg/AbstractMessage;
.source "HtcVoiceMailMessage.java"


# instance fields
.field protected mHtcMsgType:Ljava/lang/String;

.field protected mPlayTime:J

.field protected mPrivate:Z

.field protected mRead:Z

.field protected mType:I

.field protected mUrgent:Z

.field protected mVvmId:Ljava/lang/String;


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
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/AbstractMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 26
    sget-object v0, Landroid/provider/Telephony$HtcVvm;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    .line 27
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgColumnVvmId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mVvmId:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    .line 29
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcVvmPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mPlayTime:J

    .line 30
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcVvmIsPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mPrivate:Z

    .line 31
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcVvmIsUrgent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mUrgent:Z

    .line 32
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcVvmType()I

    move-result v0

    iput v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mType:I

    .line 33
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcVvmAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgReadFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/AbstractMessage;->mReadFlag:Z

    .line 35
    invoke-virtual {p2}, Lcom/android/mms/msg/util/MessageDataAdapter;->getHtcMsgReadFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mRead:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/msg/AbstractMessage;->mAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/msg/HtcVoiceMailMessage;->formatIncomingFrom(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mPlayTime:J

    return-wide v0
.end method

.method public getPrivate()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mPrivate:Z

    return v0
.end method

.method public getReadFlag()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mRead:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mType:I

    return v0
.end method

.method public getUrgent()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mUrgent:Z

    return v0
.end method

.method public getVvmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/msg/HtcVoiceMailMessage;->mVvmId:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isDrafts()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public isMultimediaMessage()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isTextMessage()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isVvm()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
