.class Lcom/android/server/UsbnetService$UsbnetLock;
.super Ljava/lang/Object;
.source "UsbnetService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbnetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbnetLock"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/UsbnetService;


# direct methods
.method constructor <init>(Lcom/android/server/UsbnetService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/UsbnetService$UsbnetLock;->this$0:Lcom/android/server/UsbnetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/UsbnetService$UsbnetLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/UsbnetService$UsbnetLock;->this$0:Lcom/android/server/UsbnetService;

    #getter for: Lcom/android/server/UsbnetService;->mLocks:Lcom/android/server/UsbnetService$LockList;
    invoke-static {v0}, Lcom/android/server/UsbnetService;->access$900(Lcom/android/server/UsbnetService;)Lcom/android/server/UsbnetService$LockList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/UsbnetService$UsbnetLock;->this$0:Lcom/android/server/UsbnetService;

    iget-object v2, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    #calls: Lcom/android/server/UsbnetService;->releaseUsbnetLockLocked(Landroid/os/IBinder;)Z
    invoke-static {v0, v2}, Lcom/android/server/UsbnetService;->access$1000(Lcom/android/server/UsbnetService;Landroid/os/IBinder;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbnetLock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
