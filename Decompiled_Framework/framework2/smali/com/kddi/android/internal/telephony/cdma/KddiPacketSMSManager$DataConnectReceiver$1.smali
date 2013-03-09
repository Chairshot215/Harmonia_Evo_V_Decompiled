.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;
.super Landroid/os/Handler;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "KddiPacketSMSManager"

    const-string v1, "handle EVT_ANY_DATA_CONNECTION_STATE_CHANGED: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v1, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    monitor-enter v1

    :try_start_0
    const-string v0, "KddiPacketSMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSendState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v3, v3, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mSendStClass:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;

    iget v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiSendState;->mSendState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver$1;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$DataConnectReceiver;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    const/4 v2, 0x0

    #calls: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->checkFirstQueueMessage(Z)V
    invoke-static {v0, v2}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$300(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Z)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
