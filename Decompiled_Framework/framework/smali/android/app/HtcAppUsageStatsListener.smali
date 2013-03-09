.class public Landroid/app/HtcAppUsageStatsListener;
.super Lcom/htc/callbacks/ActivityThreadCallbacks;
.source "HtcAppUsageStatsListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAppUsageStatsListener"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/htc/callbacks/ActivityThreadCallbacks;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    const-string v1, "HtcAppUsageStatsService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v1

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_0
.end method

.method private getHtcAppUsageStatsService()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "1.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IHtcAppUsageStatsService;

    move-result-object v2

    iput-object v2, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public afterCallActivityOnPause(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/HtcAppUsageStatsListener;->getHtcAppUsageStatsService()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IHtcAppUsageStatsService;->notePauseActivity(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "HtcAppUsageStatsListener"

    const-string v3, "afterCallActivityOnPause"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public afterPerformResume(Landroid/app/Activity;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Landroid/app/HtcAppUsageStatsListener;->getHtcAppUsageStatsService()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    const/4 v11, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_1

    iget-object v11, v12, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_0
    if-ge v13, v14, :cond_0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    const-string v2, "fragmentlist"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/app/ActivityGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isChild()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/HtcAppUsageStatsListener;->mBundle:Landroid/os/Bundle;

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    :cond_1
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/HtcAppUsageStatsListener;->mHtcAppUsageStatsService:Lcom/android/internal/app/IHtcAppUsageStatsService;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/app/ActivityGroup;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->isChild()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IHtcAppUsageStatsService;->noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v1, "HtcAppUsageStatsListener"

    const-string v2, "afterPerformResume"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
