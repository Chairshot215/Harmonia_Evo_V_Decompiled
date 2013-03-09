.class public Lcom/htc/app/HtcUsageStats;
.super Ljava/lang/Object;
.source "HtcUsageStats.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcUsageStats"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctxt"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "HtcAppUsageStatsService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    .line 28
    iput-object p1, p0, Lcom/htc/app/HtcUsageStats;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-interface {v1}, Lcom/android/internal/app/IHtcAppUsageStatsService;->getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUsageStats"

    const-string v2, "Failed initializing usage stats service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllHtcIfAppUsageStats()[Lcom/android/internal/os/HtcIfAppUsageStats;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/app/HtcUsageStats;->getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public notePauseActivity(ILjava/lang/String;)V
    .locals 3
    .parameter "hashcode"
    .parameter "activityName"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IHtcAppUsageStatsService;->notePauseActivity(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUsageStats"

    const-string v2, "notePauseActivity error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "hashcode"
    .parameter "activityName"
    .parameter "packageName"
    .parameter "isActivityGroup"
    .parameter "cnt_tag"

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v6

    .line 64
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "HtcUsageStats"

    const-string v1, "noteResumeActivity_pkg error:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerAppLaunchObserver(Lcom/htc/app/AppLaunchObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual {p1}, Lcom/htc/app/AppLaunchObserver;->getHtcAppLaunchObserver()Lcom/android/internal/os/IHtcAppLaunchObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IHtcAppUsageStatsService;->registerAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUsageStats"

    const-string v2, "registerAppLaunchObserver error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterAppLaunchObserver(Lcom/htc/app/AppLaunchObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/HtcUsageStats;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual {p1}, Lcom/htc/app/AppLaunchObserver;->getHtcAppLaunchObserver()Lcom/android/internal/os/IHtcAppLaunchObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IHtcAppUsageStatsService;->unregisterAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcUsageStats"

    const-string v2, "registerAppLaunchObserver error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
