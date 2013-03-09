.class public Lcom/htc/cs/util/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# static fields
.field private static mInstance:Lcom/htc/cs/util/LoggerManager;

.field private static mLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/cs/util/Logger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/htc/cs/util/LoggerManager;

    invoke-direct {v0}, Lcom/htc/cs/util/LoggerManager;-><init>()V

    sput-object v0, Lcom/htc/cs/util/LoggerManager;->mInstance:Lcom/htc/cs/util/LoggerManager;

    .line 15
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/cs/util/LoggerManager;->mLoggers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoggerManager()Lcom/htc/cs/util/LoggerManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/cs/util/LoggerManager;->mInstance:Lcom/htc/cs/util/LoggerManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLogger(Ljava/lang/String;)Lcom/htc/cs/util/Logger;
    .locals 2
    .parameter "name"

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/htc/cs/util/LoggerManager;->mLoggers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 38
    .local v0, loggerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/Logger;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .end local v0           #loggerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/Logger;>;"
    new-instance v1, Lcom/htc/cs/util/Logger;

    invoke-direct {v1, p1}, Lcom/htc/cs/util/Logger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .restart local v0       #loggerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/Logger;>;"
    sget-object v1, Lcom/htc/cs/util/LoggerManager;->mLoggers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cs/util/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 34
    .end local v0           #loggerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/htc/cs/util/Logger;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
