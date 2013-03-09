.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataConnectReceiver"
.end annotation


# static fields
.field private static final EVT_ANY_DATA_CONNECTION_STATE_CHANGED:I = 0x1


# instance fields
.field m_bgHandler:Landroid/os/Handler;

.field m_context:Landroid/content/Context;

.field m_looper:Landroid/os/Looper;

.field m_thread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_thread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_bgHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    return-void
.end method

.method private createHandler()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dataConnectRerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_thread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    new-instance v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;-><init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_bgHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data connect onreceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "iface"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "networkUnvailable"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetworkState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /apn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,apnType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interfaceName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,unavailable? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v7, "CONNECTED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mPendingQ:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$100(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "KddiPacketSMSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone.DataState.CONNECTING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone$DataState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_bgHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_bgHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_bgHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KddiPacketSMSManager"

    const-string v2, "registerForConnectionStateChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->createHandler()V

    :cond_2
    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregister()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KddiPacketSMSManager"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_looper:Landroid/os/Looper;

    :cond_2
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mDataConnectReceiver:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;
    invoke-static {v1}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$200(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->m_context:Landroid/content/Context;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
