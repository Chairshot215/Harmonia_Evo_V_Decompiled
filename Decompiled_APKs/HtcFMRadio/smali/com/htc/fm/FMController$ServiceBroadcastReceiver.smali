.class Lcom/htc/fm/FMController$ServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMController;


# direct methods
.method private constructor <init>(Lcom/htc/fm/FMController;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/FMController;Lcom/htc/fm/FMController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;-><init>(Lcom/htc/fm/FMController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->isUIActive:Z
    invoke-static {v1}, Lcom/htc/fm/FMController;->access$200(Lcom/htc/fm/FMController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController]@@@@@@ ###### onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v1, "FMController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMController]@@@@@@ ###### onReceive state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->handleHeadsetAction(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/htc/fm/FMController;->access$300(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->handleStateChangedAction(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/htc/fm/FMController;->access$400(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->handleCmdStateChangedAction(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/htc/fm/FMController;->access$500(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/htc/fm/FMController$ServiceBroadcastReceiver;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->handleRemoteControlAction(Landroid/content/Intent;)Z
    invoke-static {v1, p2}, Lcom/htc/fm/FMController;->access$600(Lcom/htc/fm/FMController;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
