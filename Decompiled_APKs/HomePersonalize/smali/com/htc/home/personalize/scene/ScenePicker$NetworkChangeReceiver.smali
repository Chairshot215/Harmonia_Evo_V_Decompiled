.class Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;Lcom/htc/home/personalize/scene/ScenePicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1347
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 1351
    const-string v3, "ScenePicker"

    const-string v4, "NetworkChangeReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z
    invoke-static {v3}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1800(Lcom/htc/home/personalize/scene/ScenePicker;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 1353
    const-string v3, "ScenePicker"

    const-string v4, "Builder scene has downloaded. Bye~"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    const-string v3, "ScenePicker"

    const-string v4, "Start to check network status"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1358
    .local v2, strAct:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1359
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1360
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1361
    const-string v3, "ScenePicker"

    const-string v4, "Network connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    const-string v3, "ScenePicker"

    const-string v4, "Connect network, start download builder scene."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    new-instance v0, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;

    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct {v0, v3, p1}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;-><init>(Lcom/htc/home/personalize/scene/ScenePicker;Landroid/content/Context;)V

    .line 1366
    .local v0, downloadBuilderScene:Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;
    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/ScenePicker$DownloadFromSceneBuilder;->start()V

    .line 1368
    iget-object v3, p0, Lcom/htc/home/personalize/scene/ScenePicker$NetworkChangeReceiver;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #setter for: Lcom/htc/home/personalize/scene/ScenePicker;->mBuilderSceneDownloaded:Z
    invoke-static {v3, v5}, Lcom/htc/home/personalize/scene/ScenePicker;->access$1802(Lcom/htc/home/personalize/scene/ScenePicker;Z)Z

    goto :goto_0
.end method
