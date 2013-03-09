.class Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;
.super Ljava/lang/Object;
.source "GbaServicePathClassLoaderImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# static fields
.field public static final GBA_SERVICE_APK_PATH:Ljava/lang/String; = "/system/app/gba-service.apk"

.field public static final GBA_SERVICE_LIB_JAR_PATH:Ljava/lang/String; = "/system/framework/gba-service-lib.jar"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "GbaServicePathClassLoaderImpl()#"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkGbaServiceApkExists(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGbaServiceApkExists()#finished   path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return v1
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClassLoader()#started   pathClassLoader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->getGbaServiceApkPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dalvik.system.PathClassLoader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    if-eqz v3, :cond_4

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget v4, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClassLoader()#finished   pathClassLoader="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-object v1

    :cond_3
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Can\'t create new instance for PathClassLoader."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Can\'t find constructor for PathClassLoader."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Can\'t load class dalvik.system.PathClassLoader."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getGbaServiceApkPath()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "getGbaServiceApkPath()#started"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProviderKeeper;->instance()Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContextProvider;->getContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;->getPackageManager()Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "javax.microedition.gba.android"

    const/16 v7, 0x80

    invoke-interface {v5, v6, v7}, Lorg/apache/http/impl/client/naf/remote/android/AndroidPackageManager;->getApplicationInfo(Ljava/lang/String;I)Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/impl/client/naf/remote/android/AndroidApplicationInfo;->getSourceDir()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "The path to APK file of GBA service was auto detetected."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    const-string v4, "/system/app/gba-service.apk"

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "The path to APK file of GBA service wasn\'t auto detetected. Default will be used."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    if-nez v4, :cond_2

    new-instance v6, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v7, "gbaServiceApkPath must be not null!"

    invoke-direct {v6, v7}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v3

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROBLEM with PATH DETECTION to GBA service APK :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->checkGbaServiceApkExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v6, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v7, "Gba service APK doesn\'t exist!"

    invoke-direct {v6, v7}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget-object v6, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGbaServiceApkPath()#finished   gbaServiceApkPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-object v4
.end method

.method public getPlatformClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation

    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadClass()#started   className="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "className must be not null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v5, "javax.microedition.gba."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v6, "className must start from <javax.microedition.gba.>!"

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->pathClassLoaderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_3
    :goto_0
    if-nez v4, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    const-string v6, "Something wrong with classloader creation!"

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    :catch_0
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v2

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> hasn\'t been found with standard classloader. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Dynamic loading will be used."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "loadClass"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_5
    sget v5, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_6

    iget-object v5, p0, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServicePathClassLoaderImpl;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadClass()#finished   resultObj="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    return-object v4

    :catch_2
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_4
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_5
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_6
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_7
    move-exception v2

    new-instance v5, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
