.class public Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;
.super Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;
.source "WidgetBackgroundData.java"


# instance fields
.field private mAutoSyncFilter:Landroid/content/IntentFilter;

.field private final mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mbRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mbRegistered:Z

    .line 97
    new-instance v0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData$1;-><init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 33
    invoke-super {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->deinit()V

    .line 34
    return-void
.end method

.method public getAutoSyncSetting()Z
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, bRet:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 54
    const-string v1, "HtcBackgroundDataWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCurrentSetting: nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v0
.end method

.method public getBackgroundDataSetting()I
    .locals 5

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, nRet:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, CM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 44
    :goto_0
    const-string v2, "HtcBackgroundDataWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCurrentSetting: nRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1

    .line 42
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentSetting()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, nRet:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->getBackgroundDataSetting()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->getAutoSyncSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 2
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 27
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->registerReceiver()V

    .line 28
    return-void
.end method

.method public pressIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->getBackgroundDataSetting()I

    move-result v3

    .line 73
    .local v3, nBackgroundDataSetting:I
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->getAutoSyncSetting()Z

    move-result v0

    .line 74
    .local v0, bAutoSyncSetting:Z
    iget-object v5, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 76
    .local v2, contentResolver:Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 78
    if-nez v3, :cond_1

    .line 81
    const-string v5, "background_data"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, broadcast:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    if-nez v0, :cond_0

    .line 87
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 95
    .end local v1           #broadcast:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-nez v0, :cond_2

    :goto_1
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mbRegistered:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mbRegistered:Z

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->mbRegistered:Z

    .line 129
    :cond_0
    return-void
.end method
