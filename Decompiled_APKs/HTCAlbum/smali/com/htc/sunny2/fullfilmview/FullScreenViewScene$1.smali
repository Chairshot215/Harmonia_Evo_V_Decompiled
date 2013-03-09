.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;
.super Ljava/lang/Object;
.source "FullScreenViewScene.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->setupScene(Lcom/htc/sunny2/SceneNode;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->currentItemIndex:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 3

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    .line 444
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FSVScene"

    const-string v2, "scroller_x getFirstVisibleItemOffset(): error, return 0"

    invoke-static {v1, v2, v0}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 429
    const-string v0, "FSVScene"

    const-string v1, "scroller_x getItemCount(): null media list, return 0"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mediaList:Lcom/htc/sunny2/IMediaList;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1000(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemLength(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public getTopBouncePosition()I
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->viewportWidth:I
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$900(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v0

    return v0
.end method
