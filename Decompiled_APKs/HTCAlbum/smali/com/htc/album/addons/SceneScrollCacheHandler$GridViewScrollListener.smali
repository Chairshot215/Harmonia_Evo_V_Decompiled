.class Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;
.super Ljava/lang/Object;
.source "SceneScrollCacheHandler.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/SceneScrollCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/SceneScrollCacheHandler;Lcom/htc/album/addons/SceneScrollCacheHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;-><init>(Lcom/htc/album/addons/SceneScrollCacheHandler;)V

    return-void
.end method


# virtual methods
.method public onScrollIRT(Lcom/htc/sunny2/widget/gridview/GridView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 78
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunny2/widget/gridview/GridView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    #getter for: Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;
    invoke-static {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/SceneScrollCacheHandler$GridViewScrollListener;->this$0:Lcom/htc/album/addons/SceneScrollCacheHandler;

    #getter for: Lcom/htc/album/addons/SceneScrollCacheHandler;->mControlHost:Lcom/htc/sunny2/scene/GalleryBaseScene;
    invoke-static {v0}, Lcom/htc/album/addons/SceneScrollCacheHandler;->access$000(Lcom/htc/album/addons/SceneScrollCacheHandler;)Lcom/htc/sunny2/scene/GalleryBaseScene;

    move-result-object v0

    const/16 v1, 0x4f4f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/scene/GalleryBaseScene;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method
