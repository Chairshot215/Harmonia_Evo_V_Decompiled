.class public Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;
.super Ljava/lang/Object;
.source "FxIdleScreenClassLoader.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "FxIdleScreenClassLoader"


# instance fields
.field BASE_CLASS_NAME:Ljava/lang/String;

.field BASE_PACKAG_NAME:Ljava/lang/String;

.field mIdleScreenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.htc.idlescreen.base"

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->BASE_PACKAG_NAME:Ljava/lang/String;

    const-string v0, "com.htc.idlescreen.base.FxIdleScreen"

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->BASE_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method private getIdleScreenClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mIdleScreenClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->getPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->BASE_CLASS_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mIdleScreenClass:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mIdleScreenClass:Ljava/lang/Class;

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "FxIdleScreenClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIdleScreenClass class not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private getPluginContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mPluginContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->BASE_PACKAG_NAME:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mPluginContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->mPluginContext:Landroid/content/Context;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "FxIdleScreenClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPluginContext package not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public getIdleScreen(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;)Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;
    .locals 10

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->getPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->getIdleScreenClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-class v8, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-class v8, Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    aput-object v8, v4, v7

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object p2, v5, v7

    const/4 v7, 0x3

    aput-object p3, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string v7, "FxIdleScreenClassLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIdleScreen other exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_0
.end method
