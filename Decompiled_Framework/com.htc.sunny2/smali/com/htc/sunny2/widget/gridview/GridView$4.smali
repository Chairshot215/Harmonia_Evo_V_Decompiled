.class Lcom/htc/sunny2/widget/gridview/GridView$4;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/GridView;->postUpdateScrollCache(Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;Landroid/graphics/Bitmap;Lcom/htc/sunny2/widget/gridview/GridView$OnScrollCacheListener;)V
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

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v0, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, -0x1

    const/4 v1, -0x1

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-ne v9, v3, :cond_0

    invoke-static {}, Lcom/htc/sunny2/widget/gridview/GridView;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[GridView][postUpdateScrollCache] scrollCache.mBitmap has been recycled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->HEADER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v4, v2

    int-to-float v5, v1

    neg-int v6, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/widget/gridview/GridView;->mStatusBarHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1100(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;
    invoke-static {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1300(Lcom/htc/sunny2/widget/gridview/GridView;)Lcom/htc/sunny2/RenderThreadHandler;

    move-result-object v3

    new-instance v4, Lcom/htc/sunny2/widget/gridview/GridView$4$1;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/widget/gridview/GridView$4$1;-><init>(Lcom/htc/sunny2/widget/gridview/GridView$4;)V

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheTexture:Lcom/htc/sunny2/Texture;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    sget-object v3, Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;->FOOTER:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v4, v4, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheType:Lcom/htc/sunny2/widget/gridview/GridView$SCROLLCACHE;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->val$scrollCache:Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;

    iget-object v3, v3, Lcom/htc/sunny2/widget/gridview/GridView$ScrollCache;->mCacheSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v4, v2

    int-to-float v5, v1

    neg-int v6, v2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/sunny2/widget/gridview/GridView$4;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    #getter for: Lcom/htc/sunny2/view/SView;->mHeight:I
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/GridView;->access$1200(Lcom/htc/sunny2/widget/gridview/GridView;)I

    move-result v7

    div-int/lit8 v8, v1, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    goto :goto_2
.end method
