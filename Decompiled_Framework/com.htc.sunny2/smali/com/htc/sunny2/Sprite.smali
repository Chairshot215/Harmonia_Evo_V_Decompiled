.class public Lcom/htc/sunny2/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/Sprite$Layer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Sprite"

.field static sSpriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/Sprite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateStack:Ljava/lang/String;

.field private mLayers:[Lcom/htc/sunny2/Sprite$Layer;

.field private mLayersCount:I

.field protected mNodeId:I

.field private mSunnyEnvironment:I

.field private mXPosition:F

.field private mXRotate:F

.field private mXScale:F

.field private mYPosition:F

.field private mYRotate:F

.field private mYScale:F

.field private mZPosition:F

.field private mZRotate:F

.field private mZScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Sprite;->mSunnyEnvironment:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    iget v1, p0, Lcom/htc/sunny2/Sprite;->mSunnyEnvironment:I

    invoke-static {v1, p1, v5}, Lcom/htc/sunny2/Sunny2;->CreateSpriteWithConfig(IIZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    iget v1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    new-array v1, v1, [Lcom/htc/sunny2/Sprite$Layer;

    iput-object v1, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    new-instance v2, Lcom/htc/sunny2/Sprite$Layer;

    invoke-direct {v2, p0, v0}, Lcom/htc/sunny2/Sprite$Layer;-><init>(Lcom/htc/sunny2/Sprite;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    iput v4, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    iput v4, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    iput v4, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    iput v3, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    sget-object v2, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain()Lcom/htc/sunny2/Sprite;
    .locals 2

    new-instance v0, Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static obtain(I)Lcom/htc/sunny2/Sprite;
    .locals 1

    new-instance v0, Lcom/htc/sunny2/Sprite;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/Sprite;-><init>(I)V

    return-object v0
.end method

.method public static search(I)Lcom/htc/sunny2/Sprite;
    .locals 5

    const/4 v0, 0x0

    sget-object v4, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v3

    if-ne v3, p0, :cond_0

    move-object v0, v2

    :cond_1
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public enableColorBlending()V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_EnableColorBlending(IIZ)V

    return-void
.end method

.method public enableTmC()V
    .locals 3

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/sunny2/Sunny2;->Sprite_SetRGBOperation(III)V

    return-void
.end method

.method public getCreateStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mCreateStack:Ljava/lang/String;

    return-object v0
.end method

.method public getLayer(I)Lcom/htc/sunny2/Sprite$Layer;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/Sprite;->mLayers:[Lcom/htc/sunny2/Sprite$Layer;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayerCount()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mLayersCount:I

    return v0
.end method

.method public getNodeId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    return v0
.end method

.method public getPosition()[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getRotate()[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getScale()[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getUserFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->SceneNode_GetUserFlag(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroySprite(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sget-object v1, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/htc/sunny2/Sprite;->sSpriteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetGroupAlpha(IF)V

    return-void
.end method

.method public setColor(III)V
    .locals 2

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->Sprite_SetColor(IIIII)V

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXPosition:F

    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYPosition:F

    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZPosition:F

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetPosition(IFFF)V

    return-void
.end method

.method public setRenderOrder(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRenderOrder(II)V

    return-void
.end method

.method public setReverse()V
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    return-void
.end method

.method public setReverseRatio(F)V
    .locals 6

    const/high16 v3, 0x3f80

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v5, v3, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXRotate:F

    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYRotate:F

    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZRotate:F

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetRotate(IFFF)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny2/Sprite;->mXScale:F

    iput p2, p0, Lcom/htc/sunny2/Sprite;->mYScale:F

    iput p3, p0, Lcom/htc/sunny2/Sprite;->mZScale:F

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1, p2, p3}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    return-void
.end method

.method public setTexture(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, v1, v1, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    return-void
.end method

.method public setTexture(Lcom/htc/sunny2/Texture;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v1, v2, v2, v0}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTexture(IIII)Z

    return-void
.end method

.method public setTextureCoordinatesBy2P(FFFF)V
    .locals 6

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    return-void
.end method

.method public setTextureCoordinatesWithRotate(IFFFF)V
    .locals 10

    const/4 v1, 0x0

    const/high16 v9, 0x3f80

    sparse-switch p1, :sswitch_data_0

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v3, v9, p2

    sub-float v5, v9, p3

    sub-float v7, v9, p4

    sub-float/2addr v9, p4

    move v2, p3

    move v4, p5

    move v6, p3

    move v8, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v2, v9, p2

    sub-float v3, v9, p3

    sub-float v4, v9, p2

    sub-float v5, v9, p5

    sub-float v6, v9, p4

    sub-float v7, v9, p3

    sub-float v8, v9, p4

    sub-float/2addr v9, p5

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    sub-float v2, v9, p3

    sub-float v4, v9, p5

    sub-float v6, v9, p3

    sub-float v8, v9, p5

    move v3, p2

    move v5, p3

    move v7, p4

    move v9, p4

    invoke-static/range {v0 .. v9}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setTextureRotate(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTouchable(IZ)V

    return-void
.end method

.method public setUserFlag(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetUserFlag(II)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    invoke-static {v0, p1}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetVisible(IZ)V

    return-void
.end method

.method public setupGeometry(FFFF)V
    .locals 7

    iget v0, p0, Lcom/htc/sunny2/Sprite;->mNodeId:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny2/Sunny2;->Sprite_SetupGeometry(IIFFFFF)V

    return-void
.end method
