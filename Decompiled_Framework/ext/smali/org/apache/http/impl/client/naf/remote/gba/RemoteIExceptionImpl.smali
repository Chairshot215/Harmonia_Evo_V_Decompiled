.class Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "RemoteIExceptionImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;


# instance fields
.field private final getErrorMsgMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final getErrorStackTraceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getErrorMsg"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->getErrorMsgMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    new-instance v0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const-string v1, "getErrorStackTrace"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;-><init>(Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->getErrorStackTraceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->getErrorMsgMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorMsg()   getExceptionMethodResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getErrorStackTrace()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->getErrorStackTraceMethod:Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass$CachedMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorStackTrace()   getErrorStackTraceMethodResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    const-string v0, "javax.microedition.gba.android.IException"

    const-string v1, "javax.microedition.gba.android.IException"

    return-object v1
.end method
