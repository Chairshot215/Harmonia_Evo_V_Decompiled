.class Lcom/htc/syncagent/activity/HTCMainActivity$1;
.super Landroid/os/Handler;
.source "HTCMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/activity/HTCMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 34
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nCurrentStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    sget v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "FDUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    return-void

    .line 42
    :pswitch_1
    const-string v0, "FDUI"

    const-string v1, "serching ready"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    .line 44
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->checkAndStart()V
    invoke-static {v0}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$1(Lcom/htc/syncagent/activity/HTCMainActivity;)V

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, "FDUI"

    const-string v1, "ready to sync"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    const/4 v1, 0x3

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    goto :goto_0

    .line 55
    :pswitch_3
    const-string v0, "FDUI"

    const-string v1, "start to sync"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    const/4 v1, 0x4

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "FDUI"

    const-string v1, "socket error"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    .line 64
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    goto :goto_0

    .line 69
    :pswitch_5
    const-string v0, "FDUI"

    const-string v1, "close app"

    invoke-static {v0, v1}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/syncagent/activity/HTCMainActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCMainActivity;

    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    #calls: Lcom/htc/syncagent/activity/HTCMainActivity;->updateTextView(I)V
    invoke-static {v0, v1}, Lcom/htc/syncagent/activity/HTCMainActivity;->access$0(Lcom/htc/syncagent/activity/HTCMainActivity;I)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
