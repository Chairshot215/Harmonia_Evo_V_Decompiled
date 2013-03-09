.class Lcom/htc/widget/HtcAbsListView$PerformClick;
.super Lcom/htc/widget/HtcAbsListView$WindowRunnnable;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$PerformClick;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v2, v2, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v0, v2, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mClickMotionPosition:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget v2, v2, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView$PerformClick;->mChild:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/htc/widget/HtcAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
