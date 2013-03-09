.class Lcom/htc/usage/DataUsageSummary$3;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 499
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 502
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$500(Lcom/htc/usage/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-static {v2}, Lcom/htc/usage/DataUsageSummary;->access$400(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 505
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$700(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/htc/usage/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/htc/usage/DataUsageSummary;->access$600()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 506
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$800(Lcom/htc/usage/DataUsageSummary;)Landroid/view/ViewGroup;

    move-result-object v1

    #calls: Lcom/htc/usage/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/htc/usage/DataUsageSummary;->access$600()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 508
    #calls: Lcom/htc/usage/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;
    invoke-static {}, Lcom/htc/usage/DataUsageSummary;->access$600()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 509
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 510
    invoke-virtual {v0, v4, v6, v7}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 511
    invoke-virtual {v0, v3, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 512
    invoke-virtual {v0, v4, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 513
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$3;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mChart:Lcom/htc/usage/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$900(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 514
    return-void
.end method
