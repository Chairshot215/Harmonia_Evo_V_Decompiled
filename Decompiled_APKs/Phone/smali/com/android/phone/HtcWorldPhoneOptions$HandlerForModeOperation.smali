.class Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
.super Landroid/os/Handler;
.source "HtcWorldPhoneOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcWorldPhoneOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerForModeOperation"
.end annotation


# static fields
.field private static final MESSAGE_DISMISS_REGISTER_NETWORK_DIALOG:I = 0xa

.field private static final MESSAGE_FINISH_SHOW_PREFERRED_NETWORK_MODE:I = 0xb

.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_GET_ROAMING_PREFERENCE:I = 0x3

.field private static final MESSAGE_REGISTER_NETWORK_TIMEOUT:I = 0x1388

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x2

.field private static final MESSAGE_SHOW_PREFERRED_NETWORK_MODE_TIMEOUT:I = 0x1388


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;Lcom/android/phone/HtcWorldPhoneOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;-><init>(Lcom/android/phone/HtcWorldPhoneOptions;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0xa

    .line 629
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 631
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 632
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 635
    .local v2, modemNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 641
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    if-ne v2, v6, :cond_2

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse:  modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 666
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1200(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    .line 670
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->setUniformNetworkTypeValue(I)V
    invoke-static {v3, v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1300(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    .line 672
    const/4 v1, 0x0

    .line 674
    .local v1, index:I
    packed-switch v2, :pswitch_data_0

    .line 685
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->quickSelectPreferredNetworkMode(I)V
    invoke-static {v3, v1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1400(Lcom/android/phone/HtcWorldPhoneOptions;I)V

    .line 691
    .end local v1           #index:I
    .end local v2           #modemNetworkMode:I
    :cond_1
    :goto_1
    return-void

    .line 676
    .restart local v1       #index:I
    .restart local v2       #modemNetworkMode:I
    :pswitch_1
    const/4 v1, 0x0

    .line 677
    goto :goto_0

    .line 679
    :pswitch_2
    const/4 v1, 0x1

    .line 680
    goto :goto_0

    .line 682
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 687
    .end local v1           #index:I
    :cond_2
    iget-object v3, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->resetNetworkModeToDefault()V

    goto :goto_1

    .line 674
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 597
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 599
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 600
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mButtonPreferredNetworkMode:Lcom/htc/preference/HtcListPreference;
    invoke-static {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->access$100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 602
    .local v3, networkMode:I
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 608
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 609
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    .line 610
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    const-string v5, "set to Global Mode, cancel timer!"

    invoke-virtual {v4, v5}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    .line 613
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.setprefernetwork.done"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #networkMode:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->access$500(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 621
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    invoke-static {v4}, Lcom/android/phone/HtcWorldPhoneOptions;->access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->sendEmptyMessage(I)Z

    .line 622
    return-void

    .line 618
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    const-string v5, "exception in SetPreferredNetworkType "

    invoke-virtual {v4, v5}, Lcom/android/phone/HtcWorldPhoneOptions;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 558
    :pswitch_1
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO MESSAGE_GET_PREFERRED_NETWORK_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    .line 564
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_3:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->SyncRoamingPreference()V
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$600(Lcom/android/phone/HtcWorldPhoneOptions;)V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->reversePhoneTypeOptions()V
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$700(Lcom/android/phone/HtcWorldPhoneOptions;)V

    goto :goto_0

    .line 572
    :pswitch_2
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO MESSAGE_SET_PREFERRED_NETWORK_TYPE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-direct {p0, p1}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 578
    :pswitch_3
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO MESSAGE_SET_ROAMING_PREFERENCE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$800(Lcom/android/phone/HtcWorldPhoneOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 582
    :pswitch_4
    const-string v0, "phone/settings_HtcWorldPhoneOptions"

    const-string v1, "OoO MESSAGE_GET_ROAMING_PREFERENCE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$900(Lcom/android/phone/HtcWorldPhoneOptions;Landroid/os/Message;)V

    goto :goto_0

    .line 587
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1000(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1000(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1000(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 592
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mPrefActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v0}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1100(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
