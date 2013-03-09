.class Lcom/htc/sunny2/widget/gridview/GridView$4$1;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/widget/gridview/GridView$4;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView$4;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$4$1;->this$1:Lcom/htc/sunny2/widget/gridview/GridView$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$4$1;->this$1:Lcom/htc/sunny2/widget/gridview/GridView$4;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$4$1;->this$1:Lcom/htc/sunny2/widget/gridview/GridView$4;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$4$1;->this$1:Lcom/htc/sunny2/widget/gridview/GridView$4;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;->onAttached(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    :cond_0
    return-void
.end method
