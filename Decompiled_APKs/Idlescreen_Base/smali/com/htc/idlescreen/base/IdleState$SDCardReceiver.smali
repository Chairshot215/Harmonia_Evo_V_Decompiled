.class Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x67

    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, action:Ljava/lang/String;
    const/4 v1, -0x1

    .line 438
    .local v1, flag:I
    const-string v2, "IdleState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDCardReceiver action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/idlescreen/base/IdleState;->access$700(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 451
    iget-object v2, p0, Lcom/htc/idlescreen/base/IdleState$SDCardReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/idlescreen/base/IdleState;->access$700(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-static {v2, v5, v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method
