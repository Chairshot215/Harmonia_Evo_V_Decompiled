.class Lcom/htc/usage/DataUsageSummary$11;
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
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1284
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$3300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$1700(Lcom/htc/usage/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1285
    .local v0, isEmpty:Z
    :goto_0
    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$3400(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    return-void

    .end local v0           #isEmpty:Z
    :cond_0
    move v0, v1

    .line 1284
    goto :goto_0

    .line 1285
    .restart local v0       #isEmpty:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
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
    .line 1268
    new-instance v0, Lcom/htc/usage/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$000(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/htc/usage/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 1
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
    .line 1273
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$3300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;)V

    .line 1274
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary$11;->updateEmptyVisible()V

    .line 1275
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1265
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/usage/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 1279
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$11;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mAdapter:Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$3300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;)V

    .line 1280
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary$11;->updateEmptyVisible()V

    .line 1281
    return-void
.end method
