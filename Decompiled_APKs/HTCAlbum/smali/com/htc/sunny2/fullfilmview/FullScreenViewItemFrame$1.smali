.class Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;
.super Ljava/lang/Object;
.source "FullScreenViewItemFrame.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setupRenderingEnvironment(Lcom/htc/sunny2/RenderThread;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBouncePosition()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstVisibleItemIndex()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public getFirstVisibleItemOffset()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x3

    return v0
.end method

.method public getItemLength(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getItemSpacing()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getLastVisibleItemIndex()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public getLastVisibleItemOffset()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public getTopBouncePosition()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getViewPortLength()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame$1;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->frameWidth:F
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->access$000(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
