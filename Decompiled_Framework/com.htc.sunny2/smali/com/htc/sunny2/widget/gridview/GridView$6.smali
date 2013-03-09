.class Lcom/htc/sunny2/widget/gridview/GridView$6;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field final synthetic val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-virtual {v0, v3, v1, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->bind(ILcom/htc/sunny2/IMediaList;I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->setVisibleRange(III)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mRenderThread:Lcom/htc/sunny2/RenderThread;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1500(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$6;->val$thumbPreparation:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThread;->pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    :cond_1
    return-void
.end method
