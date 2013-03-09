.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "RemoteIExceptionHolderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;


# instance fields
.field private final getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getException"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    return-void
.end method


# virtual methods
.method public getException()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->getExceptionMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getException()   getExceptionMethodResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderImpl;->reportCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    const-string v0, "javax.microedition.gba.android.IExceptionHolder"

    const-string v1, "javax.microedition.gba.android.IExceptionHolder"

    return-object v1
.end method
