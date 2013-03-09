.class Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;
.super Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;
.source "AlbumAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-boolean v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v1, v1, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->sameWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
