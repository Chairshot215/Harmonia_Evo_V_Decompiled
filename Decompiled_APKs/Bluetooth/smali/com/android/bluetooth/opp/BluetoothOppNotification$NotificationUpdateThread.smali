.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 153
    const-string v0, "Notification Update Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppNotification"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mFinised:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 167
    monitor-exit v1

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    const/4 v2, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Z)Z

    .line 170
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    goto :goto_0
.end method
