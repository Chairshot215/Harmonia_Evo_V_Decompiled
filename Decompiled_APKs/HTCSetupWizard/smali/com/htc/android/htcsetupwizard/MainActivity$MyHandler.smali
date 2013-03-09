.class Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;Lcom/htc/android/htcsetupwizard/MainActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2768
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0xcd

    const/4 v4, 0x0

    .line 2773
    const/4 v0, 0x0

    .line 2774
    .local v0, serviceThread:Ljava/lang/Thread;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2837
    :goto_0
    return-void

    .line 2776
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->attemptScan()V

    goto :goto_0

    .line 2779
    :sswitch_1
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Dismiss wifi not found dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1200(Lcom/htc/android/htcsetupwizard/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2781
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->removeDialog(I)V

    goto :goto_0

    .line 2784
    :sswitch_2
    const-string v1, "OOBE_MainActivity"

    const-string v2, "Show wifi found dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 2788
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->setCustomizedValues()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1400(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    goto :goto_0

    .line 2791
    :sswitch_4
    const-string v1, "OOBE_MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check activity running retry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1500(Lcom/htc/android/htcsetupwizard/MainActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->isTopActivityFound()Z
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1600(Lcom/htc/android/htcsetupwizard/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2793
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1500(Lcom/htc/android/htcsetupwizard/MainActivity;)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 2794
    const-string v1, "OOBE_MainActivity"

    const-string v2, "re-start activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I
    invoke-static {v1, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1502(Lcom/htc/android/htcsetupwizard/MainActivity;I)I

    .line 2796
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->dismissProcessingDialog()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1700(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 2797
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1810(Lcom/htc/android/htcsetupwizard/MainActivity;)I

    .line 2798
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 2813
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1200(Lcom/htc/android/htcsetupwizard/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2814
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1200(Lcom/htc/android/htcsetupwizard/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2801
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1500(Lcom/htc/android/htcsetupwizard/MainActivity;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x1f4

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_2

    .line 2802
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1900(Lcom/htc/android/htcsetupwizard/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mProcessingDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1900(Lcom/htc/android/htcsetupwizard/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2803
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->showProcessingDialog()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$2000(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 2806
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1508(Lcom/htc/android/htcsetupwizard/MainActivity;)I

    goto :goto_1

    .line 2810
    :cond_3
    const-string v1, "OOBE_MainActivity"

    const-string v2, "check top activity found pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mCheckActivityRetryCount:I
    invoke-static {v1, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1502(Lcom/htc/android/htcsetupwizard/MainActivity;I)I

    goto :goto_1

    .line 2817
    :sswitch_5
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$1;

    .end local v0           #serviceThread:Ljava/lang/Thread;
    const-string v1, "MainActivity"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$1;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;Ljava/lang/String;)V

    .line 2824
    .restart local v0       #serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2827
    :sswitch_6
    new-instance v0, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$2;

    .end local v0           #serviceThread:Ljava/lang/Thread;
    const-string v1, "MainActivity"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler$2;-><init>(Lcom/htc/android/htcsetupwizard/MainActivity$MyHandler;Ljava/lang/String;)V

    .line 2834
    .restart local v0       #serviceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2774
    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0x12d -> :sswitch_5
        0x12e -> :sswitch_6
    .end sparse-switch
.end method
