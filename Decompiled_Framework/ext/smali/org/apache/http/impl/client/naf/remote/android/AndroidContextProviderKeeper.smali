.class public Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;
.super Ljava/lang/Object;
.source "AndroidContextProviderKeeper.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;


# static fields
.field private static instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private final delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->log:Lorg/apache/commons/logging/Log;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate must be not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delegate.getClass().getCanonicalName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    return-void
.end method

.method public static clear()V
    .locals 3

    sget-object v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;
    .locals 6

    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    if-nez v2, :cond_1

    sget-object v5, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v1, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;-><init>()V

    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    :cond_0
    :try_start_2
    monitor-exit v5

    :cond_1
    return-object v2

    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 4

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getContext()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->syncObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->delegate:Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContext()#finished   context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
