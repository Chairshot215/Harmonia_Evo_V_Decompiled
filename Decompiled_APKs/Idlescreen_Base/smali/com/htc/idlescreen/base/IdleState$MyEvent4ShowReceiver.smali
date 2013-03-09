.class Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/IdleState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEvent4ShowReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/IdleState;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/IdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/IdleState;Lcom/htc/idlescreen/base/IdleState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;-><init>(Lcom/htc/idlescreen/base/IdleState;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 465
    :cond_0
    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 466
    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mUIHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/idlescreen/base/IdleState;->access$400(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 469
    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 471
    .local v6, status:I
    const-string v7, "level"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 472
    .local v2, level:I
    const-string v7, "plugged"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 473
    .local v4, plugged:I
    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #calls: Lcom/htc/idlescreen/base/IdleState;->isPluggedIn(I)Z
    invoke-static {v7, v6}, Lcom/htc/idlescreen/base/IdleState;->access$800(Lcom/htc/idlescreen/base/IdleState;I)Z

    move-result v5

    .line 479
    .local v5, pluggedIn:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 480
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "status"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    const-string v7, "level"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    const-string v7, "plugged"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 485
    .local v3, message:Landroid/os/Message;
    const/16 v7, 0x64

    iput v7, v3, Landroid/os/Message;->what:I

    .line 486
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 487
    iget-object v7, p0, Lcom/htc/idlescreen/base/IdleState$MyEvent4ShowReceiver;->this$0:Lcom/htc/idlescreen/base/IdleState;

    #getter for: Lcom/htc/idlescreen/base/IdleState;->mBgHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/htc/idlescreen/base/IdleState;->access$700(Lcom/htc/idlescreen/base/IdleState;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0
.end method
