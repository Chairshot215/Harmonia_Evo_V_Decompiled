.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$2;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->handleConnectivityAction(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;


# direct methods
.method constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$2;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$2;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender$2;->this$1:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;

    iget-object v0, v0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$KddiPacketSMSSender;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    #getter for: Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->mConnectingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;->access$500(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "KddiPacketSMSManager"

    const-string v2, "connectivity notify all "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
