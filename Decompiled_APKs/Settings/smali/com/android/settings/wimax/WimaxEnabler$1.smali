.class Lcom/android/settings/wimax/WimaxEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/16 v3, 0x2328

    const/4 v8, 0x4

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 79
    .local v11, action:Ljava/lang/String;
    const-string v0, "WimaxEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v4, "curWimaxEnabledState"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "preWimaxEnabledState"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    move v2, v12

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "com.htc.net.wimax.ERROR_CODE_RETURN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v2, 0x2

    const-string v4, "com.htc.net.wimax.ERROR_CODE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 94
    :cond_3
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v4, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v5, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v6, 0x3

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move v7, v3

    move v9, v8

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #calls: Lcom/android/settings/wimax/WimaxEnabler;->getPersistedAirplaneModeEnabled()Z
    invoke-static {v1}, Lcom/android/settings/wimax/WimaxEnabler;->access$200(Lcom/android/settings/wimax/WimaxEnabler;)Z

    move-result v1

    if-nez v1, :cond_4

    move v2, v12

    :cond_4
    #setter for: Lcom/android/settings/wimax/WimaxEnabler;->mIsSetByUser:Z
    invoke-static {v0, v2}, Lcom/android/settings/wimax/WimaxEnabler;->access$102(Lcom/android/settings/wimax/WimaxEnabler;Z)Z

    goto :goto_0

    .line 99
    :cond_5
    const-string v0, "com.htc.net.wimax.ON_BACKOFF_STATE_ACTION"

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    move v2, v12

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 104
    :cond_6
    const-string v0, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    #getter for: Lcom/android/settings/wimax/WimaxEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wimax/WimaxEnabler;->access$000(Lcom/android/settings/wimax/WimaxEnabler;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/settings/wimax/WimaxEnabler$uiThread;

    iget-object v1, p0, Lcom/android/settings/wimax/WimaxEnabler$1;->this$0:Lcom/android/settings/wimax/WimaxEnabler;

    const/4 v2, 0x5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wimax/WimaxEnabler$uiThread;-><init>(Lcom/android/settings/wimax/WimaxEnabler;IIIILandroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
