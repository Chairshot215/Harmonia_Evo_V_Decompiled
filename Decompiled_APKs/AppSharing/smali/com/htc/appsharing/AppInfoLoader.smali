.class public Lcom/htc/appsharing/AppInfoLoader;
.super Ljava/lang/Thread;
.source "AppInfoLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppSharing.AppInfoLoader"

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mQuit:Z

.field private mWhatLoaded:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/appsharing/AppInfoLoader;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "whatLoaded"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/appsharing/AppInfoLoader;->mQuit:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/appsharing/AppInfoLoader;->mLock:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/htc/appsharing/AppInfoLoader;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/htc/appsharing/AppInfoLoader;->mContextHandler:Landroid/os/Handler;

    .line 33
    iput p3, p0, Lcom/htc/appsharing/AppInfoLoader;->mWhatLoaded:I

    .line 34
    return-void
.end method

.method private isQuitLoading()Z
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/htc/appsharing/AppInfoLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/appsharing/AppInfoLoader;->mQuit:Z

    monitor-exit v1

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadAppInfo()V
    .locals 14

    .prologue
    .line 57
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v12, "+++loadAppInfo()"

    invoke-static {v11, v12}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v9, 0x0

    .line 60
    .local v9, pkgMgr:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 61
    .local v7, lstAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v6, loadedAppInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/appsharing/AppInfo;>;"
    sget-object v12, Lcom/htc/appsharing/AppInfoLoader;->sLock:Ljava/lang/Object;

    monitor-enter v12

    .line 65
    :try_start_0
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v13, "+++load required info"

    invoke-static {v11, v13}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/htc/appsharing/AppInfoLoader;->isQuitLoading()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 69
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v13, "quit loading 1"

    invoke-static {v11, v13}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    monitor-exit v12

    .line 123
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v11, p0, Lcom/htc/appsharing/AppInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 74
    const/16 v11, 0x80

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 75
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v13, "---load required info"

    invoke-static {v11, v13}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-direct {p0}, Lcom/htc/appsharing/AppInfoLoader;->isQuitLoading()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 80
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v12, "quit loading 2"

    invoke-static {v11, v12}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 85
    .local v1, appInfo:Lcom/htc/appsharing/AppInfo;
    const/4 v2, 0x0

    .line 86
    .local v2, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 87
    .local v3, applicationMetaData:Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 88
    .local v4, bFilterOut:Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 89
    .local v10, sizeAppInfo:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_5

    .line 91
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 92
    .restart local v2       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 93
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_2

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_2

    invoke-static {v2}, Lcom/htc/wrap/android/content/pm/HtcWrapApplicationInfo;->isHtcApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v3, :cond_4

    const-string v11, "com.htc.appsharing.list.exclude"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 101
    :goto_2
    if-nez v4, :cond_3

    .line 103
    invoke-static {v2, v9}, Lcom/htc/appsharing/AppInfoManager;->createAppInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Lcom/htc/appsharing/AppInfo;

    move-result-object v1

    .line 104
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 109
    :cond_5
    sget-object v11, Lcom/htc/appsharing/AppInfoManager;->sAppInfoCpr:Ljava/util/Comparator;

    invoke-static {v6, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    invoke-direct {p0}, Lcom/htc/appsharing/AppInfoLoader;->isQuitLoading()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 113
    const-string v11, "AppSharing.AppInfoLoader"

    const-string v12, "quit loading 3"

    invoke-static {v11, v12}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_6
    iget-object v11, p0, Lcom/htc/appsharing/AppInfoLoader;->mContextHandler:Landroid/os/Handler;

    iget v12, p0, Lcom/htc/appsharing/AppInfoLoader;->mWhatLoaded:I

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 119
    .local v8, msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v11, p0, Lcom/htc/appsharing/AppInfoLoader;->mContextHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    const-string v11, "AppSharing.AppInfoLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "---loadAppInfo(), total "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " apps"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/appsharing/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/appsharing/AppInfoLoader;->loadAppInfo()V

    .line 40
    return-void
.end method

.method public startLoad()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/appsharing/AppInfoLoader;->start()V

    .line 45
    return-void
.end method

.method public stopLoad()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/htc/appsharing/AppInfoLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/appsharing/AppInfoLoader;->mQuit:Z

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
