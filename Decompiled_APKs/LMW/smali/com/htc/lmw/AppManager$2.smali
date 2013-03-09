.class Lcom/htc/lmw/AppManager$2;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "AppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/AppManager;->moveToSdCard(Ljava/util/List;Lcom/htc/lmw/AppManager$ProgressListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/AppManager;

.field final synthetic val$storageError:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/htc/lmw/AppManager;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/lmw/AppManager$2;->this$0:Lcom/htc/lmw/AppManager;

    iput-object p2, p0, Lcom/htc/lmw/AppManager$2;->val$storageError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .parameter "pkg"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 287
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x6

    if-ne p2, v0, :cond_2

    .line 290
    :cond_0
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    sput-boolean v1, Lcom/htc/lmw/AppManager;->sWasUnmountingStorage:Z

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/AppManager$2;->val$storageError:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    :cond_2
    const-string v0, "LMW/AppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageMoved: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 301
    monitor-exit p0

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
