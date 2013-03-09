.class Lcom/android/phone/PhoneUtils$mmHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "mmHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3989
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3989
    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$mmHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3991
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3992
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4023
    :cond_0
    :goto_0
    return-void

    .line 3994
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3995
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 3996
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->access$702(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 4001
    :pswitch_1
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$802(Z)Z

    goto :goto_0

    .line 4005
    :pswitch_2
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->access$902(Z)Z

    goto :goto_0

    .line 4011
    :pswitch_3
    const-string v1, "PhoneUtils"

    const-string v2, "MSG_CAHNGE_AUDIO_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_0

    .line 4017
    :pswitch_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 4018
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->setAudioMode(Z)V

    goto :goto_0

    .line 3992
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
