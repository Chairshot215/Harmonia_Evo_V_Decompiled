.class Landroid/net/hotspot/SoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/hotspot/SoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/hotspot/SoftapMonitor;


# direct methods
.method public constructor <init>(Landroid/net/hotspot/SoftapMonitor;)V
    .locals 1

    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->notifyAssocListChange()V

    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #getter for: Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/hotspot/SoftapMonitor;->access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyConnectionRequest(Ljava/lang/String;)V

    return-void
.end method

.method private nap(I)V
    .locals 2

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    const-string v6, "SoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v6, "SoftapMonitor"

    const-string v7, "HotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    invoke-direct {p0, v6}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->nap(I)V

    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$004(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    const-string v6, "SoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    :goto_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$102(Landroid/net/hotspot/SoftapMonitor;I)I

    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$002(Landroid/net/hotspot/SoftapMonitor;I)I

    return-void

    :cond_1
    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    #setter for: Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Landroid/net/hotspot/SoftapMonitor;->access$002(Landroid/net/hotspot/SoftapMonitor;I)I

    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x3

    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x4

    invoke-direct {p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x5

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v1}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    :cond_6
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->this$0:Landroid/net/hotspot/SoftapMonitor;

    invoke-static {v6}, Landroid/net/hotspot/SoftapMonitor;->access$104(Landroid/net/hotspot/SoftapMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    const-string v6, "SoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto/16 :goto_1
.end method
