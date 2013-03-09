.class Lcom/htc/store/activity/detail/DetailInfo$3;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$3;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 7
    .parameter "focusChange"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 543
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$3;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 545
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 546
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnAudioFocusChangeListener - getSystemService(TELEPHONY_SERVICE) failed !!!"

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 566
    :pswitch_1
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "OnAudioFocusChangeListener - receive AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK, do nothing"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "OnAudioFocusChangeListener - receive AUDIOFOCUS_LOSS or AUDIOFOCUS_LOSS_TRANSIENT"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 559
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$3;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$3;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$3;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mNonUiHandler:Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$200(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/store/activity/detail/DetailInfo$NonUiHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 570
    :pswitch_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "OnAudioFocusChangeListener - receive AUDIOFOCUS_LOSS, do nothing"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
