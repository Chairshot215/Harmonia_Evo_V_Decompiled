.class public Lcom/android/ex/carousel/CarouselController;
.super Ljava/lang/Object;
.source "CarouselController.java"


# static fields
.field private static final DBG:Z = false

.field public static final STORE_CONFIG_ALPHA:I = 0x1

.field public static final STORE_CONFIG_DEPTH_READS:I = 0x2

.field public static final STORE_CONFIG_DEPTH_WRITES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CarouselController"


# instance fields
.field private final DEFAULT_DETAIL_ALIGNMENT:I

.field private final DEFAULT_DRAG_FACTOR:F

.field private final DEFAULT_FRICTION_COEFFICIENT:F

.field private final DEFAULT_OVERSCROLL_SLOTS:F

.field private final DEFAULT_PREFETCH_CARD_COUNT:I

.field private final DEFAULT_RADIUS:F

.field private final DEFAULT_ROW_COUNT:I

.field private final DEFAULT_ROW_SPACING:F

.field private final DEFAULT_SLOT_COUNT:I

.field private final DEFAULT_SWAY_SENSITIVITY:F

.field private final DEFAULT_VISIBLE_DETAIL_COUNT:I

.field private mAt:[F

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBackgroundColor:Landroid/renderscript/Float4;

.field private mCardCount:I

.field private mCardCreationFadeDuration:J

.field private mCardRotation:F

.field private mCardsFaceTangent:Z

.field private mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

.field private mCarouselRotationAngle:F

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDefaultCardMatrix:[F

.field private mDefaultGeometry:I

.field private mDefaultLineBitmap:Landroid/graphics/Bitmap;

.field private mDetailLoadingBitmap:Landroid/graphics/Bitmap;

.field private mDetailTextureAlignment:I

.field private mDragFactor:F

.field private mDragModel:I

.field private mDrawRuler:Z

.field private mEye:[F

.field private mFadeInDuration:J

.field private mFillDirection:I

.field private mFirstCardTop:Z

.field private mForceBlendCardsWithZ:Z

.field private mFrictionCoefficient:F

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private mLoadingGeometry:I

.field private mOverscrollSlots:F

.field private mPrefetchCardCount:I

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRadius:F

.field private mRenderScript:Lcom/android/ex/carousel/CarouselRS;

.field private mRezInCardCount:F

.field private mRowCount:I

.field private mRowSpacing:F

.field private mSlotCount:I

.field private mStartAngle:F

.field private mStoreConfigs:[I

.field private mSwaySensitivity:F

.field private mUp:[F

.field private mVisibleDetails:I

.field private mVisibleSlots:I


# direct methods
.method public constructor <init>()V
    .locals 9

    const/high16 v8, 0x3f80

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_SLOT_COUNT:I

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_RADIUS:F

    iput v2, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_VISIBLE_DETAIL_COUNT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_PREFETCH_CARD_COUNT:I

    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_ROW_COUNT:I

    iput v8, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_OVERSCROLL_SLOTS:F

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_ROW_SPACING:F

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_SWAY_SENSITIVITY:F

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_FRICTION_COEFFICIENT:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_DRAG_FACTOR:F

    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->DEFAULT_DETAIL_ALIGNMENT:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    iput v2, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    const/16 v0, 0x202

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    iput-boolean v4, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    iput v8, p0, Lcom/android/ex/carousel/CarouselController;->mOverscrollSlots:F

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0, v7, v7, v7, v8}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iput v7, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    const-wide/16 v2, 0xfa

    iput-wide v2, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    new-array v0, v4, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v2, v4

    move v3, v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    iput v4, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    iput-boolean v1, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    const/4 v6, 0x1

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x94t 0x76t 0xa5t 0x41t
        0xf3t 0x54t 0x31t 0x40t
        0xe8t 0xd9t 0x85t 0x41t
    .end array-data

    :array_2
    .array-data 0x4
        0xa6t 0x9bt 0x6bt 0x41t
        0xc4t 0x99t 0x59t 0xc0t
        0xb1t 0xa2t 0xa6t 0xbft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public createCards(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->createCards(I)V

    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/ex/carousel/CarouselRS$CarouselCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    return v0
.end method

.method public invalidateDetailTexture(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->invalidateDetailTexture(IZ)V

    :cond_0
    return-void
.end method

.method public invalidateTexture(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->invalidateTexture(IZ)V

    :cond_0
    return-void
.end method

.method public loadGeometry(I)Landroid/renderscript/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselRS;->doLongPress()V

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 4

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setSlotCount(I)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultCardMatrix:[F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultCardMatrix([F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->createCards(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setVisibleSlots(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setVisibleDetails(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setPrefetchCardCount(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mOverscrollSlots:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setOverscrollSlots(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRowCount(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRowSpacing(F)V

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFirstCardTop(Z)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailTextureAlignment(I)V

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setForceBlendCardsWithZ(Z)V

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDrawRuler(Z)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultGeometry:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDefaultGeometry(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingGeometry:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setLoadingGeometry(I)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v1, v1, Landroid/renderscript/Float4;->y:F

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v2, v2, Landroid/renderscript/Float4;->z:F

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget v3, v3, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ex/carousel/CarouselController;->setBackgroundColor(FFFF)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mStartAngle:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setStartAngle(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselRotationAngle:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCarouselRotationAngle(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRadius(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCardRotation(F)V

    iget-boolean v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setCardsFaceTangent(Z)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setSwaySensitivity(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFrictionCoefficient(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDragFactor(F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDragModel(I)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setFillDirection(I)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/carousel/CarouselController;->setLookAt([F[F[F)V

    iget v0, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setRezInCardCount(F)V

    iget-wide v0, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/CarouselController;->setFadeInDuration(J)V

    iget-wide v0, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/carousel/CarouselController;->setCardCreationFadeDuration(J)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mStoreConfigs:[I

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselController;->setStoreConfigs([I)V

    return-void
.end method

.method public onTouchMoved(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doMotion(FFJ)V

    return-void
.end method

.method public onTouchStarted(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doStart(FFJ)V

    return-void
.end method

.method public onTouchStopped(FFJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->doStop(FFJ)V

    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setBackgroundTexture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 2

    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/renderscript/Float4;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mBackgroundColor:Landroid/renderscript/Float4;

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselRS;->setBackgroundColor(Landroid/renderscript/Float4;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselCallback:Lcom/android/ex/carousel/CarouselRS$CarouselCallback;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    :cond_0
    return-void
.end method

.method public setCardCreationFadeDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardCreationFadeDuration:J

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setCardCreationFadeDuration(J)V

    :cond_0
    return-void
.end method

.method public setCardRotation(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardRotation:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCardRotation(F)V

    :cond_0
    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mCardsFaceTangent:Z

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCardsFaceTangent(Z)V

    :cond_0
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mCarouselRotationAngle:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setCarouselRotationAngle(F)V

    :cond_0
    return-void
.end method

.method public setCarouselRotationAngle(FIIF)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/carousel/CarouselRS;->setCarouselRotationAngle(FIIF)V

    :cond_0
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setDefaultCardMatrix([F)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultCardMatrix:[F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDefaultCardMatrix([F)V

    :cond_0
    return-void
.end method

.method public setDefaultGeometry(I)V
    .locals 2

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultGeometry:I

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/CarouselRS;->setDefaultGeometry(Landroid/renderscript/Mesh;)V

    :cond_0
    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailLineTexture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailLoadingTexture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .locals 4

    const v2, 0xff00

    and-int v0, p1, v2

    if-eqz v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify exactly one horizontal alignment flag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    and-int/lit16 v1, p1, 0xff

    if-eqz v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify exactly one vertical alignment flag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDetailTextureAlignment:I

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v2, p1}, Lcom/android/ex/carousel/CarouselRS;->setDetailTextureAlignment(I)V

    :cond_4
    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselRS;->setDetailTexture(IFFFFLandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setDragFactor(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDragFactor:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDragFactor(F)V

    :cond_0
    return-void
.end method

.method public setDragModel(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mDragModel:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDragModel(I)V

    :cond_0
    return-void
.end method

.method public setDrawRuler(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mDrawRuler:Z

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setDrawRuler(Z)V

    :cond_0
    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/ex/carousel/CarouselController;->mFadeInDuration:J

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setFadeInDuration(J)V

    :cond_0
    return-void
.end method

.method public setFillDirection(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mFillDirection:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFillDirection(I)V

    :cond_0
    return-void
.end method

.method public setFirstCardTop(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mFirstCardTop:Z

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFirstCardTop(Z)V

    :cond_0
    return-void
.end method

.method public setForceBlendCardsWithZ(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/ex/carousel/CarouselController;->mForceBlendCardsWithZ:Z

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setForceBlendCardsWithZ(Z)V

    :cond_0
    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mFrictionCoefficient:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setFrictionCoefficient(F)V

    :cond_0
    return-void
.end method

.method public setGeometryForItem(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p2}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p1, v0}, Lcom/android/ex/carousel/CarouselRS;->setGeometry(ILandroid/renderscript/Mesh;)V

    :cond_0
    return-void
.end method

.method public setGeometryForItem(ILandroid/renderscript/Mesh;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setGeometry(ILandroid/renderscript/Mesh;)V

    :cond_0
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setLoadingGeometry(I)V
    .locals 2

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mLoadingGeometry:I

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, p1}, Lcom/android/ex/carousel/CarouselRS;->loadGeometry(I)Landroid/renderscript/Mesh;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v0}, Lcom/android/ex/carousel/CarouselRS;->setLoadingGeometry(Landroid/renderscript/Mesh;)V

    :cond_0
    return-void
.end method

.method public setLookAt([F[F[F)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mEye:[F

    iput-object p2, p0, Lcom/android/ex/carousel/CarouselController;->mAt:[F

    iput-object p3, p0, Lcom/android/ex/carousel/CarouselController;->mUp:[F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ex/carousel/CarouselRS;->setLookAt([F[F[F)V

    :cond_0
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setMatrix(I[F)V

    :cond_0
    return-void
.end method

.method public setOverscrollSlots(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mOverscrollSlots:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setOverscrollSlots(F)V

    :cond_0
    return-void
.end method

.method public setPrefetchCardCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mPrefetchCardCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setPrefetchCardCount(I)V

    :cond_0
    return-void
.end method

.method public setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    iput-object p2, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRadius:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRadius(F)V

    :cond_0
    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRezInCardCount:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRezInCardCount(F)V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRowCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRowCount(I)V

    :cond_0
    return-void
.end method

.method public setRowSpacing(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mRowSpacing:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setRowSpacing(F)V

    :cond_0
    return-void
.end method

.method public setSlotCount(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mSlotCount:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setSlotCount(I)V

    :cond_0
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mStartAngle:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setStartAngle(F)V

    :cond_0
    return-void
.end method

.method public setStoreConfigs([I)V
    .locals 1

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselController;->mStoreConfigs:[I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setStoreConfigs([I)V

    :cond_0
    return-void
.end method

.method public setSwaySensitivity(F)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mSwaySensitivity:F

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setSwaySensitivity(F)V

    :cond_0
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselRS;->setTexture(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setVisibleDetails(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleDetails:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setVisibleDetails(I)V

    :cond_0
    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1

    iput p1, p0, Lcom/android/ex/carousel/CarouselController;->mVisibleSlots:I

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselController;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselRS;->setVisibleSlots(I)V

    :cond_0
    return-void
.end method
