.class Lcom/htc/sunny2/widget/gridview/GridView$3;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->postDisplayScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;ZLcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;

.field final synthetic val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-boolean v1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mIsVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mIsVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;->onShow(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mListener:Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$3;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v1, v1, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;->onHide(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;)V

    goto :goto_0
.end method
