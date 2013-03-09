.class Lcom/htc/usage/DataUsageSummary$10;
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
        "Lcom/htc/usage/net/ChartData;",
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
    .line 1234
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/htc/usage/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1237
    new-instance v0, Lcom/htc/usage/net/ChartDataLoader;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-virtual {v1}, Lcom/htc/usage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$000(Lcom/htc/usage/DataUsageSummary;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/htc/usage/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/htc/usage/net/ChartData;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/htc/usage/net/ChartData;",
            ">;",
            "Lcom/htc/usage/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/htc/usage/net/ChartData;>;"
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #setter for: Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;
    invoke-static {v0, p2}, Lcom/htc/usage/DataUsageSummary;->access$3102(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/net/ChartData;)Lcom/htc/usage/net/ChartData;

    .line 1243
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$3100(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/usage/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1244
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$3100(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/usage/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1247
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1248
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$3200(Lcom/htc/usage/DataUsageSummary;)V

    .line 1251
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$3100(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/usage/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$500(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1254
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1234
    check-cast p2, Lcom/htc/usage/net/ChartData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/usage/DataUsageSummary$10;->onLoadFinished(Landroid/content/Loader;Lcom/htc/usage/net/ChartData;)V

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
            "Lcom/htc/usage/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/htc/usage/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1258
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #setter for: Lcom/htc/usage/DataUsageSummary;->mChartData:Lcom/htc/usage/net/ChartData;
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$3102(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/net/ChartData;)Lcom/htc/usage/net/ChartData;

    .line 1259
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1260
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$10;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1261
    return-void
.end method
