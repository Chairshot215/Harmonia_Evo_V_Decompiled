.class Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1661
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1663
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v3, v3, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1664
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v3, v3, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 1665
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1667
    .local v2, v:Landroid/view/View;
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-boolean v3, v3, Lcom/htc/opensense/widget/AlbumAbsListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1668
    const/4 v0, 0x0

    .line 1669
    .local v0, handled:Z
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1670
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-wide v5, v5, Lcom/htc/opensense/widget/AlbumAbsListView;->mSelectedRowId:J

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1672
    :cond_0
    if-eqz v0, :cond_1

    .line 1673
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1674
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1681
    .end local v0           #handled:Z
    .end local v1           #index:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1677
    .restart local v1       #index:I
    .restart local v2       #v:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    .line 1678
    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
