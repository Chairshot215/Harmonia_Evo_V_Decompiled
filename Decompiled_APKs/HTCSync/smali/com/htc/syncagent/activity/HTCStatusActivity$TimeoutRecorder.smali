.class Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;
.super Ljava/lang/Thread;
.source "HTCStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/syncagent/activity/HTCStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRecorder"
.end annotation


# instance fields
.field private mCount:I

.field private mTimeout:Z

.field final synthetic this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;


# direct methods
.method public constructor <init>(Lcom/htc/syncagent/activity/HTCStatusActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-object p1, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 275
    iput v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mCount:I

    .line 276
    iput-boolean v0, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mTimeout:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 286
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mCount:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    .line 288
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mTimeout:Z

    .line 299
    iget-boolean v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mTimeout:Z

    if-eqz v2, :cond_2

    .line 301
    const/4 v2, 0x2

    sput v2, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 303
    iget-object v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$3(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$3(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 307
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 308
    iget-object v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->this$0:Lcom/htc/syncagent/activity/HTCStatusActivity;

    #getter for: Lcom/htc/syncagent/activity/HTCStatusActivity;->detectorHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/syncagent/activity/HTCStatusActivity;->access$3(Lcom/htc/syncagent/activity/HTCStatusActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    .line 325
    :goto_2
    return-void

    .line 292
    :cond_0
    const-string v2, "FDUI"

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pc is not connected. -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->sleep(J)V

    .line 295
    iget v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/syncagent/activity/HTCStatusActivity$TimeoutRecorder;->mCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 323
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FDUI"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "FDUI"

    .line 312
    const-string v3, "detecing view is not actived"

    .line 311
    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_2
    const-string v2, "FDUI"

    const-string v3, "unkown error"

    invoke-static {v2, v3}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
