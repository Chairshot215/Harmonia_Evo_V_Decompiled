.class public Lcom/htc/widget/HtcAbsListView2$PerformClick;
.super Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;
.source "HtcAbsListView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method protected constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v1, v1, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsListView2$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2$PerformClick;->mClickMotionPosition:I

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
