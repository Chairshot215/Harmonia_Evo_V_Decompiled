.class Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;
.super Ljava/lang/Object;
.source "GbaAuthProviderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_BYPASS_CACHE:Z = false

.field private static final DEFAULT_SECONDS_FOR_ATTEMPT:I = 0x3c


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;",
            ">;"
        }
    .end annotation
.end field

.field private final gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

.field private final gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "GbaAuthProviderReflectionImpl(...)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getAndroidContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of Android context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaServiceClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of GBA class loader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaServiceConnector()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It is impossible to use GBA service without an instance of GBA service connector."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private doGbaAuthUnsafe(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;,
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "doGbaAuthUnsafe()#started"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v3}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolderFactory;->newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl$1;->$SwitchMap$org$apache$http$impl$client$naf$gba$GbaType:[I

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "Unknown GBA type! It is impossible to get auth data."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v4, "GBA is not supported. It is impossible to get auth data."

    invoke-direct {v3, v4}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaMe(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->extractException(Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)V

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "doGbaAuthUnsafe()#finished"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :pswitch_2
    invoke-virtual {p0, p2, p3, v1, v2}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaU(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enableResourceLeakIndication()V
    .locals 3

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "enableResourceLeakIndication()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was an attempt to connect to GBA service, a resource leak is possible, the method release() must be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "enableResourceLeakIndication()#finished"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method doGbaMe(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    const/4 v10, 0x1

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "doGbaMe()#started"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    const/16 v4, 0x3c

    move-object v0, p4

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->performGbaMeAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "Obtained GBA authentication parameters are empty."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;->getBTid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;->getKsNaf()[B

    move-result-object v8

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v10, :cond_2

    if-eqz v8, :cond_2

    array-length v0, v8

    if-ge v0, v10, :cond_3

    :cond_2
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "B-TID or keys were missed."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v7, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    invoke-direct {v7, v6, v8}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;-><init>(Ljava/lang/String;[B)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "doGbaMe()#finished"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    return-object v7
.end method

.method doGbaU(Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    const/4 v10, 0x1

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "doGbaU()#started"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/apache/http/impl/client/naf/protocol/ProtocolId;->getIdContent()[B

    move-result-object v3

    const/16 v4, 0x3c

    move-object v0, p4

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->performGbaUAuthentication(ZLjava/lang/String;[BILorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "Obtained GBA authentication parameters are empty."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;->getBTid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaUUaSessionParams;->getKsExtNaf()[B

    move-result-object v8

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v10, :cond_2

    if-eqz v8, :cond_2

    array-length v0, v8

    if-ge v0, v10, :cond_3

    :cond_2
    new-instance v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    const-string v1, "B-TID or keys were missed."

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v7, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;

    invoke-direct {v7, v6, v8}, Lorg/apache/http/impl/client/naf/gba/GbaAuthData;-><init>(Ljava/lang/String;[B)V

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "doGbaU()#finished"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    return-object v7
.end method

.method extractException(Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;,
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "extractException()#started"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIExceptionHolder;->getException()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;->getErrorStackTrace()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------ iException.getErrorMsg() === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------ iException.getErrorStackTrace() === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    new-instance v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    sget v3, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "extractException()#finished"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "A resource leak was detected"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getAndroidContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 2

    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    return-object v0
.end method

.method getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "getGbaAuthManagerInstance()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;->getGbaAuthManager()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaAuthManagerHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGbaAuthManagerInstance()#finished   iGbaAuthManager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method getGbaServiceClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaClassLoaderKeeper;->instance()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getGbaServiceConnector()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v1, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorSynchronizedSingleton;->instance(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "getSupportedGbaType()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->enableResourceLeakIndication()V

    sget-object v2, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->getGbaAuthManagerInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;->isGbaSupported()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lorg/apache/http/impl/client/naf/gba/GbaType;->parse(I)Lorg/apache/http/impl/client/naf/gba/GbaType;

    move-result-object v2

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   resGbaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSupportedGbaType()#finished   resGbaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    new-instance v4, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public promiseToReleaseInNearTime()V
    .locals 0

    return-void
.end method

.method public provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provideAuth()#started   gbaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   nafFqdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   nafSecurityProtocol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->enableResourceLeakIndication()V

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->doGbaAuthUnsafe(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->releaseForced()V

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provideAuth()#completed   gbaAuthData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    instance-of v4, v1, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    if-eqz v4, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;

    move-object v2, v0

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->releaseForced()V

    throw v4

    :cond_1
    :try_start_2
    new-instance v4, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public releaseForced()V
    .locals 5

    const/4 v4, 0x0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release()#started   gbaServiceConnector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "release()#finished"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/GbaAuthProviderImpl;->resourceLeakIndicationExceptionHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v1
.end method
