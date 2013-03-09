.class Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v5, v6, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v7, v7, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v4, v6, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v6, v6, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v7, v7, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    invoke-virtual {v6, v7}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-boolean v6, v6, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v4, v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;IJ)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v6, v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->setPressed(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$CheckForLongPress;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    goto :goto_0
.end method
