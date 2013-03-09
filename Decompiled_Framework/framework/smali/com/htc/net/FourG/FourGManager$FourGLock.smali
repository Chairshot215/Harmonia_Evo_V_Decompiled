.class public Lcom/htc/net/FourG/FourGManager$FourGLock;
.super Ljava/lang/Object;
.source "FourGManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FourGLock"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/net/FourG/FourGManager;


# direct methods
.method private constructor <init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->this$0:Lcom/htc/net/FourG/FourGManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    iput v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    iput-boolean v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;Lcom/htc/net/FourG/FourGManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/net/FourG/FourGManager$FourGLock;-><init>(Lcom/htc/net/FourG/FourGManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-lez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v0, :cond_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHeld()Z
    .locals 2

    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    iget-object v1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4GLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string v1, "held; "

    :goto_0
    iget-boolean v3, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/htc/net/FourG/FourGManager$FourGLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "4GLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "not refcounted"

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
