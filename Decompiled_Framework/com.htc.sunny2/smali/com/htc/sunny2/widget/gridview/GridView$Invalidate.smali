.class Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Invalidate"
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "NotifyDataInvalidate"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    const-string v0, "NotifyDataInvalidate"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    return-void
.end method

.method private draw(I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->unbindMediaData()V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/IMediaList;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->bindMediaData(ILcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method


# virtual methods
.method public onDoActionIRT(IJ)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    :goto_0
    return v8

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    const/4 v1, 0x0

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_2
    if-ne v8, v1, :cond_4

    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    :goto_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    add-int/lit8 v6, v6, 0x1

    if-ge v0, v6, :cond_5

    invoke-direct {p0, v0}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->draw(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v6, v6, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget v7, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-gt v6, v7, :cond_1

    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v7, v7, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    if-gt v6, v7, :cond_1

    iget v6, v5, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->draw(I)V

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny2/widget/gridview/GridView$Invalidate;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v6}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v6

    iput-boolean v8, v6, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    goto :goto_0
.end method
