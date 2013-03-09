.class public Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAppUsageStatsServiceAmsListener.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcAppUsageStats"


# instance fields
.field mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-direct {v0}, Lcom/htc/server/HtcAppUsageStatsService;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    goto :goto_0
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    :cond_0
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->setMayRedecideRootActivity(Z)V

    :cond_0
    return-void
.end method

.method getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 6

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    new-instance v3, Lcom/android/server/am/HtcWrapActivityRecord;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    iget-object v4, v4, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v5, v3, Lcom/android/server/am/HtcWrapActivityRecord;->task:Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-virtual {v4, v5}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    if-eq v1, v0, :cond_0

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v4, p1}, Lcom/htc/server/HtcAppUsageStatsService;->noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V

    goto :goto_0
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget v1, p1, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lcom/htc/server/HtcAppUsageStatsService;->noteAppDied(I)V

    :cond_0
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 7

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_2

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4, v2}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v5, :cond_1

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v5, v4}, Lcom/htc/server/HtcAppUsageStatsService;->notePackageAdded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHibernate()V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0, p2}, Lcom/htc/server/HtcAppUsageStatsService;->publish(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onShutdown()V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v0}, Lcom/htc/server/HtcAppUsageStatsService;->shutdown()V

    :cond_0
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    if-eqz v2, :cond_0

    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;->mHtcAppUsageStatsService:Lcom/htc/server/HtcAppUsageStatsService;

    iget-object v3, p2, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3, p2}, Lcom/htc/server/HtcAppUsageStatsService;->changeRootActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/HtcWrapTaskRecord;)V

    :cond_0
    return-void
.end method
