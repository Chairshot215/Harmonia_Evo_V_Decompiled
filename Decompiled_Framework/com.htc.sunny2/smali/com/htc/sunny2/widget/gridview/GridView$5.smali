.class Lcom/htc/sunny2/widget/gridview/GridView$5;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->freeInvisibleResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mThumbPreparator:Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
    invoke-static {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1400(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/widget/gridview/GridViewPreparator;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/GridView;->mFirstIdx:I

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/GridView;->mLastIdx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->freeOutOfRange(III)V

    :cond_0
    return-void
.end method
