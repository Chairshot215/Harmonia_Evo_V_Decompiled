.class Lcom/htc/usage/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    const-string v0, "AllUidLoaderCallbacks"

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary$12;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v0, Lcom/htc/usage/net/AllAppLoader;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$000(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/htc/usage/net/AllAppLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 13
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1299
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    const-string v10, "AllUidLoaderCallbacks"

    const-string v11, "onLoadFinished"

    invoke-static {v10, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1301
    .local v0, allAppItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/usage/DataUsageSummary$AppUsageItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1303
    new-instance v8, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    const/16 v10, 0x3e8

    invoke-direct {v8, v10}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1304
    .local v8, systemItem:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1306
    .local v6, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/usage/DataUsageSummary$AppUsageItem;>;"
    const/4 v2, 0x0

    .line 1307
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v7

    .line 1308
    .local v7, size:I
    :goto_0
    const-string v10, "AllUidLoaderCallbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Applications size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_6

    .line 1310
    invoke-virtual {p2, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 1311
    iget v9, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1312
    .local v9, uid:I
    const/16 v10, 0x2710

    if-lt v9, v10, :cond_4

    const v10, 0x1869f

    if-gt v9, v10, :cond_4

    const/4 v4, 0x1

    .line 1314
    .local v4, isApp:Z
    :goto_2
    if-nez v4, :cond_0

    const/4 v10, -0x4

    if-eq v9, v10, :cond_0

    const/4 v10, -0x5

    if-ne v9, v10, :cond_5

    .line 1315
    :cond_0
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .line 1316
    .local v5, item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    if-nez v5, :cond_1

    .line 1317
    new-instance v5, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .end local v5           #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    invoke-direct {v5, v9}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1318
    .restart local v5       #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    invoke-virtual {v6, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1319
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_1
    iget-object v10, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v10}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->isBandwidthControlEnabled()Z
    invoke-static {v10}, Lcom/htc/usage/DataUsageSummary;->access$3500(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1324
    :try_start_0
    iget-object v10, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v10}, Lcom/htc/usage/DataUsageSummary;->access$3600(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkPolicyManager;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 1325
    const-string v10, "AllUidLoaderCallbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cancel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " restrict background"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v10, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;
    invoke-static {v10}, Lcom/htc/usage/DataUsageSummary;->access$3600(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkPolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v9, v11}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    .end local v5           #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1307
    .end local v3           #i:I
    .end local v4           #isApp:Z
    .end local v7           #size:I
    .end local v9           #uid:I
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1312
    .restart local v3       #i:I
    .restart local v7       #size:I
    .restart local v9       #uid:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1328
    .restart local v4       #isApp:Z
    .restart local v5       #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    :catch_0
    move-exception v1

    .line 1330
    .local v1, e:Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "problem reading network policy"

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1336
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v5           #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    :cond_5
    invoke-virtual {v8, v9}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->addUid(I)V

    .line 1337
    iget-object v10, p0, Lcom/htc/usage/DataUsageSummary$12;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v10}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1338
    const-string v10, "AllUidLoaderCallbacks"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "System uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "is valid for policy."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1342
    .end local v4           #isApp:Z
    .end local v9           #uid:I
    :cond_6
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1290
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/usage/DataUsageSummary$12;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1346
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    return-void
.end method
