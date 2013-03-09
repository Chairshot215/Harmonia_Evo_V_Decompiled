.class public Lcom/google/android/gsf/update/StateWatcher;
.super Landroid/content/BroadcastReceiver;
.source "StateWatcher.java"


# instance fields
.field private mBatteryState:I

.field private final mContext:Landroid/content/Context;

.field private mLastCharging:Z

.field private mLastLevel:I

.field private final mOnChange:Ljava/lang/Runnable;

.field private mRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "onChange"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    iput v1, p0, Lcom/google/android/gsf/update/StateWatcher;->mBatteryState:I

    .line 47
    iput-boolean v1, p0, Lcom/google/android/gsf/update/StateWatcher;->mRoaming:Z

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastLevel:I

    .line 90
    iput-boolean v1, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastCharging:Z

    .line 50
    iput-object p1, p0, Lcom/google/android/gsf/update/StateWatcher;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/google/android/gsf/update/StateWatcher;->mOnChange:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method private getMinBatteryChargingThreshold()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_battery_threshold"

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMinBatteryThreshold()I
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_min_battery_threshold"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBatteryState()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mBatteryState:I

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mRoaming:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, runCallback:Z
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    const-string v6, "level"

    const/4 v9, -0x1

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastLevel:I

    .line 100
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastCharging:Z

    .line 104
    :cond_0
    iget-boolean v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastCharging:Z

    if-eqz v6, :cond_8

    .line 105
    iget v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastLevel:I

    invoke-direct {p0}, Lcom/google/android/gsf/update/StateWatcher;->getMinBatteryThreshold()I

    move-result v9

    if-ge v6, v9, :cond_7

    move v1, v7

    .line 112
    .local v1, batteryState:I
    :goto_1
    iget v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mBatteryState:I

    if-eq v1, v6, :cond_1

    .line 113
    iput v1, p0, Lcom/google/android/gsf/update/StateWatcher;->mBatteryState:I

    .line 114
    const/4 v5, 0x1

    .line 117
    :cond_1
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    iget-boolean v4, p0, Lcom/google/android/gsf/update/StateWatcher;->mRoaming:Z

    .line 119
    .local v4, roaming:Z
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 121
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-nez v2, :cond_a

    .line 122
    const-string v6, "StateWatcher"

    const-string v7, "couldn\'t get connectivity manager"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    :goto_2
    iget-boolean v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mRoaming:Z

    if-eq v4, v6, :cond_3

    .line 131
    iput-boolean v4, p0, Lcom/google/android/gsf/update/StateWatcher;->mRoaming:Z

    .line 132
    const/4 v5, 0x1

    .line 136
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v4           #roaming:Z
    :cond_3
    const-string v6, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    const/4 v5, 0x1

    .line 140
    :cond_4
    if-eqz v5, :cond_5

    .line 141
    iget-object v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mOnChange:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 143
    :cond_5
    return-void

    .end local v1           #batteryState:I
    :cond_6
    move v6, v8

    .line 100
    goto :goto_0

    :cond_7
    move v1, v8

    .line 105
    goto :goto_1

    .line 108
    :cond_8
    iget v6, p0, Lcom/google/android/gsf/update/StateWatcher;->mLastLevel:I

    invoke-direct {p0}, Lcom/google/android/gsf/update/StateWatcher;->getMinBatteryChargingThreshold()I

    move-result v7

    if-ge v6, v7, :cond_9

    const/4 v1, 0x2

    .restart local v1       #batteryState:I
    :goto_3
    goto :goto_1

    .end local v1           #batteryState:I
    :cond_9
    move v1, v8

    goto :goto_3

    .line 124
    .restart local v1       #batteryState:I
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v4       #roaming:Z
    :cond_a
    const/4 v4, 0x0

    .line 125
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 126
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public start()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/gsf/update/StateWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/update/StateWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method
