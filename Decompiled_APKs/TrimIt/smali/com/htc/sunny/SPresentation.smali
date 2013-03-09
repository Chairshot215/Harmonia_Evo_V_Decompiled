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
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 179
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 180
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 181
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 182
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 183
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 184
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 185
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 188
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    .line 189
    iget v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 190
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    .line 191
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 192
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 193
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 194
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    .line 195
    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    .line 196
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    .line 243
    new-instance v0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    .line 244
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 245
    new-instance v0, Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    .line 246
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 248
    new-instance v0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    .line 249
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 251
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 252
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 253
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    .line 256
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 257
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 258
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 259
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mOldSelectedPos:I

    .line 260
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 261
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 262
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 263
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 265
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 266
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 268
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 269
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 270
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 271
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 273
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 274
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 277
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 278
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 279
    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    .line 281
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 282
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 283
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 284
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 285
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 286
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 287
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    .line 288
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    .line 289
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    .line 294
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny/SPresentation;->mClipSizeB:I

    .line 295
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 296
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 297
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnabledLargeSensorArea:Z

    .line 298
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 299
    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    .line 300
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 301
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    .line 302
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    .line 304
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 305
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 306
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 307
    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 310
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 314
    invoke-super {p0, v1}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 316
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 317
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 318
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 682
    if-gt p1, v0, :cond_0

    .line 683
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 678
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 734
    add-int/lit8 p0, p0, -0x1

    .line 735
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 736
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 737
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 738
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 739
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 740
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 2651
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 2659
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 2655
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected clear3DView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 323
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 325
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 326
    return-void
.end method

.method protected createGradualMask(III)V
    .locals 12
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "nBitmapResId"

    .prologue
    .line 744
    if-nez p3, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 747
    .local v11, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 748
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 749
    .local v7, bmpGradual:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 750
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 751
    .local v8, nBmpWidth:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 753
    .local v4, nBmpHeight:I
    if-lez v8, :cond_2

    if-gtz v4, :cond_3

    .line 754
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    const/4 v7, 0x0

    .line 756
    goto :goto_0

    .line 759
    :cond_3
    invoke-static {v8}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v10

    .line 760
    .local v10, nMaxWidth:I
    invoke-static {v4}, Lcom/htc/sunny/SPresentation;->nextPowerOf2(I)I

    move-result v9

    .line 762
    .local v9, nMaxHeight:I
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_4

    .line 763
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 764
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getGlobalRootNode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 771
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 772
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 773
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 774
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 776
    const/4 v0, 0x0

    invoke-static {v7, v10, v9, v0}, Lcom/htc/sunny/SunnyEngine;->createAlphaBitmap(Landroid/graphics/Bitmap;III)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 777
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 779
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 780
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 781
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualPosX:I

    .line 782
    iput p2, p0, Lcom/htc/sunny/SPresentation;->mGradualPosY:I

    .line 784
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->setGradualVisibility(Z)V

    .line 785
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 788
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 789
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 2130
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 2131
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 2133
    :goto_0
    return-void

    .line 2132
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    goto :goto_0
.end method

.method protected destroyAllResource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 687
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v4, :cond_0

    .line 711
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_2

    .line 690
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 691
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_1

    .line 690
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 692
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 693
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 694
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 695
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 696
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 697
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_2

    .line 701
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 702
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 703
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 704
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualTexture:I

    .line 705
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 706
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualSpirte:I

    .line 707
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    .line 708
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    .line 709
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v4}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 710
    iput v6, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2153
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 2155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2156
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2157
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

    .line 2180
    :cond_1
    :goto_0
    return-void

    .line 2161
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

    .line 2162
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 2164
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 2165
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

    .line 2169
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 2176
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->onUpW(Landroid/view/MotionEvent;)V

    .line 2177
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    .line 2178
    iput-boolean v3, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    goto :goto_0
.end method

.method protected enableAnimation(Z)V
    .locals 0
    .parameter "bEnalbed"

    .prologue
    .line 2387
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    .line 2388
    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0
    .parameter "enableHitFeedback"

    .prologue
    .line 2396
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    .line 2397
    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledOpeningAnimation:Z

    .line 609
    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 670
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    .line 671
    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2415
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    .line 2416
    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 651
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioH:F

    .line 652
    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 661
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mEnlargeSensorRatioW:F

    .line 662
    return-void
.end method

.method public fling(I)V
    .locals 1
    .parameter "nVelocity"

    .prologue
    .line 1508
    new-instance v0, Lcom/htc/sunny/SPresentation$14;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$14;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1513
    return-void
.end method

