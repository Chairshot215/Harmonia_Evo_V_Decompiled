.class Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method private constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/musicenhancer/EnhancerService;Lcom/htc/musicenhancer/EnhancerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;-><init>(Lcom/htc/musicenhancer/EnhancerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 637
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    const-string v3, "[EnhancerService]"

    const-string v4, "receive ACTION_BACKGROUND_DATA_SETTING_CHANGED"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #calls: Lcom/htc/musicenhancer/EnhancerService;->isBackgroundDataEnabled()Z
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$300(Lcom/htc/musicenhancer/EnhancerService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$ConnectivityBroadcastReceiver;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v3, v2, v2}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    const-string v4, "noConnectivity"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 646
    .local v1, noConnection:Z
    const-string v4, "[EnhancerService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive CONNECTIVITY_ACTION : Connection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
