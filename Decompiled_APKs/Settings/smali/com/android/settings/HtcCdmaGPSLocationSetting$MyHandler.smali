.class Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;
.super Landroid/os/Handler;
.source "HtcCdmaGPSLocationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_GPSONE:I = 0x0

.field private static final MESSAGE_SET_GPSONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;


# direct methods
.method private constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleGetGPSOneResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 485
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 487
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 488
    const-string v3, "HtcCdmaGPSLocationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO handleGetGPSOneResponse: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 492
    .local v1, enable:I
    const-string v3, "HtcCdmaGPSLocationSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OoO handleGetGPSOneResponse: GPSOne state successfully queried. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GPSONE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "MtGpsSetting"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$600(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 498
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 501
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_1:Landroid/widget/RadioButton;
    invoke-static {v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$200(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mRadioButton_2:Landroid/widget/RadioButton;
    invoke-static {v3}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$000(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleSetGPSOneResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 516
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 518
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "HtcCdmaGPSLocationSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OoO handleSetGPSOneResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    const-string v1, "HtcCdmaGPSLocationSetting"

    const-string v2, "OoO handleSetGPSOneResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$700(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSetting;

    #getter for: Lcom/android/settings/HtcCdmaGPSLocationSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings/HtcCdmaGPSLocationSetting;->access$700(Lcom/android/settings/HtcCdmaGPSLocationSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcGetGPSOneMode(Landroid/os/Message;)V

    .line 525
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 475
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->handleGetGPSOneResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 478
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/HtcCdmaGPSLocationSetting$MyHandler;->handleSetGPSOneResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
