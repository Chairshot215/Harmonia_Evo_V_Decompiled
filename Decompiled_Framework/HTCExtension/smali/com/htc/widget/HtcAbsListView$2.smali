.class Lcom/htc/widget/HtcAbsListView$2;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/HtcAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    iput-boolean v1, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1400(Lcom/htc/widget/HtcAbsListView;Z)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #getter for: Lcom/htc/widget/HtcAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$1500(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAbsListView;->access$1600(Lcom/htc/widget/HtcAbsListView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$2;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    :cond_1
    return-void
.end method
