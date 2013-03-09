.class public Lorg/apache/xml/utils/StringBufferPool;
.super Ljava/lang/Object;
.source "StringBufferPool.java"


# static fields
.field private static m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/ObjectPool;

    const-class v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/ObjectPool;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized free(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2

    const-class v1, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    sget-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/ObjectPool;->freeInstance(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized get()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 2

    const-class v1, Lorg/apache/xml/utils/StringBufferPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/xml/utils/StringBufferPool;->m_stringBufPool:Lorg/apache/xml/utils/ObjectPool;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectPool;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/FastStringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
