.class Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;
.super Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;
.source "GbaServiceConnectorImprovedImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImproved;


# static fields
.field public static final MAX_RECONNECT_ATTEMPTS:I = 0x3


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;-><init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "GbaServiceConnectorImprovedImpl()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "getIGbaServiceInstance()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIGbaServiceInstance()#   numberOfCurrentAttempt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->isGbaServiceOnline()Z
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-super {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v2

    :goto_1
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIGbaServiceInstance()#finished   iGbaServiceInstance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->release()V

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    goto :goto_1
.end method

.method public isGbaServiceOnline()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "isGbaServiceOnline()#started"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    invoke-super {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v3

    if-eqz v3, :cond_5

    :try_start_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    long-to-int v6, v6

    rem-int/lit16 v4, v6, 0x2710

    add-int/lit8 v1, v4, 0x1

    invoke-interface {v3, v4}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;->checkIfServiceIsOnline(I)I

    move-result v5

    if-ne v1, v5, :cond_4

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   expectedResult == serviceResponse ===> GBA service is alive"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_3

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isGbaServiceOnline()#finished   gbaServiceOnline="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    return v2

    :cond_4
    :try_start_1
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   expectedResult != serviceResponse ===> something wrong with GBA service connectivity"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_2
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_5
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImprovedImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "   iGbaServiceInstance is null! A reconnection to GBA service is required!"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
