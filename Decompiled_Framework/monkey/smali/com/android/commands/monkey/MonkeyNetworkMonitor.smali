.class public Lcom/android/commands/monkey/MonkeyNetworkMonitor;
.super Landroid/content/IIntentReceiver$Stub;
.source "MonkeyNetworkMonitor.java"


# static fields
.field private static final LDEBUG:Z


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private mCollectionStartTime:J

.field private mElapsedTime:J

.field private mEventTime:J

.field private mLastNetworkType:I

.field private mMobileElapsedTime:J

.field private mWifiElapsedTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    return-void
.end method

.method private updateNetworkStats()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    sub-long v0, v2, v4

    iget v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    return-void

    :pswitch_0
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    goto :goto_0

    :pswitch_1
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "## Network stats: elapsed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms mobile, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms wifi, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms not connected)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    return-void

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    goto :goto_0
.end method

.method public register(Landroid/app/IActivityManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    move-object v0, p1

    move-object v2, v1

    move-object v3, p0

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    return-void
.end method

.method public unregister(Landroid/app/IActivityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    return-void
.end method
