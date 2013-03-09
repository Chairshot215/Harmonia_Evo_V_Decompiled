.class Lcom/htc/usage/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    .line 1373
    const-string v0, "DataUsageSummary"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    #calls: Lcom/htc/usage/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$2400(Lcom/htc/usage/DataUsageSummary;)V

    .line 1375
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/usage/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/htc/usage/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$3800(Lcom/htc/usage/DataUsageSummary;J)V

    .line 1385
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/usage/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/htc/usage/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$3700(Lcom/htc/usage/DataUsageSummary;J)V

    .line 1380
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary$LimitEditorFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    .line 1395
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$13;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary$WarningEditorFragment;->show(Lcom/htc/usage/DataUsageSummary;)V

    .line 1390
    return-void
.end method
