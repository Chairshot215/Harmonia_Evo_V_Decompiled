.class public Lcom/htc/sunny/SPresentation;
.super Lcom/htc/sunny/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SPresentation$18;,
        Lcom/htc/sunny/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunny/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunny/SPresentation$AnimationInfo;,
        Lcom/htc/sunny/SPresentation$OnItemLongClickListener;,
        Lcom/htc/sunny/SPresentation$PresentationListener;,
        Lcom/htc/sunny/SPresentation$INTERPOLATE;,
        Lcom/htc/sunny/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunny/SPresentation$DIRECTION;,
        Lcom/htc/sunny/SPresentation$ItemContainer;
    }
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x4

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x12

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_ROTATE_SELF:I = 0xb

.field public static final STATE_ROTATE_SELF_END:I = 0xc

.field public static final STATE_SCROLL:I = 0x9

.field public static final STATE_SCROLL_END:I = 0xa

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected DURATION_ROTATE_SELF:I

.field protected DURATION_SCROLL_NEXT:I

.field protected DURATION_SCROLL_PREVIOUS:I

.field protected DURATION_SCROLL_TO:I

.field protected TIMESLOT_INTERVAL:I

.field protected TIMESLOT_INTERVAL_HALF:I

.field protected mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

.field protected mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunny/Vector3F;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGradualBmp:I

.field protected mGradualBmpResId:I

.field protected mGradualNode:I

.field protected mGradualPosX:I

.field protected mGradualPosY:I

.field protected mGradualSpirte:I

.field protected mGradualTexture:I

.field protected mGradualTranslation:Lcom/htc/sunny/Vector3F;

.field protected mGradualVisible:Z

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

.field protected mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

.field protected mItemScrollRatio:F

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPosX:I

.field protected mPosY:I

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mResIdShadow:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mShadowH:I

.field protected mShadowTexture:I

.field protected mShadowW:I

.field protected mShiftOneItem:Z

.field protected mTimeSlot:I

.field protected mViewHeight:I

.field protected mViewHeight_H:I

.field protected mViewWidth:I

.field protected mViewWidth_H:I

.field protected mVisibleContainerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6

    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    new-instance v0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    new-instance v0, Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    new-instance v0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mOldSelectedPos:I

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnabledLargeSensorArea:Z

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    invoke-super {p0, v1}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected clear3DView()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    return-void
.end method

.method protected createGradualMask(III)V
    .locals 12

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lez v8, :cond_2

    if-gtz v4, :cond_3

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v10

    invoke-static {v4}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v9

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getGlobalRootNode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    const/4 v0, 0x0

    invoke-static {v7, v10, v9, v0}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    iput p2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->setGradualVisibility(Z)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected createResource()V
    .locals 1

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    goto :goto_0
.end method

