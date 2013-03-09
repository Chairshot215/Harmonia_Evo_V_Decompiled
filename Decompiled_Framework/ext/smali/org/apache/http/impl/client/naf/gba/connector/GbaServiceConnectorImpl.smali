.class Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;
.super Ljava/lang/Object;
.source "GbaServiceConnectorImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;


# static fields
.field private static final ATTEMPTS_NUM:I = 0x96

.field private static final ESTIMATED_TOTAL_TIME:I = 0x3a98

.field public static final GBA_SERVICE_CONNECTOR_CLASS_NAME:Ljava/lang/String; = "javax.microedition.gba.android.GbaServiceConnector"

.field public static final GBA_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "javax.microedition.gba.android.IGbaService"

.field public static final GBA_SERVICE_STUB_NAME:Ljava/lang/String; = "javax.microedition.gba.android.IGbaService.Stub"

.field private static final SLEEP_TIMEOUT_MS:I = 0x64


# instance fields
.field private final androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

.field private final gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "GbaServiceConnectorReflectionImpl(...)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "androidApplicationContext must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gbaServiceClassLoader must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    return-void
.end method

.method private connectBlocking()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "connectBlocking()#started"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v5}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->startService()V

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-static {v5}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListenerFactory;->newInstsance(Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v5, v3}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->bindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v6, "Something wrong with GBA service binding."

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    const/4 v4, 0x0

    const/4 v0, 0x1

    :cond_2
    :try_start_1
    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_3

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   to get IGbaService reference"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->sleepBetweenAttempts()V

    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getGbaServiceConnection()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    if-nez v4, :cond_4

    const/16 v5, 0x96

    if-lt v0, v5, :cond_2

    :cond_4
    if-eqz v4, :cond_7

    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_5

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "SUCCESSfully connected to GBA service"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_1 .. :try_end_1} :catch_3

    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_6

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "connectBlocking()#finished"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    :try_start_2
    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_8

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "FAILURE during connection to GBA service"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_8
    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    const-string v6, "FAILURE during connection to GBA service"

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_1
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getGbaServiceConnection()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x2

    if-lez v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "getGbaServiceConnection()#started"

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    invoke-interface/range {v36 .. v36}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;->getService()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    move-result-object v16

    if-eqz v16, :cond_2

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x4

    if-lez v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "getGbaServiceConnection()#finished   iGbaService="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v16

    :cond_2
    const-string v38, "android.os.Looper"

    invoke-static/range {v38 .. v38}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "looperClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v38, "getMainLooper"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "getMainLooperMethod"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mainLooper"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v38, "mQueue"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mQueueField"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v38, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "mQueue"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "messageQueueClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v26, :cond_16

    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string v38, "mMessages"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    const/16 v38, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    const/16 v31, 0x0

    if-eqz v33, :cond_3

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "messageClass"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const/16 v34, 0x0

    :goto_1
    if-eqz v33, :cond_14

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "  Message "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ": "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v34, v34, 0x1

    const-string v38, "getCallback"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_13

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v38

    const-string v39, "RunConnection"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "+++++callback.getClass().getCanonicalName()="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    const-string v38, "mName"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v38, "mService"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v28

    const/16 v38, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v38, "getClassName"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v38, "javax.microedition.gba.android.GbaServiceConnector"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10

    if-eqz v29, :cond_10

    const-string v38, "android.os.IBinder"

    invoke-static/range {v38 .. v38}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   iBinderClass="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-object/from16 v38, v0

    const-string v39, "javax.microedition.gba.android.IGbaService"

    invoke-interface/range {v38 .. v39}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   iGbaServiceClass="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v18

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   iGbaServiceClass_getClasses="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_8
    const/16 v20, 0x0

    move-object/from16 v3, v18

    array-length v0, v3

    move/from16 v21, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v14, v0, :cond_a

    aget-object v7, v3, v14

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   searching ... "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_9
    const-string v38, "javax.microedition.gba.android.IGbaService.Stub"

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_f

    move-object/from16 v20, v7

    :cond_a
    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   iGbaServiceStubClass="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_b
    const-string v38, "asInterface"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v15, v39, v40

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   asInterfaceDescriptorMethod="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_c
    const/16 v38, 0x0

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v29, v39, v40

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "   iGbaServiceReference="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_d
    new-instance v19, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v10, v1}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaServiceImpl;-><init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V

    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x4

    if-lez v38, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "getGbaServiceConnection()#finished   iGbaServiceFromQueue="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_e
    monitor-exit v26

    move-object/from16 v16, v19

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    :cond_10
    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mNameValue="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_11
    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "mServiceValue="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_12
    :goto_3
    const-string v38, "next"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v35

    const/16 v38, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    goto/16 :goto_1

    :cond_13
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "-----callback.getClass().getCanonicalName()="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v38

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v38
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_2 .. :try_end_2} :catch_8

    :catch_0
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :cond_14
    :try_start_3
    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x1

    if-lez v38, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "(Total messages: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ")"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_15
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    sget v38, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v38, v38, 0x4

    if-lez v38, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v38, v0

    const-string v39, "getGbaServiceConnection()#finished"

    invoke-interface/range {v38 .. v39}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_2
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_3
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_4
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_5
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_6
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_7
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38

    :catch_8
    move-exception v9

    new-instance v38, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v9}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v38
.end method

.method private sleepBetweenAttempts()V
    .locals 4

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "sleepBetweenAttempts()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "sleepBetweenAttempts()#finished"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
    .locals 4

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getConnectorState()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->RELEASED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    :cond_1
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectorState()#finished   gbaServiceConnectorState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "getIGbaServiceInstance()#started"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->connectBlocking()V

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIGbaServiceInstance()#finished   iGbaServiceInstance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation

    const/4 v4, 0x0

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "release()#started"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;->CONNECTED:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;

    if-ne v2, v3, :cond_1

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->androidApplicationContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->unbindService(Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaServiceConnectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/impl/client/naf/remote/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "release()#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/remote/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->iGbaServiceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorImpl;->gbaServiceConnectionImplInstanceHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v2
.end method