.method protected flingW(I)V
    .locals 11
    .parameter "nVelocity"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1517
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1518
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1625
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 1524
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 1529
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1530
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1531
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1533
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 1534
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 1535
    .local v0, VELOCITY_MAX:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1536
    .local v2, nMaxPosOffset:I
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

    .line 1537
    .local v4, nPosOffset:I
    move v3, v4

    .line 1539
    .local v3, nOrgPosOffset:I
    if-lez p1, :cond_b

    .line 1540
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    .line 1541
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1543
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    .line 1544
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    .line 1545
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    .line 1575
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    .line 1578
    .local v5, nTimeSlotOffset:I
    if-lez p1, :cond_12

    .line 1579
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1580
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    .line 1581
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1599
    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    .line 1600
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1606
    :goto_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    .line 1607
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1611
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

    .line 1613
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    .line 1614
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1616
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    .line 1617
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1547
    .end local v5           #nTimeSlotOffset:I
    :cond_8
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_1

    .line 1549
    :cond_9
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    .line 1550
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    .line 1551
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1553
    :cond_a
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1557
    :cond_b
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    .line 1558
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1560
    :cond_c
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    .line 1561
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    .line 1562
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1564
    :cond_d
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    .line 1566
    :cond_e
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    .line 1567
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    .line 1568
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    .line 1570
    :cond_f
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1582
    .restart local v5       #nTimeSlotOffset:I
    :cond_10
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    .line 1583
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1585
    :cond_11
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1588
    :cond_12
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1589
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    .line 1590
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1591
    :cond_13
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    .line 1592
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1594
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1602
    :cond_15
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    .line 1608
    :cond_16
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    .line 1609
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    .line 1621
    :cond_17
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1622
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1624
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2138
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2140
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    if-eqz v0, :cond_0

    .line 2141
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    invoke-static {v0}, Lcom/htc/sunny/SunnyEngine;->destroyBitmap(I)V

    .line 2142
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmp:I

    .line 2145
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 2146
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 2147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 2148
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 2149
    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 1965
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1974
    :goto_0
    return-object v1

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1968
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1967
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1970
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1974
    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;
    .locals 6
    .parameter "nUIPos"

    .prologue
    const/4 v4, 0x0

    .line 1952
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1961
    :goto_0
    return-object v1

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1955
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1954
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1957
    :cond_2
    iget v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1961
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 2636
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 2647
    :cond_0
    :goto_0
    return v1

    .line 2638
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 2639
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 2640
    goto :goto_0

    .line 2643
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SPresentation;->getSpriteIndex(I)I

    move-result v1

    .line 2644
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 2647
    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny/SView;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3
    .parameter "ContainerId"
    .parameter "n3DX"

    .prologue
    .line 2621
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2624
    :goto_0
    return v1

    .line 2623
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 2624
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SPresentation$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 2081
    const/4 v3, 0x0

    .line 2082
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2083
    .local v5, tc:F
    move v4, p1

    .line 2084
    .local v4, t:F
    move v0, p2

    .line 2085
    .local v0, b:F
    move v1, p3

    .line 2086
    .local v1, c:F
    move v2, p4

    .line 2088
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SPresentation$18;->$SwitchMap$com$htc$sunny$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2111
    :goto_0
    return v3

    .line 2090
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2091
    goto :goto_0

    .line 2093
    :pswitch_1
    div-float/2addr v4, v2

    .line 2094
    mul-float v6, v4, v4

    .line 2095
    mul-float v5, v6, v4

    .line 2096
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

    .line 2097
    goto :goto_0

    .line 2106
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

    .line 2107
    goto :goto_0

    .line 2088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3
    .parameter "pressedContainerId"
    .parameter "dispalcement"

    .prologue
    .line 2628
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2632
    :goto_0
    return v1

    .line 2630
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 2632
    .local v0, pos3DV:Lcom/htc/sunny/Vector3F;
    iget v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 1933
    if-gtz p1, :cond_0

    .line 1934
    const/4 p1, 0x2

    .line 1948
    .end local p1
    :cond_0
    return p1
.end method

.method public getSelection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1018
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return v0

    .line 1020
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    .line 1021
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    .line 1023
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1026
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 8
    .parameter "nBaseUIPos"
    .parameter "nOffsetX"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2536
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    .line 2617
    :cond_0
    :goto_0
    return v0

    .line 2538
    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    .line 2539
    goto :goto_0

    .line 2543
    :cond_3
    const/4 v0, 0x0

    .line 2544
    .local v0, nTimeSlotOffset:I
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_b

    .line 2546
    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    .line 2547
    goto :goto_0

    .line 2548
    :cond_5
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_8

    .line 2549
    cmpg-float v4, p2, v5

    if-gez v4, :cond_7

    .line 2550
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

    .line 2551
    .local v2, nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2594
    .end local v2           #nXInterval:F
    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2595
    .local v1, nVisibleItems:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_13

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_13

    .line 2596
    if-lez v0, :cond_12

    .line 2597
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    .line 2598
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .end local v1           #nVisibleItems:I
    :cond_7
    move v0, v3

    .line 2553
    goto :goto_0

    .line 2555
    :cond_8
    if-nez p1, :cond_a

    .line 2556
    cmpl-float v4, p2, v5

    if-lez v4, :cond_9

    .line 2557
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

    .line 2558
    .restart local v2       #nXInterval:F
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2559
    goto :goto_1

    .line 2560
    .end local v2           #nXInterval:F
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

    .line 2561
    .restart local v2       #nXInterval:F
    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    div-float/2addr v4, v2

    float-to-int v0, v4

    .line 2562
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-gtz v4, :cond_6

    move v0, v3

    .line 2563
    goto/16 :goto_0

    .line 2567
    .end local v2           #nXInterval:F
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

    .line 2571
    :cond_b
    if-ltz p1, :cond_c

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_d

    :cond_c
    move v0, v3

    .line 2572
    goto/16 :goto_0

    .line 2573
    :cond_d
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_f

    .line 2574
    cmpg-float v4, p2, v5

    if-gez v4, :cond_e

    .line 2575
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

    .line 2577
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

    .line 2578
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v0

    if-ltz v4, :cond_6

    move v0, v3

    .line 2579
    goto/16 :goto_0

    .line 2582
    :cond_f
    if-nez p1, :cond_11

    .line 2583
    cmpl-float v4, p2, v5

    if-lez v4, :cond_10

    .line 2584
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

    .line 2586
    goto/16 :goto_0

    .line 2589
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

    .line 2600
    .restart local v1       #nVisibleItems:I
    :cond_12
    if-gez v0, :cond_0

    .line 2601
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    .line 2602
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

    .line 2606
    :cond_13
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_14

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_14

    if-gez v0, :cond_14

    .line 2607
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    .line 2608
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

    .line 2611
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

    .line 2612
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 2613
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

    .prologue
    .line 2663
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

    .line 2664
    const/4 v0, 0x1

    .line 2666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1184
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    .line 1185
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1186
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1192
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    .line 1193
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1194
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    .line 1195
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1284
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1285
    .local v0, nDuration:I
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    .line 1286
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_BOUNCING:I

    .line 1291
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SPresentation;->getRefineDuration(II)I

    move-result v0

    .line 1293
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    .line 1294
    const/4 v0, 0x0

    .line 1297
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    .line 1298
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1303
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1304
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    .line 1305
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 1316
    :goto_3
    return-void

    .line 1196
    .end local v0           #nDuration:I
    :cond_4
    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 1198
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    .line 1199
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    .line 1200
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1202
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1205
    :cond_6
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1206
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    .line 1207
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1209
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1212
    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    .line 1213
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    .line 1214
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    .line 1215
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1217
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1220
    :cond_a
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1221
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    .line 1222
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1224
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1229
    :cond_c
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    .line 1230
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    .line 1231
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1235
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1233
    :cond_d
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_4

    .line 1237
    :cond_e
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    .line 1238
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1242
    :goto_5
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1240
    :cond_f
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_5

    .line 1247
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1248
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    .line 1249
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    .line 1250
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1251
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1253
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1254
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1256
    :cond_12
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    .line 1257
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    .line 1258
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1262
    :goto_6
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1263
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1260
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

    .line 1265
    :cond_14
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    .line 1266
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1267
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1268
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1270
    :cond_15
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    .line 1271
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    .line 1272
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

    .line 1276
    :goto_7
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1277
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1274
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

    .line 1280
    :cond_17
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1288
    .restart local v0       #nDuration:I
    :cond_18
    iget v0, p0, Lcom/htc/sunny/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    .line 1300
    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto/16 :goto_2

    .line 1309
    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1310
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1312
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    .line 1313
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1315
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 330
    return-void