.method protected destroyAllResource()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    iget-object v4, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v4}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->onUpW(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    goto :goto_0
.end method

.method protected enableAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    return-void
.end method

.method public fling(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$14;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$14;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected flingW(I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    const/16 v0, 0xbb8

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v6, v2

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    move v3, v4

    if-lez p1, :cond_b

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    if-lez p1, :cond_12

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :goto_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_1

    :cond_9
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    :cond_a
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    :cond_b
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_c
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    :cond_e
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    :cond_f
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    :cond_10
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_11
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_12
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_13
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_14
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    :cond_15
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    :cond_16
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    :cond_17
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    if-ne v2, v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SPresentation;->getSpriteIndex(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny/SView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F
    .locals 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v0, p2

    move v1, p3

    move v2, p4

    sget-object v7, Lcom/htc/sunny/SPresentation$18;->$SwitchMap$com$htc$sunny$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_1
    div-float/2addr v4, v2

    mul-float v6, v4, v4

    mul-float v5, v6, v4

    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method public getSelection()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_b

    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_8

    cmpg-float v4, p2, v5

    if-gez v4, :cond_7

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v3, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_13

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_13

    if-lez v0, :cond_12

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    if-nez p1, :cond_a

    cmpl-float v4, p2, v5

    if-lez v4, :cond_9

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v3, v4

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v2, v4, v5

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    div-float/2addr v4, v2

    float-to-int v0, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-gtz v4, :cond_6

    move v0, v3

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_b
    if-ltz p1, :cond_c

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_d

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :cond_d
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_f

    cmpg-float v4, p2, v5

    if-gez v4, :cond_e

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_e
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v0, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-ltz v4, :cond_6

    move v0, v3

    goto/16 :goto_0

    :cond_f
    if-nez p1, :cond_11

    cmpl-float v4, p2, v5

    if-lez v4, :cond_10

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_10
    move v0, v3

    goto/16 :goto_0

    :cond_11
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    :cond_12
    if-gez v0, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_14

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_14

    if-gez v0, :cond_14

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    :goto_3
    return-void

    :cond_4
    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    :goto_4
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_4

    :cond_e
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    :goto_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_5

    :cond_10
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_12
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_6
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    :cond_14
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_15
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    :cond_17
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    :cond_18
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto/16 :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    return-void
.end method

.method protected initContainers(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerCount()I

    move-result v10

    if-eqz v13, :cond_3

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ne v10, v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ne v13, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v1, v0, :cond_13

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_9

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_9

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-eq v10, v1, :cond_a

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    new-array v1, v1, [Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    invoke-static {v12, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_b
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v11, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    new-instance v9, Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Lcom/htc/sunny/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny/SPresentation;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v9, v1, v11

    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v3, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny/SPresentation;->addView(Lcom/htc/sunny/SView;)V

    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v0, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    move/from16 v16, v0

    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v15, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    invoke-virtual {v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v15

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    neg-int v7, v15

    div-int/lit8 v7, v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    neg-int v4, v15

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    if-ne v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    neg-int v4, v4

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    sub-int v4, v15, v4

    int-to-float v4, v4

    int-to-float v5, v15

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setTextureCoordinates(IFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v3, 0x4334

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteAsShadow(IIIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mPosY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/sunny/SPresentation;->getSpriteTag(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v14, v1, v2

    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v14, v1, :cond_10

    iput v14, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_2
    iget-object v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v1, :cond_f

    iget-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v1, :cond_11

    :cond_f
    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v1}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v1, -0x1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/SPresentation;->createGradualMask(III)V

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v1, v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->openingAnimation()V

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, -0x1

    if-lez p1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    :cond_2
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_b

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    if-nez v8, :cond_5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-gez p1, :cond_4

    invoke-virtual {p0, v11}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    :cond_5
    iget v3, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    move v4, v3

    if-gez p1, :cond_8

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentationAdapterBase;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny/SPresentationContainerLayout;Z)V

    if-ne v10, v7, :cond_9

    iput-boolean v12, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    :goto_5
    iget-object v1, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_a

    :cond_7
    move v0, v12

    :goto_6
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_3

    :cond_8
    if-lez p1, :cond_6

    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    :cond_9
    iput-boolean v11, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_5

    :cond_a
    move v0, v11

    goto :goto_6

    :cond_b
    if-nez p1, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    goto :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    :goto_2
    return-void

    :cond_2
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_6
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->moveContainers(I)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$7;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$8;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataSetChangedW() + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationSelectionChange(I)V

    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    :cond_0
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationStateChange(I)V

    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$9;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_7

    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    :cond_3
    iput-boolean v3, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_1
    iget-object v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_4

    iget-boolean v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    :cond_7
    iput-boolean v4, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimationEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelfEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->flingW(I)V

    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$OnItemLongClickListener;->onPresentationItemLongClick(I)V

    :cond_0
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    const/4 v2, 0x0

    const/high16 v9, -0x3c4c

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    const/high16 v9, 0x43b4

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v2, v0, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v8

    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v8, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v1, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    move v8, v9

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    :cond_0
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    float-to-int v3, v7

    float-to-int v4, v8

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SPresentation;->onScrollPresentation(IIIIFF)Z

    iput-boolean v10, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    sub-int v0, v7, v8

    neg-int v9, v0

    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    sub-int/2addr v9, v6

    :cond_1
    :goto_2
    if-nez v9, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    sub-int v9, v7, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    add-int/2addr v9, v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10

    invoke-virtual {p0, p3}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v7

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    :cond_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v7, v8}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    int-to-float v2, v1

    sub-float v3, v2, v5

    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    const/4 v0, 0x0

    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_4

    if-lez v6, :cond_4

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_4

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_3

    if-lez v6, :cond_5

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    :cond_3
    :goto_2
    if-nez v6, :cond_6

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    if-gez v6, :cond_2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v1, "3DGlideMode"

    const-string v2, "[SPresentation] onShowPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->press(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v3, v1, :cond_4

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    if-ne v3, v1, :cond_7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    if-eq v4, v0, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationItemClick(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-nez v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    new-instance v5, Lcom/htc/sunny/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    invoke-virtual {v1, v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    if-ne v4, v3, :cond_1

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    new-instance v6, Lcom/htc/sunny/SPresentation$3;

    invoke-direct {v6, p0}, Lcom/htc/sunny/SPresentation$3;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setFillAfter(Z)V

    sget-object v6, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    goto :goto_1

    :cond_1
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    iget-object v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    sget-object v4, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    if-nez v3, :cond_0

    new-instance v4, Lcom/htc/sunny/SPresentation$4;

    invoke-direct {v4, p0}, Lcom/htc/sunny/SPresentation$4;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->animate()V

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    const-string v0, "3DGlideMode"

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelf()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public rotateSelf(IZ)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$15;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    iput-boolean p2, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method protected scrollByOffset(I)V
    .locals 1

    if-lez p1, :cond_1

    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    return-void

    :cond_1
    if-gez p1, :cond_0

    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$13;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$13;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$11;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    const/16 v2, 0x12

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$12;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$12;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x12

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9

    const/16 v6, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    const-string v3, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollToW() -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() -2 disable animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->init(IIII)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    if-gez v0, :cond_9

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    :goto_1
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    :cond_c
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    :cond_d
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() - "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$6;-><init>(Lcom/htc/sunny/SPresentation;Lcom/htc/sunny/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SPresentation$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SPresentation$16;-><init>(Lcom/htc/sunny/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    :goto_0
    return-void

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setGradualReflection(ILcom/htc/sunny/Vector3F;)V
    .locals 1

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    return-void
.end method

.method public setGradualVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/sunny/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$5;-><init>(Lcom/htc/sunny/SPresentation;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setItemShadow(IIIII)V
    .locals 7

    new-instance v0, Lcom/htc/sunny/SPresentation$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SPresentation$1;-><init>(Lcom/htc/sunny/SPresentation;IIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny/SPresentation$OnItemLongClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    return-void
.end method

.method public setReflectionColor(III)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SPresentation$2;-><init>(Lcom/htc/sunny/SPresentation;III)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/sunny/SPresentation$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$10;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    :cond_0
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    if-ne v7, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    const-string v4, "3DGlideMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSelectionW() -2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sget-object v4, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_8

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    :cond_5
    iput-boolean v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    :cond_6
    iput-boolean v8, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    return-void

    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainersData()V
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v6, :cond_6

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v6, v9, :cond_6

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v6, v9}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    :cond_3
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    :cond_4
    iput-boolean v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    :goto_3
    iget-object v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_5

    iget-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_7

    :cond_5
    move v6, v8

    :goto_4
    invoke-virtual {p0, v3, v9, v6}, Lcom/htc/sunny/SPresentation;->updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V

    goto :goto_2

    :cond_6
    iput-boolean v8, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_3

    :cond_7
    move v6, v7

    goto :goto_4

    :cond_8
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SPresentation$17;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$17;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v2, 0x4334

    iget-object v3, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    if-ne v5, p3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    :goto_1
    iget v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v5, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 4

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 10

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_3

    add-int/lit8 v4, v4, -0x1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected updateContainersOrder(Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, -0x1

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_1

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v6, -0x1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_7

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_6

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    :cond_3
    :goto_2
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v5, v6, :cond_8

    :cond_4
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    :goto_3
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v6, v5, :cond_0

    iput v5, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_0

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    move-result v0

    iput-boolean v9, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    if-nez v0, :cond_5

    const-string v6, "3DGlideMode"

    const-string v7, "[SPresentation] updateNewContainer() fail to set texture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_3

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    :cond_7
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v5, v6, v7

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v6

    if-ne v9, v6, :cond_9

    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3
.end method

.method protected updateViewLayout()V
    .locals 11

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v8

    iget v0, v8, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    iget v0, v8, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    add-int/2addr v2, v6

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    sub-int/2addr v3, v7

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    add-int/2addr v5, v9

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iget v10, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    add-int/2addr v9, v10

    sub-int/2addr v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    goto :goto_1
.end method
