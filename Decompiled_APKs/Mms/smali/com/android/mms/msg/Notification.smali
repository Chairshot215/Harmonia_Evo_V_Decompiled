.class public Lcom/android/mms/msg/Notification;
.super Lcom/android/mms/msg/MultimediaMessage;
.source "Notification.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V
    .locals 6
    .parameter "context"
    .parameter "adapter"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/msg/MultimediaMessage;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;I)V

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/msg/AbstractMessage;->mDeliveryReport:Z

    .line 35
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 36
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .line 37
    .local v0, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/msg/Notification;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 40
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/android/mms/msg/AbstractMessage;->mBody:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/mms/msg/AbstractMessage;->mMessageSize:I

    .line 42
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/mms/msg/AbstractMessage;->mTimestamp:J

    .line 43
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/msg/AbstractMessage;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimestampStrId()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f090028

    return v0
.end method

.method public isMultimediaMessage()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public isTextMessage()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public withMixedMessageBody()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public withRelatedMessageBody()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
