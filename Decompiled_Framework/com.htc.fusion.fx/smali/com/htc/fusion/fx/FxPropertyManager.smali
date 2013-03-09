.class public Lcom/htc/fusion/fx/FxPropertyManager;
.super Ljava/lang/Object;
.source "FxPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;
    }
.end annotation


# static fields
.field public static final DISABLE_RENDER_ON_DEMAND:Ljava/lang/String; = "DisableRenderOD"

.field public static final ENABLE_MASKS:Ljava/lang/String; = "EnableMasks"

.field public static final ENABLE_PRETILE_DYNAMIC_IMAGES:Ljava/lang/String; = "PTileDynImg"

.field public static final ENABLE_PRETILE_GLYPHS:Ljava/lang/String; = "PTileGlyphs"

.field public static final ENABLE_RUNTIME_MASKING:Ljava/lang/String; = "RuntimeMask"

.field public static final ENABLE_UNLOCK_FRAMERATE:Ljava/lang/String; = "UnlockFPS"

.field public static final OVERRIDE_PIXEL_FORMAT:Ljava/lang/String; = "ForceFormat"

.field public static final STATIC_VBO_CUTOFF:Ljava/lang/String; = "StaticVBO"

.field private static sInstance:Lcom/htc/fusion/fx/FxPropertyManager;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mFileObservers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mlock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/fusion/fx/FxPropertyManager;

    invoke-direct {v0}, Lcom/htc/fusion/fx/FxPropertyManager;-><init>()V

    sput-object v0, Lcom/htc/fusion/fx/FxPropertyManager;->sInstance:Lcom/htc/fusion/fx/FxPropertyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mlock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mApplicationContext:Landroid/content/Context;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/htc/fusion/fx/FxPropertyManager;->firePropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native firePropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/htc/fusion/fx/FxPropertyManager;->getInstance()Lcom/htc/fusion/fx/FxPropertyManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/htc/fusion/fx/FxPropertyManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected static getContents(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v3

    const-string v5, "FxPropertyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static getContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/htc/fusion/fx/FxPropertyManager;->getContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "FxPropertyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    iget-object v1, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mlock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mApplicationContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getInstance()Lcom/htc/fusion/fx/FxPropertyManager;
    .locals 1

    sget-object v0, Lcom/htc/fusion/fx/FxPropertyManager;->sInstance:Lcom/htc/fusion/fx/FxPropertyManager;

    return-object v0
.end method

.method protected static getLocalContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/htc/fusion/fx/FxPropertyManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fusion/fx/FxPropertyManager;->getContents(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v3, "FxPropertyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerListener(Ljava/lang/String;Landroid/os/FileObserver;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mlock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FxPropertyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An observer is alraedy watching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "FxPropertyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static registerListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/htc/fusion/fx/FxPropertyManager;->getInstance()Lcom/htc/fusion/fx/FxPropertyManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;

    const/16 v3, 0x188

    invoke-direct {v2, p0, p1, v3}, Lcom/htc/fusion/fx/FxPropertyManager$NativeFileObserver;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/htc/fusion/fx/FxPropertyManager;->registerListener(Ljava/lang/String;Landroid/os/FileObserver;)V

    return-void
.end method

.method public static native registerPropertyCallback(Ljava/lang/String;Lcom/htc/fusion/fx/FxPropertyCallback;)V
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/htc/fusion/fx/FxPropertyManager;->getInstance()Lcom/htc/fusion/fx/FxPropertyManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/FxPropertyManager;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mlock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mApplicationContext:Landroid/content/Context;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mApplicationContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    const-string v0, "FxPropertyManager"

    const-string v2, "setApplicationContext already called and the applicationContext are different!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static unregisterListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/htc/fusion/fx/FxPropertyManager;->getInstance()Lcom/htc/fusion/fx/FxPropertyManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/fusion/fx/FxPropertyManager;->unregisterListenerInternal(Ljava/lang/String;)V

    return-void
.end method

.method private unregisterListenerInternal(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mlock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FxPropertyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find observer watching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "FxPropertyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop observing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxPropertyManager;->mFileObservers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
