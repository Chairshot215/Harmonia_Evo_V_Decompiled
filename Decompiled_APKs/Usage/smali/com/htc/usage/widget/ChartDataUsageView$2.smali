.class Lcom/htc/usage/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/htc/usage/widget/ChartDataUsageView;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/usage/widget/ChartDataUsageView$2;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/htc/usage/widget/ChartSweepView;Z)V
    .locals 1
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$2;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$300(Lcom/htc/usage/widget/ChartDataUsageView;)V

    .line 303
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$2;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$2;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 306
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 0
    .parameter "sweep"

    .prologue
    .line 311
    return-void
.end method
