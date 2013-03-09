.class public Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastWifiStateUp:Z

.field private mWifiHelp:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    .line 15
    iput-object v1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mWifiHelp:Landroid/content/Intent;

    .line 54
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static IsNetworkUp(Landroid/content/Context;)Z
    .locals 4
    .parameter "aContext"

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    .local v0, theNetworkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    move v1, v3

    .line 47
    :goto_0
    return v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static RegisterConnectionChangeReceiver(Landroid/content/Context;)Landroid/content/BroadcastReceiver;
    .locals 3
    .parameter "aContext"

    .prologue
    .line 21
    new-instance v0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, theBroadcastReceiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    return-object v0
.end method

.method public static UnregisterConnectionChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "aContext"
    .parameter "aBroadcastReceiver"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public AlertWifiDown()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mWifiHelp:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/dlnamediaserver/WifiHelp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mWifiHelp:Landroid/content/Intent;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mWifiHelp:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    .line 65
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 72
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->IsNetworkUp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-boolean v0, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    if-ne v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->AlertWifiDown()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iput-boolean v1, p0, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->mLastWifiStateUp:Z

    goto :goto_0
.end method