.end method

.method protected initContainers(Z)V
    .locals 17
    .parameter "bForceUpdated"

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v1, :cond_2

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 336
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 340
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemCount()I

    move-result v13

    .line 341
    .local v13, nDataCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerCount()I

    move-result v10

    .line 342
    .local v10, containerCount:I
    if-eqz v13, :cond_3

    if-nez v10, :cond_4

    .line 343
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 344
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    goto :goto_0

    .line 350
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mViewNodeId:I

    if-nez v1, :cond_6

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->clear3DView()V

    .line 354
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_0

    .line 355
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 356
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 359
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_0

    .line 360
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 366
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

    .line 367
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->destroyAllResource()V

    .line 369
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 371
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-eq v13, v1, :cond_9

    .line 372
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_8

    .line 374
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 376
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_9

    .line 377
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 381
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-eq v10, v1, :cond_a

    .line 382
    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    .line 384
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mVisibleContainerCount:I

    .line 385
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    new-array v1, v1, [Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 386
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    .line 389
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_b

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 392
    .local v12, mShadowDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    invoke-static {v12, v1, v2}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v8

    .line 393
    .local v8, bmp:Lcom/htc/sunny/SBitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 394
    invoke-virtual {v8}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 399
    .end local v8           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v12           #mShadowDrawable:Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v11, v1, :cond_12

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    new-instance v9, Lcom/htc/sunny/SPresentation$ItemContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny/SPresentation;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2, v3}, Lcom/htc/sunny/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny/SPresentation;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v9, v1, v11

    .line 401
    .local v9, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 402
    iput v11, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 404
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v3, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny/SPresentationContainerLayout;)V

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/sunny/SPresentation;->addView(Lcom/htc/sunny/SView;)V

    .line 407
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v0, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mWidth:I

    move/from16 v16, v0

    .line 408
    .local v16, nWidth:I
    iget-object v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v15, v1, Lcom/htc/sunny/SPresentationContainerLayout;->mHeight:I

    .line 410
    .local v15, nHeight:I
    invoke-virtual {v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

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

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    neg-int v4, v15

    div-int/lit8 v7, v4, 0x2

    move/from16 v4, v16

    move v5, v15

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 422
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny/SPresentation;->mEnabledReflection:Z

    if-ne v1, v2, :cond_d

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    .line 424
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    if-nez v1, :cond_c

    .line 425
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 427
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

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

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

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

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v3, 0x4334

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorR:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorG:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny/SPresentation;->mReflectionColorB:I

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteAsShadow(IIIII)Z

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

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

    .line 440
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mResIdShadow:I

    if-eqz v1, :cond_e

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mShadowW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowH:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny/SPresentation;->mShadowTexture:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mShadowSprite:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny/SPresentation;->mPosX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny/SPresentation;->mPosY:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 447
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/htc/sunny/SPresentation;->getSpriteTag(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 449
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v11, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v14, v1, v2

    .line 450
    .local v14, nDataIndex:I
    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v14, v1, :cond_10

    .line 451
    iput v14, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 458
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

    .line 399
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 454
    :cond_10
    const/4 v1, -0x1

    iput v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    .line 458
    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    .line 461
    .end local v9           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v14           #nDataIndex:I
    .end local v15           #nHeight:I
    .end local v16           #nWidth:I
    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-lez v1, :cond_13

    .line 462
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

    .line 466
    .end local v11           #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v1, :cond_14

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 470
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 471
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 473
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

    .line 476
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mOpeningAnimationStart:Z

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny/SPresentation;->openingAnimation()V

    goto/16 :goto_0

    .line 479
    :cond_15
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 480
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    goto/16 :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    .prologue
    .line 2405
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

    .line 2407
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    .prologue
    .line 2411
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13
    .parameter "nTimeSlot"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1871
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    const/4 v10, -0x1

    .line 1874
    .local v10, nSkipCID:I
    if-lez p1, :cond_3

    .line 1875
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 1876
    .local v8, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 1877
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    .line 1888
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, nCurPos:I
    const/4 v4, 0x0

    .line 1889
    .local v4, nNextPos:I
    const/4 v7, 0x0

    .local v7, cid:I
    :goto_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_b

    .line 1890
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    .line 1891
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v8, :cond_5

    .line 1889
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1879
    .end local v3           #nCurPos:I
    .end local v4           #nNextPos:I
    .end local v7           #cid:I
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_3
    if-gez p1, :cond_4

    .line 1880
    invoke-virtual {p0, v11}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v8

    .line 1881
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 1882
    iget v10, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    .line 1885
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    .line 1893
    .restart local v3       #nCurPos:I
    .restart local v4       #nNextPos:I
    .restart local v7       #cid:I
    .restart local v8       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_5
    iget v3, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1894
    move v4, v3

    .line 1895
    if-gez p1, :cond_8

    .line 1896
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    .line 1900
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

    .line 1902
    if-ne v10, v7, :cond_9

    .line 1903
    iput-boolean v12, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    .line 1908
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

    .line 1897
    :cond_8
    if-lez p1, :cond_6

    .line 1898
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    .line 1905
    :cond_9
    iput-boolean v11, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_5

    :cond_a
    move v0, v11

    .line 1908
    goto :goto_6

    .line 1911
    .end local v8           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_b
    if-nez p1, :cond_0

    .line 1913
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v9

    .line 1914
    .local v9, focusContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, v9, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mFocusPosV:Lcom/htc/sunny/Vector3F;

    goto :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5
    .parameter "nTimeSlot"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1087
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1089
    .local v0, newDirection:Lcom/htc/sunny/SPresentation$DIRECTION;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    .line 1090
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    .line 1091
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1096
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    .line 1097
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1110
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    .line 1111
    const/4 p1, 0x0

    .line 1112
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1115
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1116
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 1125
    :goto_2
    return-void

    .line 1093
    :cond_2
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0

    .line 1098
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    .line 1099
    iput v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 1100
    :cond_4
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    .line 1101
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1103
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 1104
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    .line 1105
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1107
    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 1120
    :cond_6
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    .line 1121
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 1122
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->moveContainers(I)V

    .line 1124
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 854
    new-instance v0, Lcom/htc/sunny/SPresentation$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$7;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 872
    new-instance v0, Lcom/htc/sunny/SPresentation$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$8;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 2

    .prologue
    .line 862
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 866
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 867
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 868
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 3
    .parameter "nSelection"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-nez v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 881
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

    .line 882
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->initContainers(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 885
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 886
    const-string v0, "3DGlideMode"

    const-string v1, "notifyDataSetChangedW() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 3
    .parameter "eDirection"

    .prologue
    .line 1048
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1051
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1071
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1073
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1074
    .local v0, nSelectionPos:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    .line 1075
    const/4 v0, 0x0

    .line 1082
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1084
    .end local v0           #nSelectionPos:I
    :goto_2
    return-void

    .line 1054
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    .line 1056
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    .line 1057
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 1059
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V

    goto :goto_2

    .line 1064
    :cond_3
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    .line 1065
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1066
    :cond_4
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    .line 1067
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1076
    .restart local v0       #nSelectionPos:I
    :cond_5
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    .line 1077
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 1079
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1030
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 1031
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationSelectionChange(I)V

    .line 1034
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1037
    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1040
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    .line 1041
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationStateChange(I)V

    .line 1044
    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 895
    new-instance v0, Lcom/htc/sunny/SPresentation$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$9;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 8
    .parameter "nPos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 903
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-nez v5, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v2

    .line 907
    .local v2, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v2, :cond_6

    .line 908
    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_7

    iget v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_7

    .line 910
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v5, p1}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v0

    .line 911
    .local v0, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v0, :cond_3

    .line 912
    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 913
    .local v1, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 914
    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 915
    iput-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 917
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 919
    .end local v1           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_3
    iput-boolean v3, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 925
    .end local v0           #bmp:Lcom/htc/sunny/SBitmap;
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

    .line 927
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 921
    :cond_7
    iput-boolean v4, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 922
    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_1
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    .line 2039
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 2040
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimationEnd()V

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 2042
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    .line 2043
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 2044
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    .line 2045
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelfEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 2348
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2361
    :cond_0
    :goto_0
    return v2

    .line 2354
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    .line 2355
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2358
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2359
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2366
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->flingW(I)V

    .line 2370
    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2055
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2056
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2063
    :goto_0
    return-void

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2059
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2060
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    .prologue
    .line 1978
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 1979
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2116
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 2118
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    .line 2119
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    .line 2121
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewWidth_H:I

    .line 2122
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation;->mViewHeight_H:I

    .line 2123
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    .line 2125
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2126
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 2497
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_0

    .line 2498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 2499
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 2500
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_0

    .line 2501
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$OnItemLongClickListener;->onPresentationItemLongClick(I)V

    .line 2506
    .end local v0           #nContainerId:I
    :cond_0
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    .prologue
    .line 1668
    const/4 v2, 0x0

    .line 1669
    .local v2, nRStartY:F
    const/high16 v9, -0x3c4c

    .line 1671
    .local v9, nREndY:F
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    .line 1672
    const/high16 v9, 0x43b4

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 1676
    .local v7, nContainerId:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    .line 1705
    :cond_1
    :goto_0
    return-void

    .line 1680
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 1681
    .local v6, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-eqz v6, :cond_1

    .line 1683
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    .line 1684
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v2, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 1685
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1689
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 1691
    const/4 v8, 0x0

    .line 1693
    .local v8, nNextRY:F
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    .line 1696
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

    .line 1700
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iput v8, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 1703
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

    .line 1697
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    .line 1698
    move v8, v9

    goto :goto_1

    .line 1703
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1709
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 1710
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1711
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 1712
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2420
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    .line 2421
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

    .line 2436
    :goto_0
    return v0

    .line 2425
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 2426
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2430
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2431
    .local v7, nStart2DX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2433
    .local v8, nStart2DY:F
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

    .line 2435
    iput-boolean v10, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    .line 2436
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1984
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 1985
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2034
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 1990
    const/4 v9, 0x0

    .line 1991
    .local v9, nTimeSlotOffset:I
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

    .line 1992
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

    .line 1993
    .local v7, nCurTimeSlot:I
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

    .line 1995
    .local v8, nPreTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1996
    sub-int v0, v7, v8

    neg-int v9, v0

    .line 2005
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    .line 2007
    .local v6, nAccuracy:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2008
    sub-int/2addr v9, v6

    .line 2013
    :cond_1
    :goto_2
    if-nez v9, :cond_6

    .line 2014
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    .line 2015
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto :goto_0

    .line 1997
    .end local v6           #nAccuracy:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    .line 1998
    sub-int v9, v7, v8

    goto :goto_1

    .line 2000
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    .line 2001
    const-string v0, "3DGlideMode"

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2009
    .restart local v6       #nAccuracy:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    .line 2010
    add-int/2addr v9, v6

    goto :goto_2

    .line 2017
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    .line 2018
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    .line 2022
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2033
    .end local v6           #nAccuracy:I
    .end local v7           #nCurTimeSlot:I
    .end local v8           #nPreTimeSlot:I
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    .line 2024
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    .line 2025
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    .line 2026
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    .line 2027
    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 2028
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2066
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateBouncingState()V

    .line 2068
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2069
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 2071
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 2078
    :goto_0
    return-void

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2075
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2076
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10
    .parameter "n2DX1"
    .parameter "n2DY1"
    .parameter "n2DX2"
    .parameter "n2DY2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2442
    invoke-virtual {p0, p3}, Lcom/htc/sunny/SPresentation;->Get3DX(I)I

    move-result v1

    .line 2444
    .local v1, n3DX2:I
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-ne v7, v8, :cond_0

    .line 2445
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v7

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 2446
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v7, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 2449
    :cond_0
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_7

    .line 2450
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v8, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget v8, v8, Lcom/htc/sunny/SPresentation$ItemContainer;->mTouchSprite:I

    invoke-virtual {v7, v8}, Lcom/htc/sunny/SunnyEngine;->getSpritePosition(I)Lcom/htc/sunny/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    .line 2451
    .local v5, nPrevious3DX:F
    int-to-float v2, v1

    .line 2453
    .local v2, nNext3DX:F
    sub-float v3, v2, v5

    .line 2454
    .local v3, nOffsetX:F
    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_1

    .line 2455
    const/4 v7, 0x1

    .line 2492
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    :goto_0
    return v7

    .line 2458
    .restart local v2       #nNext3DX:F
    .restart local v3       #nOffsetX:F
    .restart local v5       #nPrevious3DX:F
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    .line 2460
    .local v6, nTimeSlotOffset:I
    const/4 v0, 0x0

    .line 2461
    .local v0, bLimitScroll:Z
    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 2462
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_4

    if-lez v6, :cond_4

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_4

    .line 2463
    const/4 v0, 0x1

    .line 2468
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 2469
    iget v7, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 2470
    .local v4, nOneItemLimitTimeSlot:I
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_3

    .line 2471
    if-lez v6, :cond_5

    .line 2472
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    .line 2479
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_3
    :goto_2
    if-nez v6, :cond_6

    .line 2480
    const/4 v7, 0x1

    goto :goto_0

    .line 2464
    :cond_4
    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_2

    if-gez v6, :cond_2

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_2

    .line 2465
    const/4 v0, 0x1

    goto :goto_1

    .line 2474
    .restart local v4       #nOneItemLimitTimeSlot:I
    :cond_5
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    .line 2483
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_6
    iget-object v7, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 2485
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2487
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->scrollByOffset(I)V

    .line 2489
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2492
    .end local v0           #bLimitScroll:Z
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    .end local v6           #nTimeSlotOffset:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 2510
    const-string v1, "3DGlideMode"

    const-string v2, "[SPresentation] onShowPress()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2520
    :goto_0
    return-void

    .line 2515
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 2516
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 2517
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->press(I)V

    .line 2519
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 2524
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2529
    :goto_0
    return v1

    .line 2528
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2302
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressContainerId:I

    .line 2303
    iput v4, p0, Lcom/htc/sunny/SPresentation;->mPressStartSelectedPos:I

    .line 2305
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->reset()V

    .line 2307
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v3, v1, :cond_4

    .line 2313
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    if-ne v3, v1, :cond_7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_7

    .line 2314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SPresentation;->getContainerId(II)I

    move-result v0

    .line 2315
    .local v0, nContainerId:I
    if-eq v4, v0, :cond_2

    .line 2316
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v1, v2, :cond_5

    .line 2317
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    if-eqz v1, :cond_1

    .line 2318
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-interface {v1, v2}, Lcom/htc/sunny/SPresentation$PresentationListener;->onPresentationItemClick(I)V

    .line 2320
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    .line 2342
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mIsSingleTapUp:Z

    .line 2344
    :cond_3
    :goto_1
    return-void

    .line 2309
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledTouchEvent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2322
    .restart local v0       #nContainerId:I
    :cond_5
    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v1, :cond_6

    .line 2323
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 2325
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 2329
    .end local v0           #nContainerId:I
    :cond_7
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_8

    .line 2330
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2331
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0

    .line 2332
    :cond_8
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-eq v1, v2, :cond_2

    .line 2334
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-nez v1, :cond_2

    .line 2335
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2336
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    .prologue
    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    .line 520
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    .line 521
    .local v4, nCenterPos:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v4}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 522
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    new-instance v5, Lcom/htc/sunny/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    .line 525
    .local v5, startScale:Lcom/htc/sunny/Vector3F;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    .line 526
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    .line 527
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 525
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 529
    :cond_0
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 530
    invoke-virtual {v1, v9}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 531
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 532
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v8, v8, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 534
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 535
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    if-ne v4, v3, :cond_1

    .line 536
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 537
    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 538
    new-instance v6, Lcom/htc/sunny/SPresentation$3;

    invoke-direct {v6, p0}, Lcom/htc/sunny/SPresentation$3;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 556
    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 557
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setFillAfter(Z)V

    .line 558
    sget-object v6, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 559
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    goto :goto_1

    .line 552
    :cond_1
    iget-object v6, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 553
    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    .line 561
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    .prologue
    .line 565
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;

    move-result-object v2

    .line 567
    .local v2, focusLayout:Lcom/htc/sunny/SPresentationContainerLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    .line 568
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    .line 569
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    new-instance v0, Lcom/htc/sunny/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny/SAnimationController;-><init>()V

    .line 570
    .local v0, animationController:Lcom/htc/sunny/SAnimationController;
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setPositionAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 571
    iget-object v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setAlphaAnimation(II)V

    .line 572
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setRotationAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 573
    iget-object v4, v2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setScaleAnimation(Lcom/htc/sunny/Vector3F;Lcom/htc/sunny/Vector3F;)V

    .line 574
    sget-object v4, Lcom/htc/sunny/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setInterpolator(Lcom/htc/sunny/SAnimationController$INTERPOLATOR;)V

    .line 575
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny/SAnimationController;->setDuration(J)V

    .line 576
    if-nez v3, :cond_0

    .line 577
    new-instance v4, Lcom/htc/sunny/SPresentation$4;

    invoke-direct {v4, p0}, Lcom/htc/sunny/SPresentation$4;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny/SAnimationController;->setAnimationListener(Lcom/htc/sunny/SAnimationController$AnimationListener;)V

    .line 590
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny/SAnimationController;)V

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    .end local v0           #animationController:Lcom/htc/sunny/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_1
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2183
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 2185
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2205
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->animate()V

    .line 2206
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    .line 2208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 2209
    const-string v0, "3DGlideMode"

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_1
    return-void

    .line 2193
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onScrollAnimation()V

    .line 2194
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2197
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onRotateSelf()V

    .line 2198
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 2186
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
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    .line 1633
    new-instance v0, Lcom/htc/sunny/SPresentation$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$15;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1638
    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1642
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1643
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1665
    :goto_0
    return-void

    .line 1647
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v0

    .line 1648
    .local v0, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v0, :cond_1

    .line 1649
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1653
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1655
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nArgs:I

    .line 1656
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1657
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1658
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1659
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1661
    iput-boolean p2, p0, Lcom/htc/sunny/SPresentation;->mRotateClockwise:Z

    .line 1662
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1663
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 1664
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method protected scrollByOffset(I)V
    .locals 1
    .parameter "nTimeSlotOffset"

    .prologue
    .line 1175
    if-lez p1, :cond_1

    .line 1176
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1180
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 1181
    return-void

    .line 1177
    :cond_1
    if-gez p1, :cond_0

    .line 1178
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1418
    new-instance v0, Lcom/htc/sunny/SPresentation$13;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$13;-><init>(Lcom/htc/sunny/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1423
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1322
    new-instance v0, Lcom/htc/sunny/SPresentation$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$11;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1327
    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1330
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1331
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1363
    :goto_0
    return-void

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1336
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1342
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1343
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1344
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1356
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1357
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1358
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1360
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1362
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1348
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    goto :goto_0

    .line 1350
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1351
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1352
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

    .prologue
    .line 1369
    new-instance v0, Lcom/htc/sunny/SPresentation$12;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$12;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1374
    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 1377
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1378
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1412
    :goto_0
    return-void

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1383
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1389
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1391
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1392
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nInFrame:I

    .line 1393
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 1405
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1406
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1407
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1409
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1411
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0

    .line 1395
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1397
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1399
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1401
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
    .parameter "nPos"

    .prologue
    const/16 v6, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1426
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

    .line 1427
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    .line 1429
    .local v0, nOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    .line 1432
    :cond_0
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1433
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

    .line 1505
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1438
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1439
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() -2 disable animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1443
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->init(IIII)V

    .line 1445
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1446
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 1447
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    .line 1450
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1451
    .local v1, nPosOffset:I
    iget v3, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    .line 1453
    .local v2, nTimeSlotOffset:I
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 1455
    if-gez v0, :cond_9

    .line 1456
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1457
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    .line 1458
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1476
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1478
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    .line 1479
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1483
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

    .line 1485
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    .line 1486
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1489
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 1491
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    .line 1492
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1459
    :cond_7
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    .line 1460
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1462
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1465
    :cond_9
    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 1466
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    .line 1467
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1468
    :cond_a
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    .line 1469
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1471
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1480
    :cond_c
    iget v3, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    .line 1481
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    .line 1496
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1497
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny/SPresentation$INTERPOLATE;

    .line 1498
    iget-object v3, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny/SPresentation$AnimationInfo;->type:I

    .line 1500
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 1501
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->enabledTouchEvent(Z)V

    .line 1503
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 1504
    const-string v3, "3DGlideMode"

    const-string v4, "scrollToW() - "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 799
    new-instance v0, Lcom/htc/sunny/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$6;-><init>(Lcom/htc/sunny/SPresentation;Lcom/htc/sunny/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 804
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->stopAnimation()V

    .line 809
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 813
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    .line 814
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    .line 815
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SPresentation;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 816
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 819
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    .line 821
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->initContainers()V

    .line 823
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 824
    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 1723
    new-instance v0, Lcom/htc/sunny/SPresentation$16;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SPresentation$16;-><init>(Lcom/htc/sunny/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1732
    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3
    .parameter "nRatio"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 635
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 636
    iput v1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    .line 642
    :goto_0
    return-void

    .line 637
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 638
    iput v2, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    .line 640
    :cond_1
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setGradualReflection(ILcom/htc/sunny/Vector3F;)V
    .locals 1
    .parameter "nBitmapResId"
    .parameter "translation"

    .prologue
    .line 714
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mGradualBmpResId:I

    .line 715
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGradualTranslation:Lcom/htc/sunny/Vector3F;

    invoke-virtual {v0, p2}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    .line 716
    return-void
.end method

.method public setGradualVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 721
    :cond_0
    new-instance v0, Lcom/htc/sunny/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SPresentation$5;-><init>(Lcom/htc/sunny/SPresentation;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setItemShadow(IIIII)V
    .locals 7
    .parameter "nPressResId"
    .parameter "nPosX"
    .parameter "nPosY"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 486
    new-instance v0, Lcom/htc/sunny/SPresentation$1;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SPresentation$1;-><init>(Lcom/htc/sunny/SPresentation;IIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/sunny/SPresentation$OnItemLongClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 833
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    .line 834
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemLongClickListener:Lcom/htc/sunny/SPresentation$OnItemLongClickListener;

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/htc/sunny/SPresentation$PresentationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 846
    iput-object p1, p0, Lcom/htc/sunny/SPresentation;->mEventListener:Lcom/htc/sunny/SPresentation$PresentationListener;

    .line 847
    return-void
.end method

.method public setReflectionColor(III)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 500
    new-instance v0, Lcom/htc/sunny/SPresentation$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SPresentation$2;-><init>(Lcom/htc/sunny/SPresentation;III)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 516
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .parameter "nGap"

    .prologue
    .line 626
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionGap:I

    .line 627
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0
    .parameter "nReflectionHeight"

    .prologue
    .line 617
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mReflectionHeight:I

    .line 618
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "nUIPos"
    .parameter "bAnimated"

    .prologue
    .line 937
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

    .line 938
    new-instance v0, Lcom/htc/sunny/SPresentation$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SPresentation$10;-><init>(Lcom/htc/sunny/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 943
    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 9
    .parameter "position"
    .parameter "bAnimated"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 946
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

    .line 947
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    .line 948
    :cond_0
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    return-void

    .line 952
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 953
    const/4 p2, 0x0

    .line 957
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 958
    .local v3, itemContainer:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-ne v7, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    .line 959
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

    .line 960
    iget v4, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 964
    :cond_3
    iput p1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    .line 965
    sget-object v4, Lcom/htc/sunny/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny/SPresentation;->mDirection:Lcom/htc/sunny/SPresentation$DIRECTION;

    .line 967
    iget-object v4, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    if-ne v7, v4, :cond_8

    .line 968
    const/4 v2, -0x1

    .line 969
    .local v2, dataIndex:I
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_1
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    .line 970
    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v1

    .line 971
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v1, :cond_4

    .line 969
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 973
    :cond_4
    iget v4, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    .line 975
    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    .line 976
    :cond_5
    iput-boolean v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 977
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 979
    :cond_6
    iput-boolean v8, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 980
    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 984
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateAllContainersData()V

    .line 987
    .end local v0           #cid:I
    .end local v2           #dataIndex:I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/sunny/SPresentation;->moveToTimeSlot(I)V

    .line 988
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SPresentation;->updateContainersOrder(Z)V

    .line 990
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SPresentation;->notifySelectionChange(I)V

    .line 991
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 992
    const-string v4, "3DGlideMode"

    const-string v5, "setSelectionW() -3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2383
    iput-boolean p1, p0, Lcom/htc/sunny/SPresentation;->mShiftOneItem:Z

    .line 2384
    return-void
.end method

.method public stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x12

    .line 2673
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 2675
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_1

    .line 2676
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2677
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2678
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2698
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/sunny/SPresentation;->enableAnimation(Z)V

    .line 2699
    return-void

    .line 2679
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_2

    .line 2680
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2681
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2682
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2683
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_3

    .line 2684
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2685
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2686
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2687
    :cond_3
    const/16 v0, 0x9

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_4

    .line 2688
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2689
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2690
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2691
    :cond_4
    const/16 v0, 0xb

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_0

    .line 2692
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationInfo:Lcom/htc/sunny/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation$AnimationInfo;->reset()V

    .line 2693
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    .line 2694
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SPresentation;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainersData()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1826
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1828
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v3, v0, v4

    .line 1829
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 1828
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1831
    :cond_2
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v6, :cond_6

    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    iget v9, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v6, v9, :cond_6

    .line 1832
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v6, v9}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 1833
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_4

    .line 1834
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 1835
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1836
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 1838
    :cond_3
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    .line 1840
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_4
    iput-boolean v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1845
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
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

    .line 1842
    :cond_6
    iput-boolean v8, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1843
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_3

    :cond_7
    move v6, v7

    .line 1845
    goto :goto_4

    .line 1848
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_8
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 1849
    iput-boolean v8, p0, Lcom/htc/sunny/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    .prologue
    .line 1853
    new-instance v0, Lcom/htc/sunny/SPresentation$17;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SPresentation$17;-><init>(Lcom/htc/sunny/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1867
    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1921
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    .line 1922
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    .line 1930
    :goto_0
    return-void

    .line 1923
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    .line 1924
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 1925
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    .line 1926
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 1928
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny/SPresentation$ItemContainer;Lcom/htc/sunny/SPresentationContainerLayout;Z)V
    .locals 6
    .parameter "container"
    .parameter "layout"
    .parameter "bForceHidden"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2702
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2703
    :cond_1
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 2705
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setRotation(FFF)V

    .line 2706
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p1, Lcom/htc/sunny/SPresentation$ItemContainer;->mReflectSprite:I

    const/high16 v2, 0x4334

    iget-object v3, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 2708
    iget-object v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v1, v1, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->setScale(FFF)V

    .line 2710
    if-ne v5, p3, :cond_2

    .line 2711
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    .line 2715
    :goto_1
    iget v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setAlpha(I)V

    .line 2717
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v5, v0, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateViewLayout()V

    goto :goto_0

    .line 2713
    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 4
    .parameter "eNextDirection"

    .prologue
    .line 1814
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    .line 1815
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 1816
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1818
    .end local v0           #cid:I
    :cond_0
    sget-object v1, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    .line 1819
    const/4 v0, 0x0

    .restart local v0       #cid:I
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 1820
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

    .line 1819
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1823
    .end local v0           #cid:I
    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 10

    .prologue
    .line 1153
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v6, :cond_1

    .line 1172
    :cond_0
    return-void

    .line 1155
    :cond_1
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    .line 1156
    .local v4, nCenterPos:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    .line 1157
    .local v5, nHalfTimeSlot:I
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1159
    .local v1, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_3

    .line 1162
    add-int/lit8 v4, v4, -0x1

    .line 1163
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1164
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1166
    .end local v0           #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_0

    .line 1167
    add-int/lit8 v4, v4, 0x1

    .line 1168
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1169
    .restart local v1       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mParentNode:I

    iget v8, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    iget v9, v1, Lcom/htc/sunny/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 1168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected updateContainersOrder(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    const/4 v0, 0x0

    .line 1133
    .local v0, nRegion:I
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    .line 1134
    const/4 v0, 0x1

    .line 1139
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    .line 1140
    iput v0, p0, Lcom/htc/sunny/SPresentation;->mReorderRegion:I

    .line 1141
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1142
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1136
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1143
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    .line 1144
    iget v1, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny/SPresentation;->mReorderItem:I

    .line 1145
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1146
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny/SPresentation$DIRECTION;)V
    .locals 10
    .parameter "eNextDirection"

    .prologue
    const/4 v9, 0x1

    .line 1756
    const/4 v4, -0x1

    .line 1758
    .local v4, nLayoutPos:I
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_1

    .line 1759
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v6, -0x1

    .line 1766
    :goto_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny/SPresentation$ItemContainer;

    move-result-object v3

    .line 1767
    .local v3, container:Lcom/htc/sunny/SPresentation$ItemContainer;
    if-nez v3, :cond_2

    .line 1811
    .end local v3           #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_0
    :goto_1
    return-void

    .line 1760
    :cond_1
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_0

    .line 1761
    const/4 v4, 0x0

    goto :goto_0

    .line 1769
    .restart local v3       #container:Lcom/htc/sunny/SPresentation$ItemContainer;
    :cond_2
    const/4 v5, -0x1

    .line 1771
    .local v5, nNewDataIndex:I
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_7

    .line 1772
    iget v5, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 1773
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_6

    .line 1774
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    .line 1782
    :cond_3
    :goto_2
    if-ltz v5, :cond_4

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-lt v5, v6, :cond_8

    .line 1783
    :cond_4
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1784
    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 1793
    :goto_3
    iget v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v6, v5, :cond_0

    .line 1794
    iput v5, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mDataIndex:I

    .line 1795
    if-ltz v5, :cond_0

    iget v6, p0, Lcom/htc/sunny/SPresentation;->mDataCount:I

    if-ge v5, v6, :cond_0

    .line 1796
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mAdapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    .line 1797
    .local v1, bmp:Lcom/htc/sunny/SBitmap;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v6, :cond_0

    .line 1798
    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->cloneSBitmap()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    .line 1799
    .local v2, bmpClone:Lcom/htc/sunny/SBitmap;
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1800
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v7, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mImageTexture:I

    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    move-result v0

    .line 1801
    .local v0, bRes:Z
    iput-boolean v9, p0, Lcom/htc/sunny/SPresentation;->mIsFirstRender:Z

    .line 1802
    if-nez v0, :cond_5

    .line 1803
    const-string v6, "3DGlideMode"

    const-string v7, "[SPresentation] updateNewContainer() fail to set texture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    .end local v0           #bRes:Z
    :cond_5
    invoke-virtual {v2}, Lcom/htc/sunny/SBitmap;->releaseClone()V

    goto :goto_1

    .line 1775
    .end local v1           #bmp:Lcom/htc/sunny/SBitmap;
    .end local v2           #bmpClone:Lcom/htc/sunny/SBitmap;
    :cond_6
    sget-object v6, Lcom/htc/sunny/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny/SPresentation$DIRECTION;

    if-ne v6, p1, :cond_3

    .line 1776
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    .line 1779
    :cond_7
    iget v6, p0, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    iget v7, p0, Lcom/htc/sunny/SPresentation;->mSelectedPos:I

    add-int v5, v6, v7

    goto :goto_2

    .line 1786
    :cond_8
    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v6

    if-ne v9, v6, :cond_9

    iget-object v6, p0, Lcom/htc/sunny/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny/SPresentation$FakeAnimationControl;

    invoke-virtual {v6, v5}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v6

    if-ne v9, v6, :cond_9

    .line 1787
    iput-boolean v9, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 1789
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/htc/sunny/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3
.end method

.method protected updateViewLayout()V
    .locals 11

    .prologue
    .line 1736
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 1738
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1740
    :cond_0
    const/4 v6, 0x0

    .local v6, nOffsetX:I
    const/4 v7, 0x0

    .line 1741
    .local v7, nOffsetY:I
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1742
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v1}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1743
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v8

    .line 1744
    .local v8, v:Lcom/htc/sunny/Vector3F;
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 1745
    iget v0, v8, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    .line 1752
    .end local v8           #v:Lcom/htc/sunny/Vector3F;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SPresentation;->mViewNodeId:I

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

    .line 1748
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v6, v0

    .line 1749
    iget-object v0, p0, Lcom/htc/sunny/SPresentation;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v7, v0

    goto :goto_1
.end method
