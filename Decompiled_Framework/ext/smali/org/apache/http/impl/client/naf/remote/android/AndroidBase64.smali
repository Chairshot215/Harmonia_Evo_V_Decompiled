.class public Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "AndroidBase64.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/base64/Base64Provider;


# instance fields
.field private final encodeToStringMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    const-string v1, "android.util.Base64"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Class;)V

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v2, "encodeToString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v1, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;->encodeToStringMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public encodeToString([BI)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;->encodeToStringMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;->reportCrash64(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    const-string v0, "android.util.Base64"

    return-object v0
.end method

.method public reportCrash64(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidBase64;->dumpObject(Lorg/apache/commons/logging/Log;)V

    new-instance v1, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/apache/http/impl/client/naf/gba/base64/Base64ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
