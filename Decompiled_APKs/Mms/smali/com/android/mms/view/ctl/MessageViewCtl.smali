.class public Lcom/android/mms/view/ctl/MessageViewCtl;
.super Ljava/lang/Object;
.source "MessageViewCtl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V
    .locals 5
    .parameter "msgView"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setIncomingFlag()V

    .line 96
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setUnread()V

    .line 130
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/android/mms/view/MessageView;->setTimeSent(J)V

    .line 133
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isEvdo()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/mms/view/MessageView;->setEvdoicon(Z)V

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getIndexOnSim()I

    move-result v0

    if-lez v0, :cond_2

    .line 144
    invoke-interface {p0, v4}, Lcom/android/mms/view/MessageView;->setIsSimSms(Z)V

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getPriority()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/mms/view/MessageView;->setPriority(I)V

    .line 152
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setMessageLocked()V

    .line 156
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeChange()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TextSizeManager;->getFontSize()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/mms/view/MessageView;->setTextSize(I)V

    .line 159
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isSent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isAllSmsReceived()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    instance-of v0, p0, Lcom/android/mms/view/TextMessageView;

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 162
    check-cast v0, Lcom/android/mms/view/TextMessageView;

    invoke-interface {v0}, Lcom/android/mms/view/TextMessageView;->setDeliveryReportIcon()V

    .line 168
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->getIndicatorStatus()Z

    move-result v0

    if-ne v0, v4, :cond_6

    .line 169
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setFakeIndicatorView()V

    .line 173
    :cond_6
    return-void

    .line 99
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isPending()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inPending :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setErrorFlag()V

    .line 105
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/android/mms/view/MessageView;->setTimeRetried(J)V

    goto/16 :goto_0

    .line 108
    :cond_8
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setPendingFlag()V

    goto/16 :goto_0

    .line 112
    :cond_9
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSendout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg.hasError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isDeliveryReportRequired()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isReadReportRequired()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    :cond_a
    invoke-static {p0, p1}, Lcom/android/mms/view/ctl/MessageViewCtl;->setInfoIcon(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setRequireDeliveryReport()V

    goto/16 :goto_0

    .line 120
    :cond_b
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setErrorFlag()V

    .line 122
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/android/mms/view/MessageView;->setTimeRetried(J)V

    goto/16 :goto_0

    .line 125
    :cond_c
    const-string v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSendout :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static setInfoIcon(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 7
    .parameter "msgView"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-eq v5, v6, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v3

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v2

    .line 41
    .local v2, isSms:Z
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setErrorFlag()V

    .line 46
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v5

    invoke-interface {p0, v5, v6}, Lcom/android/mms/view/MessageView;->setTimeRetried(J)V

    move v3, v4

    .line 47
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x1

    .line 63
    .local v0, deliveryReq:Z
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isSent()Z

    move-result v1

    .line 65
    .local v1, isSent:Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isSent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isAllSmsSent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-interface {p0}, Lcom/android/mms/view/MessageView;->setSentFlag()V

    move v3, v4

    .line 69
    goto :goto_0

    .line 81
    :cond_3
    const/4 v3, -0x1

    invoke-interface {p0, v3}, Lcom/android/mms/view/MessageView;->setMarkIcon(I)V

    move v3, v4

    .line 82
    goto :goto_0
.end method
