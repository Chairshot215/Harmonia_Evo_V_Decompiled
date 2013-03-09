.class public Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;
.super Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.source "WidgetBackgroundData.java"


# instance fields
.field listener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoSyncFilter:Landroid/content/IntentFilter;

.field private final mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mbRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mbRegistered:Z

    .line 27
    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 51
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->listener:Lcom/htc/fusion/fx/MessageListener;

    .line 163
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$2;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initFusionScr()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 62
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 64
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 66
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 67
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 71
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 72
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 76
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 84
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 49
    return-void
.end method

.method public getAutoSyncSetting()Z
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, bRet:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 101
    const-string v1, "HtcPowerStripWidget"

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

    .line 102
    return v0
.end method

.method public getBackgroundDataSetting()I
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, nRet:I
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, CM:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 92
    :goto_0
    const-string v2, "HtcPowerStripWidget"

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

    .line 93
    return v1

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentSetting()I
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, nRet:I
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getBackgroundDataSetting()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getAutoSyncSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 113
    :cond_0
    return v0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 3
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    const/16 v2, 0x1f42

    .line 31
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->initFusionScr()V

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    .line 34
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->registerReceiver()V

    .line 35
    const-string v0, "WidgetBackgroundData"

    const-string v1, "playmarker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 43
    return-void
.end method

.method public pressIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getBackgroundDataSetting()I

    move-result v3

    .line 119
    .local v3, nBackgroundDataSetting:I
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getAutoSyncSetting()Z

    move-result v0

    .line 120
    .local v0, bAutoSyncSetting:Z
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 122
    .local v2, contentResolver:Landroid/content/ContentResolver;
    if-eqz v2, :cond_0

    .line 124
    if-nez v3, :cond_1

    .line 127
    const-string v5, "background_data"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, broadcast:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    if-nez v0, :cond_0

    .line 133
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 141
    .end local v1           #broadcast:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 138
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
    .line 177
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mbRegistered:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mbRegistered:Z

    goto :goto_0
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mAutoSyncReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->mbRegistered:Z

    .line 195
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
