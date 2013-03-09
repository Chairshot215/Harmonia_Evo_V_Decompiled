.class Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;
.super Ljava/lang/Object;
.source "AndroidContextProviderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;


# instance fields
.field private final androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getApplicationContextFromActivityThread()#started"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "activityThreadClass"

    invoke-static {v6, v7, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "getApplication"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getApplicationMethod"

    invoke-static {v6, v7, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "currentApplication"

    invoke-static {v6, v7, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "android.app.Application"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "applicationClass"

    invoke-static {v6, v7, v1}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "getApplicationContext"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getApplicationContextMethod"

    invoke-static {v6, v7, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    :goto_0
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationContextFromActivityThread()#finished   applicationContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v2

    :cond_3
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "currentActivityThread is null!"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 5

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContext()#started   cachedApplicationContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaCurrentActivityThreadFromMainUiThread()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaActivityThreadFromNotMainUiThread()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainContextViaCurrentActivityThreadFromLoadedApk()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->obtainSystemContextViaSystemMainActivityThread()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContext()#finished   cachedApplicationContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->androidContextHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    return-object v2

    :catch_0
    move-exception v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!   It is impossible to obtaing Context via current ActivityThread from main UI thread.   message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!   It is impossible to obtaing Context via ActivityThread from NOT main UI thread.   message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!   It is impossible to obtaing Context via ActivityThread from parent Acitivity.   message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!   It is impossible to obtaing system Context via main system ActivityThread.   message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method obtainContextViaActivityThreadFromNotMainUiThread()Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x2

    if-lez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "obtainContextViaActivityThreadFromNotMainUiThread()#started"

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x0

    const-string v31, "android.app.ActivityThread"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "activityThreadClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "android.os.Looper"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "looperClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v12}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "myLooper"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x1

    if-lez v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "   myLooperMethod="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x1

    if-lez v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "   myLooperInstance="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    const-string v31, "getMainLooper"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "getMainLooperMethod"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "mainLooperInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v14}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "getThread"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "getThreadMethod"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v6}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v6, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "mainThreadInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "sThreadLocal"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "sThreadLocalField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "sThreadLocalInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "threadClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "localValues"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "localValuesField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v11}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "values"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "valuesClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "table"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "tableField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v25, v31

    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "table"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "threadLocalClass"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "hash"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "hashField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v8}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "hashInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v9}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x1

    if-lez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "   hash="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_3
    const-string v31, "mask"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "maskField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "maskInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x1

    if-lez v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "   mask="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    and-int v10, v7, v16

    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x1

    if-lez v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "   index="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_5
    const-string v31, "reference"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "referenceField"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    const-string v32, "referenceInstance"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    aget-object v31, v25, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    add-int/lit8 v31, v10, 0x1

    aget-object v13, v25, v31

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_6
    sget v31, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v31, v31, 0x4

    if-lez v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "obtainContextViaActivityThreadFromNotMainUiThread()#finished   applicationContext="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    return-object v4
.end method

.method obtainContextViaCurrentActivityThreadFromLoadedApk()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    sget v28, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v28, v28, 0x2

    if-lez v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "obtainContextViaCurrentActivityThreadFromLoadedApk()#started"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    const-string v28, "android.app.ActivityThread"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "activityThreadClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v28, "currentActivityThread"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "currentActivityThreadMethod"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   currentActivityThread="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v7, v19

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    aget-object v10, v7, v23

    const-string v28, "android.app.ActivityThread.AppBindData"

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    move-object v5, v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "appBindDataClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v17

    move-object/from16 v7, v17

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    aget-object v22, v7, v23

    const-string v28, "mBoundApplication"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    move-object/from16 v9, v22

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "boundApplicationField"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v9}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   boundApplication="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    const/16 v25, 0x0

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v7, v18

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    aget-object v22, v7, v23

    const-string v28, "info"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v25, v22

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "infoField"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   info="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    const-string v28, "android.app.ContextImpl"

    invoke-static/range {v28 .. v28}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "ContextImplClass"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v20

    move-object/from16 v7, v20

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    aget-object v11, v7, v23

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_a

    move-object v13, v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "contextImplConstructor"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "   contextImpl="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v21

    move-object/from16 v7, v21

    array-length v0, v7

    move/from16 v26, v0

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-object v27, v7, v23

    const-string v28, "init"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    move-object/from16 v14, v27

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "contextImplInitMethod"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v14}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v24, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-object v30, v28, v29

    const/16 v29, 0x2

    aput-object v15, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v14, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    const-string v29, "   contextImpl init complete"

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object v6, v12

    sget v28, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v28, v28, 0x4

    if-lez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "obtainContextViaCurrentActivityThreadFromParentActivity()#finished   applicationContext="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    return-object v6

    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4
.end method

.method obtainContextViaCurrentActivityThreadFromMainUiThread()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v6, 0x0

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "obtainContextViaCurrentActivityThreadFromMainUiThread()#started"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    const-string v4, "android.app.ActivityThread"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "activityThreadClass"

    invoke-static {v4, v5, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "currentActivityThread"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "currentActivityThreadMethod"

    invoke-static {v4, v5, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   currentActivityThread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->getApplicationContextFromActivityThread(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "obtainContextViaCurrentActivityThreadFromMainUiThread()#finished   applicationContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method obtainSystemContextViaSystemMainActivityThread()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v8, 0x0

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "obtainSystemContextViaSystemMainActivityThread()#started"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "activityThreadClass"

    invoke-static {v6, v7, v0}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "systemMain"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainMethod"

    invoke-static {v6, v7, v5}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainActivityThread"

    invoke-static {v6, v7, v3}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "getSystemContext"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getSystemContextMethod"

    invoke-static {v6, v7, v2}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "systemMainContext"

    invoke-static {v6, v7, v4}, Lorg/apache/http/impl/client/naf/util/LogUtil;->validatePrint(Lorg/apache/commons/logging/Log;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v4

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_1

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "obtainSystemContextViaSystemMainActivityThread()#finished   applicationContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
