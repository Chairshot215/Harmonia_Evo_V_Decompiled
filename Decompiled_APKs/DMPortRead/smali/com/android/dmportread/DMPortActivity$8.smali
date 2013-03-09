.class Lcom/android/dmportread/DMPortActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "DMPortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMPortActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.dmportread.UPDATE_VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-string v4, "rxCnt"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/dmportread/DMPortActivity;->intRxCnt:I
    invoke-static {v3, v4}, Lcom/android/dmportread/DMPortActivity;->access$902(Lcom/android/dmportread/DMPortActivity;I)I

    .line 496
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-string v4, "txCnt"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/dmportread/DMPortActivity;->intTxCnt:I
    invoke-static {v3, v4}, Lcom/android/dmportread/DMPortActivity;->access$1002(Lcom/android/dmportread/DMPortActivity;I)I

    .line 497
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-string v4, "rxUSB"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/dmportread/DMPortActivity;->intRxUSB:I
    invoke-static {v3, v4}, Lcom/android/dmportread/DMPortActivity;->access$1102(Lcom/android/dmportread/DMPortActivity;I)I

    .line 498
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    const-string v4, "txUSB"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/dmportread/DMPortActivity;->intTxUSB:I
    invoke-static {v3, v4}, Lcom/android/dmportread/DMPortActivity;->access$1202(Lcom/android/dmportread/DMPortActivity;I)I

    .line 500
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/dmportread/DMPortActivity;->access$1300(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 501
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/dmportread/DMPortActivity$8;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/dmportread/DMPortActivity;->access$1300(Lcom/android/dmportread/DMPortActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 505
    .local v1, ha:Landroid/os/Handler;
    new-instance v3, Lcom/android/dmportread/DMPortActivity$8$1;

    invoke-direct {v3, p0}, Lcom/android/dmportread/DMPortActivity$8$1;-><init>(Lcom/android/dmportread/DMPortActivity$8;)V

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    return-void
.end method
