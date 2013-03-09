.class public Lcom/htc/sunny2/slideshow/SlideshowScene;
.super Ljava/lang/Object;
.source "SlideshowScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/slideshow/SlideshowScene$SlidesListener;
    }
.end annotation


# instance fields
.field private final LTAG:Ljava/lang/String;

.field private final SPRITES_COUNT:I

.field private renderThread:Lcom/htc/sunny2/RenderThread;

.field private spriteIndexToUse:I

.field private spriteRenderOrder:I

.field private sunnyEnv:I

.field private sunnySprites:[I

.field private viewRootNode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, "SlideshowScene"

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->LTAG:Ljava/lang/String;

    .line 25
    iput v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->SPRITES_COUNT:I

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 31
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    .line 33
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    .line 34
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    .line 36
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    .line 37
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 46
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aput v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method private obtainASunnySprite()I
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    iget v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    aget v0, v1, v2

    .line 198
    .local v0, sprite:I
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    .line 199
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 201
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    .line 204
    :cond_0
    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetVisible(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 206
    const-string v1, "SlideshowScene"

    const-string v2, "obtainASunnySprite() Error - sprite is still in use !"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    .line 210
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    .line 212
    return v0
.end method


# virtual methods
.method public animateSlide(Lcom/htc/sunny2/slideshow/SlideAnimator;)Z
    .locals 6
    .parameter "slideAnimator"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    const-string v3, "SlideshowScene"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateSlide "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    if-nez v3, :cond_0

    .line 146
    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - null render thread"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    return v1

    .line 150
    :cond_0
    if-nez p1, :cond_1

    .line 152
    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - null animator"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->obtainASunnySprite()I

    move-result v0

    .line 157
    .local v0, sprite:I
    invoke-virtual {p1, p0, v0}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onAddedToScene(Lcom/htc/sunny2/slideshow/SlideshowScene;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    const-string v2, "SlideshowScene"

    const-string v3, "animateSlide() NG - onAddedToScene"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {v0, v2}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 165
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move v1, v2

    .line 167
    goto :goto_0
.end method

.method public deinit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->DestroySprite(I)V

    .line 121
    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aput v2, v1, v0

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    if-eqz v1, :cond_2

    .line 126
    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {v1}, Lcom/htc/sunny2/Sunny2;->DestroySceneNode(I)V

    .line 127
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    .line 130
    :cond_2
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    .line 131
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteRenderOrder:I

    .line 133
    iput v2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 135
    return-void
.end method

.method public init(Lcom/htc/sunny2/RenderThread;II)Z
    .locals 9
    .parameter "renderThread"
    .parameter "sunnyEnv"
    .parameter "sunnyParentNode"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 56
    :cond_0
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - zero parameter"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    .line 66
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->renderThread:Lcom/htc/sunny2/RenderThread;

    .line 67
    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    .line 69
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    .line 70
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    if-nez v0, :cond_2

    .line 72
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - create view root node"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    .line 77
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {p3, v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - add view root node"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    .line 84
    :cond_3
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    invoke-static {v0, v8}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 88
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v0, 0x9

    if-ge v7, v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    iget v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnyEnv:I

    invoke-static {v3, v8}, Lcom/htc/sunny2/Sunny2;->CreateSprite(II)I

    move-result v3

    aput v3, v0, v7

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    if-nez v0, :cond_4

    .line 93
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - create sprite"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v0, v0, v7

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 101
    iget v0, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->viewRootNode:I

    iget-object v3, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->sunnySprites:[I

    aget v3, v3, v7

    invoke-static {v0, v3}, Lcom/htc/sunny2/Sunny2;->SceneNode_AddChild(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    const-string v0, "SlideshowScene"

    const-string v2, "init() NG - add scene node to parent"

    invoke-static {v0, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/sunny2/slideshow/SlideshowScene;->deinit()V

    goto :goto_0

    .line 88
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    :cond_6
    iput v1, p0, Lcom/htc/sunny2/slideshow/SlideshowScene;->spriteIndexToUse:I

    move v1, v8

    .line 111
    goto/16 :goto_0
.end method

.method onSlideFinish(Lcom/htc/sunny2/slideshow/SlideAnimator;Z)V
    .locals 4
    .parameter "slideAnimator"
    .parameter "bKeepScreen"

    .prologue
    .line 175
    const-string v1, "SlideshowScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSlideFinish "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->getSprite()I

    move-result v0

    .line 178
    .local v0, sprite:I
    if-nez v0, :cond_0

    .line 180
    const-string v1, "SlideshowScene"

    const-string v2, "onSlideFinish NG - null sprite"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    .line 185
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->onRemovedFromScene()V

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->deinit()V

    .line 188
    invoke-virtual {p1}, Lcom/htc/sunny2/slideshow/SlideAnimator;->recycle()V

    .line 189
    return-void
.end method
