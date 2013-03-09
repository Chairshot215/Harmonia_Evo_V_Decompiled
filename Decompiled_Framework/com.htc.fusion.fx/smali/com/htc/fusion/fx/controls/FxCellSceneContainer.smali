.class public Lcom/htc/fusion/fx/controls/FxCellSceneContainer;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxCellSceneContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/controls/FxCellSceneContainer$AnimationInfo;,
        Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    }
.end annotation


# static fields
.field public static final Z_ORDER_BOTTOM_MOST:I = 0x2

.field public static final Z_ORDER_NORMAL:I = 0x1

.field public static final Z_ORDER_TOP_MOST:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method

.method private native getCellExtentNative()Landroid/graphics/Point;
.end method

.method private native getCellPropertiesNative()Landroid/graphics/Point;
.end method

.method private pointToRectangle(Landroid/graphics/Point;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;

    invoke-direct {v0, p0, v1, v1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;-><init>(Lcom/htc/fusion/fx/controls/FxCellSceneContainer;II)V

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nWidth:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nHeight:I

    return-object v0
.end method

.method private pointToRectf(Landroid/graphics/Point;)Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private recfToPoint(Landroid/graphics/RectF;)Landroid/graphics/Point;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private native rectToCellNative(Landroid/graphics/Point;)Landroid/graphics/Point;
.end method

.method private rectangleToPoint(Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;)Landroid/graphics/Point;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v1, p1, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;->nHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private native sceneToCellNative(Lcom/htc/fusion/fx/FxScene;)Landroid/graphics/Point;
.end method


# virtual methods
.method public GetCellProperties()Landroid/graphics/RectF;
    .locals 2

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->getCellPropertiesNative()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectf(Landroid/graphics/Point;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public SceneToCell(Lcom/htc/fusion/fx/FxScene;)Landroid/graphics/RectF;
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->sceneToCellNative(Lcom/htc/fusion/fx/FxScene;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectf(Landroid/graphics/Point;)Landroid/graphics/RectF;

    move-result-object v1

    return-object v1
.end method

.method public native addScene(Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;)Z
.end method

.method public native addScenes([Lcom/htc/fusion/fx/FxScene;[Landroid/graphics/Rect;)Z
.end method

.method public native cellToRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method public native changeScenePos(Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;)Z
.end method

.method public native changeScenesPos([Lcom/htc/fusion/fx/FxScene;[Landroid/graphics/Rect;)Z
.end method

.method public native fadeScene(Lcom/htc/fusion/fx/FxScene;IF)V
.end method

.method public native fadeScenes([Lcom/htc/fusion/fx/FxScene;[I[F)V
.end method

.method public native getCellExtent()Landroid/graphics/Rect;
.end method

.method public getCellExtent_New()Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    .locals 2

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->getCellExtentNative()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectangle(Landroid/graphics/Point;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;

    move-result-object v1

    return-object v1
.end method

.method public getCellProperties_New()Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    .locals 2

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->getCellPropertiesNative()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectangle(Landroid/graphics/Point;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;

    move-result-object v1

    return-object v1
.end method

.method public native hideIndicator()V
.end method

.method public native moveScene(Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;F)V
.end method

.method public native moveScenes([Lcom/htc/fusion/fx/FxScene;[Landroid/graphics/Rect;[F)V
.end method

.method public rectToCell(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->recfToPoint(Landroid/graphics/RectF;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->rectToCellNative(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectf(Landroid/graphics/Point;)Landroid/graphics/RectF;

    move-result-object v2

    return-object v2
.end method

.method public rectToCell(Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->rectangleToPoint(Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->rectToCellNative(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectangle(Landroid/graphics/Point;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;

    move-result-object v2

    return-object v2
.end method

.method public native removeScene(Lcom/htc/fusion/fx/FxScene;)Z
.end method

.method public native removeSceneFromContainer(Lcom/htc/fusion/fx/FxScene;)Z
.end method

.method public native removeScenes([Lcom/htc/fusion/fx/FxScene;)Z
.end method

.method public native removeScenesFromContainer([Lcom/htc/fusion/fx/FxScene;)Z
.end method

.method public sceneToCell_New(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->sceneToCellNative(Lcom/htc/fusion/fx/FxScene;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/FxCellSceneContainer;->pointToRectangle(Landroid/graphics/Point;)Lcom/htc/fusion/fx/controls/FxCellSceneContainer$RectangleSize;

    move-result-object v1

    return-object v1
.end method

.method public native setSceneZOrder(Lcom/htc/fusion/fx/FxScene;I)Z
.end method

.method public native setShadowRegion(Landroid/graphics/Rect;Z)V
.end method

.method public native setTouchPosition(Landroid/graphics/Point;)V
.end method
