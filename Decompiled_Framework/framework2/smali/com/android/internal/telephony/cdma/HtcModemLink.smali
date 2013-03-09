.class public Lcom/android/internal/telephony/cdma/HtcModemLink;
.super Landroid/os/Handler;
.source "HtcModemLink.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_3GIND:I = 0x1

.field private static final EVENT_MODEM_LINK_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDataActivityState:I

.field private mModemLinkOn:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemLinkStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerFor3GIndicator(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemLinkStatus(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterFor3GIndicator(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    return-void
.end method

.method protected finalize()V
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "HtcModemLink finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDataActivityState()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v5, :cond_1

    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " HtcModemLink drop event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    aget v5, v4, v6

    if-ne v5, v2, :cond_2

    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    if-eq v5, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataActivity()V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :pswitch_1
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, v5

    check-cast v1, [I

    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    aget v3, v1, v6

    iget v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    if-eq v3, v5, :cond_0

    iput v3, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mDataActivityState:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataActivity()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isModemLinkOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcModemLink;->mModemLinkOn:Z

    return v0
.end method
