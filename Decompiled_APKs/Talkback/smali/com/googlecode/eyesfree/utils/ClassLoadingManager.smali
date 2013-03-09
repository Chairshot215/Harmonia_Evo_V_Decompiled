.class public Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
.super Ljava/lang/Object;
.source "ClassLoadingManager.java"

# interfaces
.implements Lcom/googlecode/eyesfree/utils/InfrastructureStateListener;


# static fields
.field private static sInstance:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;


# instance fields
.field private final mClassNameToOutsidePackageClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mInstalledPackagesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotFoundClassesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/googlecode/eyesfree/utils/BasePackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mClassNameToOutsidePackageClassMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mNotFoundClassesMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    .line 221
    new-instance v0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;

    invoke-direct {v0, p0}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager$1;-><init>(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;)V

    iput-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mPackageMonitor:Lcom/googlecode/eyesfree/utils/BasePackageMonitor;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->addInstalledPackageToCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/googlecode/eyesfree/utils/ClassLoadingManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->removeInstalledPackageFromCache(Ljava/lang/String;)V

    return-void
.end method

.method private addInstalledPackageToCache(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mNotFoundClassesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v1

    .line 104
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private buildInstalledPackagesCache(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 90
    .local v0, installedPackage:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->addInstalledPackageToCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearInstalledPackagesCache()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 121
    monitor-exit v1

    .line 124
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->sInstance:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    invoke-direct {v0}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;-><init>()V

    sput-object v0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->sInstance:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->sInstance:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    return-object v0
.end method

.method private removeInstalledPackageFromCache(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 112
    monitor-exit v1

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;
    .locals 14
    .parameter "context"
    .parameter "className"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 143
    const/4 v10, 0x3

    const-string v11, "Missing class name. Failed to load class."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v11, v12}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const/4 v2, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v2

    .line 148
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    const/16 v10, 0x2e

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    .line 151
    .local v5, lastDotIndex:I
    if-gez v5, :cond_2

    .line 152
    const/4 v10, 0x3

    const-string v11, "Missing package name. Failed to load class: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 153
    aput-object p2, v12, v13

    .line 152
    invoke-static {p0, v10, v11, v12}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v10, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p3

    .line 160
    .end local v5           #lastDotIndex:I
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, classNameStr:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    .local v9, packageNameStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 165
    .local v6, notFoundClassesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mInstalledPackagesSet:Ljava/util/HashSet;

    monitor-enter v11

    .line 166
    :try_start_0
    iget-object v10, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mNotFoundClassesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/HashSet;

    move-object v6, v0

    .line 167
    if-eqz v6, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 168
    monitor-exit v11

    const/4 v2, 0x0

    goto :goto_0

    .line 165
    :cond_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 175
    :catch_0
    move-exception v10

    .line 180
    iget-object v10, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mClassNameToOutsidePackageClassMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 181
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v2, :cond_0

    .line 186
    if-nez p1, :cond_5

    .line 187
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    :cond_5
    const/4 v4, 0x3

    .line 193
    .local v4, flags:I
    const/4 v10, 0x3

    :try_start_3
    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 194
    .local v8, packageContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 196
    .local v7, outsideClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mClassNameToOutsidePackageClassMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 198
    if-eqz v7, :cond_6

    move-object v2, v7

    .line 199
    goto :goto_0

    .line 201
    .end local v7           #outsideClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #packageContext:Landroid/content/Context;
    :catch_1
    move-exception v3

    .line 202
    .local v3, e:Ljava/lang/Exception;
    const/4 v10, 0x6

    const-string v11, "Error encountered. Failed to load outside class: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 203
    aput-object v1, v12, v13

    .line 202
    invoke-static {p0, v10, v11, v12}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    if-nez v6, :cond_7

    .line 207
    new-instance v6, Ljava/util/HashSet;

    .end local v6           #notFoundClassesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 208
    .restart local v6       #notFoundClassesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mNotFoundClassesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_7
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    const/4 v10, 0x3

    const-string v11, "Failed to load class: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v10, v11, v12}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public onInfrastructureStateChange(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isInitialized"

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->buildInstalledPackagesCache(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mPackageMonitor:Lcom/googlecode/eyesfree/utils/BasePackageMonitor;

    invoke-virtual {v0, p1}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->register(Landroid/content/Context;)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->clearInstalledPackagesCache()V

    .line 78
    iget-object v0, p0, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->mPackageMonitor:Lcom/googlecode/eyesfree/utils/BasePackageMonitor;

    invoke-virtual {v0}, Lcom/googlecode/eyesfree/utils/BasePackageMonitor;->unregister()V

    goto :goto_0
.end method
