.class Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;
.super Landroid/os/Handler;
.source "HtcCdmaCallOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TTYHandler"
.end annotation


# static fields
.field private static final EVENT_TTY_MODE_GET:I = 0x2bc

.field private static final EVENT_TTY_MODE_SET:I = 0x320


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 513
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I
    invoke-static {v3}, Lcom/android/phone/HtcCdmaCallOptions;->access$300(Lcom/android/phone/HtcCdmaCallOptions;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    const-string v3, "QueryTTYMode: ignore update message."

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    const-string v3, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 523
    .local v1, ttymode:I
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse: TTY enable state successfully queried. ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 535
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$200(Lcom/android/phone/HtcCdmaCallOptions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    :cond_2
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v1}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->updatePreferredTtyModeSummary(I)V

    .line 547
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaTty;->toggle(I)V

    .line 549
    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #calls: Lcom/android/phone/HtcCdmaCallOptions;->quickSelectTTYMode(I)V
    invoke-static {v2, v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$400(Lcom/android/phone/HtcCdmaCallOptions;I)V

    goto :goto_0
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 554
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 556
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 564
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mPendingSetupQueryIndex:I
    invoke-static {v2}, Lcom/android/phone/HtcCdmaCallOptions;->access$300(Lcom/android/phone/HtcCdmaCallOptions;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    const-string v2, "QueryTTYMode: ignore query operation."

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcCdmaCallOptions;->log(Ljava/lang/String;)V

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v1, v1, Lcom/android/phone/HtcCdmaCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    iget-object v2, v2, Lcom/android/phone/HtcCdmaCallOptions;->ttyHandler:Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;

    const/16 v3, 0x2bc

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$200(Lcom/android/phone/HtcCdmaCallOptions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 502
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 503
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 505
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->this$0:Lcom/android/phone/HtcCdmaCallOptions;

    #getter for: Lcom/android/phone/HtcCdmaCallOptions;->mButtonTTY:Lcom/htc/preference/HtcListPreference;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaCallOptions;->access$000(Lcom/android/phone/HtcCdmaCallOptions;)Lcom/htc/preference/HtcListPreference;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 482
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 484
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 487
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaCallOptions$TTYHandler;->handleSetTTYModeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method
