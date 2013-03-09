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

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v3, v3, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v3, v3, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v4, v4, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-boolean v3, v3, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-nez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v4, v4, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-wide v5, v5, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v3, v2, v4, v5, v6}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForKeyLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v3, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
