.class public Lcom/google/android/setupwizard/NetworkMonitoringActivity;
.super Landroid/app/Activity;
.source "NetworkMonitoringActivity.java"

# interfaces
.implements Lcom/google/android/setupwizard/NetworkMonitor$Callback;


# static fields
.field protected static final LOCAL_LOGV:Z

.field protected static mTimeSet:Z

.field protected static mTimeZoneSet:Z


# instance fields
.field private mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "SetupWizard"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

    .line 48
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 51
    new-instance v0, Lcom/google/android/setupwizard/NetworkMonitoringActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity$1;-><init>(Lcom/google/android/setupwizard/NetworkMonitoringActivity;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-direct {v0, p0, p0}, Lcom/google/android/setupwizard/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/google/android/setupwizard/NetworkMonitor$Callback;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/NetworkMonitor;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mNetworkMonitor:Lcom/google/android/setupwizard/NetworkMonitor;

    .line 100
    :cond_0
    return-void
.end method

.method public onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
    .locals 0
    .parameter "gls"

    .prologue
    .line 135
    return-void
.end method

.method public onNetworkConnected()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onNetworkDisconnected()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    iget-object v0, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method protected onSimStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 121
    const-string v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, stateExtra:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public timeDateConfigured()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeSet:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeZoneSet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
