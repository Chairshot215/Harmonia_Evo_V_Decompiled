.class Lcom/htc/syncagent/activity/HTCStatusActivity$1;
.super Landroid/os/Handler;
.source "HTCStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/activity/HTCStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;


# direct methods
.method constructor <init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 33
    const-string v1, "FDUI"

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg.what = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "FDUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    const/4 v2, 0x2

    #calls: Lcom/htc/syncagent/activity/HTCStatusActivity;->showStatusDialog(I)V
    invoke-static {v1, v2}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$0(Lcom/htc/syncagent/activity/HTCStatusActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #calls: Lcom/htc/syncagent/activity/HTCStatusActivity;->showMainActivity()V
    invoke-static {v1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$1(Lcom/htc/syncagent/activity/HTCStatusActivity;)V

    goto :goto_0

    .line 51
    :pswitch_3
    sget v1, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-eq v1, v4, :cond_0

    .line 52
    iget-object v1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$1;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-virtual {v1}, Lcom/htc/syncagent/activity/HTCStatusActivity;->finish()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
