.class Lcom/htc/sunny2/widget/gridview/GridView$1;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$000(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v3, 0x1

    #calls: Lcom/htc/sunny2/widget/gridview/GridView;->dispatchUnpress(Z)V
    invoke-static {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridView;->access$100(Lcom/htc/sunny2/widget/gridview/GridView;Z)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mSelectedHighlightEnabled:Z
    invoke-static {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->access$200(Lcom/htc/sunny2/widget/gridview/GridView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mOnScreenItems:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/htc/sunny2/widget/gridview/GridView$Cell;->viewItem:Lcom/htc/sunny2/widget/gridview/GridViewItem;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->setPressed(Z)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mHostContextName:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->access$500(Lcom/htc/sunny2/widget/gridview/GridView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Can\'t find highlighted item: mCurrentHighlightIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$1;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mCurrentHighlightIdx:I
    invoke-static {v4}, Lcom/htc/sunny2/widget/gridview/GridView;->access$300(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
