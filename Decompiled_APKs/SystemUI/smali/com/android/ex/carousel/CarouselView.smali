.class public abstract Lcom/android/ex/carousel/CarouselView;
.super Landroid/renderscript/RSSurfaceView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/CarouselView$Info;,
        Lcom/android/ex/carousel/CarouselView$DetailAlignment;,
        Lcom/android/ex/carousel/CarouselView$InterpolationMode;
    }
.end annotation


# static fields
.field public static final DRAG_MODEL_CYLINDER_INSIDE:I = 0x2

.field public static final DRAG_MODEL_CYLINDER_OUTSIDE:I = 0x3

.field public static final DRAG_MODEL_PLANE:I = 0x1

.field public static final DRAG_MODEL_SCREEN_DELTA:I = 0x0

.field public static final FILL_DIRECTION_CCW:I = 0x1

.field public static final FILL_DIRECTION_CW:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CarouselView"

.field private static final USE_DEPTH_BUFFER:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/ex/carousel/CarouselController;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRenderScript:Lcom/android/ex/carousel/CarouselRS;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v0}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v0}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->ensureRenderScript()V

    new-instance v1, Lcom/android/ex/carousel/CarouselView$1;

    invoke-direct {v1, p0}, Lcom/android/ex/carousel/CarouselView$1;-><init>(Lcom/android/ex/carousel/CarouselView;)V

    invoke-virtual {p0, v1}, Lcom/android/ex/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    return-void
.end method

.method private ensureRenderScript()V
    .locals 5

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v1, :cond_0

    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setDepth(II)V

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/ex/carousel/CarouselRS;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;

    move-result-object v4

    iget v4, v4, Lcom/android/ex/carousel/CarouselView$Info;->resId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ex/carousel/CarouselRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1}, Lcom/android/ex/carousel/CarouselRS;->resumeRendering()V

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    return-void
.end method


# virtual methods
.method public createCards(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->createCards(I)V

    return-void
.end method

.method public getCardCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselController;->getCardCount()I

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/ex/carousel/CarouselController;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    return-object v0
.end method

.method public abstract getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadGeometry(I)Landroid/renderscript/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->ensureRenderScript()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchStarted(FFJ)V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchMoved(FFJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchMoved(FFJ)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchStopped(FFJ)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselController;->setBackgroundColor(FFFF)V

    return-void
.end method

.method public setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    return-void
.end method

.method public setCardRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setCardRotation(F)V

    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setCardsFaceTangent(Z)V

    return-void
.end method

.method public setController(Lcom/android/ex/carousel/CarouselController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDefaultCardMatrix([F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDefaultCardMatrix([F)V

    return-void
.end method

.method public setDefaultGeometry(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDefaultGeometry(I)V

    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDetailTextureAlignment(I)V

    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselController;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setDragFactor(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDragFactor(F)V

    return-void
.end method

.method public setDragModel(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDragModel(I)V

    return-void
.end method

.method public setDrawRuler(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDrawRuler(Z)V

    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setFadeInDuration(J)V

    return-void
.end method

.method public setFirstCardTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setFirstCardTop(Z)V

    return-void
.end method

.method public setForceBlendCardsWithZ(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setForceBlendCardsWithZ(Z)V

    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setFrictionCoefficient(F)V

    return-void
.end method

.method public setGeometryForItem(ILandroid/renderscript/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setGeometryForItem(ILandroid/renderscript/Mesh;)V

    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLoadingGeometry(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setLoadingGeometry(I)V

    return-void
.end method

.method public setLookAt([F[F[F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ex/carousel/CarouselController;->setLookAt([F[F[F)V

    return-void
.end method

.method public setMatrixForItem(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setMatrixForItem(I[F)V

    return-void
.end method

.method public setOverscrollSlots(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setOverscrollSlots(F)V

    return-void
.end method

.method public setPrefetchCardCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setPrefetchCardCount(I)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setRadius(F)V

    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setRezInCardCount(F)V

    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setRowCount(I)V

    return-void
.end method

.method public setRowSpacing(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setRowSpacing(F)V

    return-void
.end method

.method public setSlotCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setSlotCount(I)V

    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setStartAngle(F)V

    return-void
.end method

.method public setSwaySensitivity(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setSwaySensitivity(F)V

    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setVisibleDetails(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setVisibleDetails(I)V

    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setVisibleSlots(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselController;->onSurfaceChanged()V

    return-void
.end method
