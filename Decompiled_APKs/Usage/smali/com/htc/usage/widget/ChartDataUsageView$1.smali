.class Lcom/htc/usage/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 92
    iput-object p1, p0, Lcom/htc/usage/widget/ChartDataUsageView$1;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/usage/widget/ChartSweepView;

    .line 96
    .local v0, sweep:Lcom/htc/usage/widget/ChartSweepView;
    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView$1;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->access$000(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 97
    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView$1;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/htc/usage/widget/ChartDataUsageView;->access$100(Lcom/htc/usage/widget/ChartDataUsageView;)V

    .line 100
    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView$1;->this$0:Lcom/htc/usage/widget/ChartDataUsageView;

    const/4 v2, 0x1

    #calls: Lcom/htc/usage/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/htc/usage/widget/ChartDataUsageView;->access$200(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;Z)V

    .line 101
    return-void
.end method
