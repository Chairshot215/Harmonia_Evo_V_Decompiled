.class Lcom/htc/usage/widget/ChartDataUsageView$3;
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
    .line 325
    iput-object p1, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/htc/usage/widget/ChartSweepView;Z)V
    .locals 2
    .parameter "sweep"
    .parameter "sweepDone"

    .prologue
    .line 328
    if-eqz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/htc/usage/widget/ChartDataUsageView;->access$500(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 330
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$100(Lcom/htc/usage/widget/ChartDataUsageView;)V

    .line 332
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$600(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$700(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->access$200(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 1
    .parameter "sweep"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$600(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$700(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView$3;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #getter for: Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
