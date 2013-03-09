.class Lcom/htc/view/table/AbstractTableView$PerformClick;
.super Lcom/htc/view/table/AbstractTableView$WindowRunnnable;
.source "AbstractTableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field public mChild:Landroid/view/View;

.field public mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 1
    .parameter

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;-><init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V

    .line 1284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-boolean v0, v0, Lcom/htc/view/table/AbstractTableView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v0, v0, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget v0, v0, Lcom/htc/view/table/AbstractTableView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v1, v1, Lcom/htc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/view/table/AbstractTableView$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    iget-object v1, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->mChild:Landroid/view/View;

    iget v2, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->mClickMotionPosition:I

    iget-object v3, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v3}, Lcom/htc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, p0, Lcom/htc/view/table/AbstractTableView$PerformClick;->mClickMotionPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
