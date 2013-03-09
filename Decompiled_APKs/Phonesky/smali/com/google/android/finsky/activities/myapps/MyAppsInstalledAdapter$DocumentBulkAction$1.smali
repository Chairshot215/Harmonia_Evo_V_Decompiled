.class final enum Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$1;
.super Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;-><init>(Ljava/lang/String;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 231
    const v0, 0x7f070196

    return v0
.end method

.method public isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .locals 4
    .parameter "downloadsAdapter"

    .prologue
    const/4 v2, 0x1

    .line 244
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$900(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v0

    .line 245
    .local v0, runningDownloads:I
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 246
    .local v1, updatesCount:I
    if-nez v0, :cond_0

    if-le v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
    .locals 1
    .parameter "downloadsAdapter"

    .prologue
    .line 251
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/receivers/Installer;->isBusy()Z

    move-result v0

    return v0
.end method

.method public run(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)V
    .locals 13
    .parameter "ctx"
    .parameter "downloadsAdapter"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 199
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-static {p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-result-object v6

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;
    invoke-static {v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    .local v1, documents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    const-string v7, "bulk_update"

    invoke-interface {v6, v1, v7}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;)V

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "updateAll"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v5, 0x3f

    .line 207
    .local v5, separator:C
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 208
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    if-nez v0, :cond_0

    .line 209
    const-string v6, "Unexpected null document"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, packageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    const-string v6, "Empty package name for doc %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    const/16 v5, 0x26

    .line 219
    const-string v6, "doc[]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    const-string v7, "updateAll"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "cidi"

    aput-object v9, v8, v10

    aput-object v3, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v12, v12, v7}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
