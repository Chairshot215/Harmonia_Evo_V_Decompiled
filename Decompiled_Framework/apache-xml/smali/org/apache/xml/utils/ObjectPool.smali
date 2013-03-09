.class public Lorg/apache/xml/utils/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x76399dd12023a5c3L


# instance fields
.field private final freeStack:Ljava/util/ArrayList;

.field private final objectType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/apache/xml/utils/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/apache/xml/utils/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized freeInstance(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstance()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->objectType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_EXCEPTION_CREATING_POOL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized getInstanceIfFree()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xml/utils/ObjectPool;->freeStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
