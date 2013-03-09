.class public Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;
.super Ljava/lang/Object;
.source "Base64Keeper.java"


# static fields
.field private static final instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;

    if-nez v1, :cond_1

    sget-object v6, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->syncObj:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;

    invoke-direct {v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64Keeper;->instanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, p1}, Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    :cond_2
    return-object v4

    :catch_0
    move-exception v3

    :try_start_4
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catchall_0
    move-exception v5

    :goto_0
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_0
.end method
