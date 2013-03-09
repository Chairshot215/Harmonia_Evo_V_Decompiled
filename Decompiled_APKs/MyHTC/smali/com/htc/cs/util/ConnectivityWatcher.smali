.class public Lcom/htc/cs/util/ConnectivityWatcher;
.super Ljava/lang/Object;
.source "ConnectivityWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConnectivityWatcher: "

.field private static mInstance:Lcom/htc/cs/util/ConnectivityWatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mListeners:Ljava/util/List;

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'context\' is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/htc/cs/util/ConnectivityWatcher;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    const-class v1, Lcom/htc/cs/util/ConnectivityWatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/cs/util/ConnectivityWatcher;->mInstance:Lcom/htc/cs/util/ConnectivityWatcher;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/htc/cs/util/ConnectivityWatcher;

    invoke-direct {v0, p0}, Lcom/htc/cs/util/ConnectivityWatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/cs/util/ConnectivityWatcher;->mInstance:Lcom/htc/cs/util/ConnectivityWatcher;

    .line 47
    :cond_0
    sget-object v0, Lcom/htc/cs/util/ConnectivityWatcher;->mInstance:Lcom/htc/cs/util/ConnectivityWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public connectivityChanged()V
    .locals 6

    .prologue
    .line 60
    const-string v4, "MyHTC"

    const-string v5, "ConnectivityWatcher: connectivityChanged()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v4, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v0

    .line 62
    .local v0, isNetworkActive:Z
    iget-object v4, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 67
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;

    .line 68
    .local v2, listener:Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;
    if-eqz v2, :cond_0

    .line 69
    const-string v4, "MyHTC"

    const-string v5, "ConnectivityWatcher: notify listener."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {v2, v0}, Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;->onConnectivityChange(Z)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 75
    .end local v2           #listener:Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;"
    :cond_1
    return-void
.end method

.method public declared-synchronized register(Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string v0, "MyHTC"

    const-string v1, "ConnectivityWatcher: register()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister(Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    const-string v3, "MyHTC"

    const-string v4, "ConnectivityWatcher: unregister()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/htc/cs/util/ConnectivityWatcher;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 96
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;

    .line 97
    .local v1, obj:Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 98
    :cond_1
    const-string v3, "MyHTC"

    const-string v4, "ConnectivityWatcher: remove listener."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;>;"
    .end local v1           #obj:Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 102
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/ConnectivityWatcher$ConnectivityChangeListener;>;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method
