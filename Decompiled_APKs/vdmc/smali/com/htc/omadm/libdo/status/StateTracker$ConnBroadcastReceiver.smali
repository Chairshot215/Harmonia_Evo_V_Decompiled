.class Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/status/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/status/StateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/status/StateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {p1}, Lcom/htc/omadm/rule/Factory;->checkFactoryInit(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 73
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 75
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v4, "ConnMo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTypeName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isConnectedOrConnecting:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getExtraInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getSubtype:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getSubtypeName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getReason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    .line 83
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_6

    .line 84
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 86
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 88
    const-string v4, "ConnMo"

    const-string v6, "@Admin connected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_4

    .line 107
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 108
    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, 0x2

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$202(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 110
    const-string v4, "ConnMo"

    const-string v6, "@default data call is connected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_2
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    iget-object v6, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I
    invoke-static {v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$200(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setUMTSConnState(I)V

    .line 116
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 119
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 120
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 121
    :try_start_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 122
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, 0x2

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$302(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 123
    const-string v4, "ConnMo"

    const-string v6, "@WiFi is connected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_3
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    iget-object v6, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I
    invoke-static {v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$300(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setWiFiConnState(I)V

    .line 129
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 133
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 134
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 135
    :try_start_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 136
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, 0x2

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$402(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 137
    const-string v4, "ConnMo"

    const-string v6, "@WiMAX is connected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_4
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    iget-object v6, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I
    invoke-static {v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$400(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setWiMAXConnState(I)V

    .line 143
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 91
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 93
    :cond_6
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mSyncObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$000(Lcom/htc/omadm/libdo/status/StateTracker;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 94
    :try_start_5
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #getter for: Lcom/htc/omadm/libdo/status/StateTracker;->mDMChannelConnState:I
    invoke-static {v4}, Lcom/htc/omadm/libdo/status/StateTracker;->access$100(Lcom/htc/omadm/libdo/status/StateTracker;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 95
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->setDMChannelConnState(I)V

    .line 97
    const-string v4, "ConnMo"

    const-string v6, "@Admin disconnected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_5
    monitor-exit v5

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 100
    :cond_7
    :try_start_6
    const-string v4, "ConnMo"

    const-string v6, "@Admin disconnected, did not change connection state @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    .line 112
    :cond_8
    :try_start_7
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, -0x1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mUMTSConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$202(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 113
    const-string v4, "ConnMo"

    const-string v6, "@default data call is disconnected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 116
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v4

    .line 125
    :cond_9
    :try_start_8
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, -0x1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiFiConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$302(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 126
    const-string v4, "ConnMo"

    const-string v6, "@WiFi is disconnected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 129
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v4

    .line 139
    :cond_a
    :try_start_9
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    const/4 v6, -0x1

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mWiMAXConnState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$402(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    .line 140
    const-string v4, "ConnMo"

    const-string v6, "@WiMAX is disconnected @"

    invoke-static {v4, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 148
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 149
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 150
    .local v3, plugType:I
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, level:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, batteryScale:I
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    mul-int/lit8 v5, v2, 0x64

    div-int/2addr v5, v0

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mBatteryLevel:I
    invoke-static {v4, v5}, Lcom/htc/omadm/libdo/status/StateTracker;->access$502(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    goto/16 :goto_0

    .line 157
    .end local v0           #batteryScale:I
    .end local v2           #level:I
    .end local v3           #plugType:I
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 158
    const-string v4, "ConnMo"

    const-string v5, "Screen On"

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mScreenState:I
    invoke-static {v4, v6}, Lcom/htc/omadm/libdo/status/StateTracker;->access$602(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    goto/16 :goto_0

    .line 160
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const-string v4, "ConnMo"

    const-string v5, "Screen Off"

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v4, p0, Lcom/htc/omadm/libdo/status/StateTracker$ConnBroadcastReceiver;->this$0:Lcom/htc/omadm/libdo/status/StateTracker;

    #setter for: Lcom/htc/omadm/libdo/status/StateTracker;->mScreenState:I
    invoke-static {v4, v8}, Lcom/htc/omadm/libdo/status/StateTracker;->access$602(Lcom/htc/omadm/libdo/status/StateTracker;I)I

    goto/16 :goto_0
.end method
