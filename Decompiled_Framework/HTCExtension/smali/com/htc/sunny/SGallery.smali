.class public Lcom/htc/sunny/SGallery;
.super Lcom/htc/sunny/SAdapterView;
.source "SGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SGallery$13;,
        Lcom/htc/sunny/SGallery$OnScrollListener;,
        Lcom/htc/sunny/SGallery$AnimationInfo;,
        Lcom/htc/sunny/SGallery$INTERPOLATE;,
        Lcom/htc/sunny/SGallery$ItemContainer;,
        Lcom/htc/sunny/SGallery$DIRECTION;,
        Lcom/htc/sunny/SGallery$OnClickListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x9

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected mAdapter:Lcom/htc/sunny/SGalleryAdapter;

.field protected mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

.field protected mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

.field protected mClipSize:I

.field protected mContainerCount:I

.field protected mCurrentPosition:I

.field protected mDataCount:I

.field protected mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

.field protected mDividerHeight:I

.field protected mDividerTextureId:I

.field protected mDividerWidth:I

.field protected mEnableScrollBar:Z

.field protected mEnableSelector:Z

.field protected mEnabledClip:Z

.field protected mEnabledDivider:Z

.field protected mEndDataIndex:I

.field protected mForceLayout:Z

.field protected mGalleryState:I

.field protected mGalleryVisibility:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHashCode:I

.field protected mHeight_H:I

.field protected mIsBlockDown:Z

.field protected mIsBlockTop:Z

.field protected mIsOverBottomBoundary:Z

.field protected mIsOverTopBoundary:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mIsTouchable:Z

.field protected mIsVerticalGallery:Z

.field protected mItemBackgroundPressTextureId:I

.field protected mItemBackgroundRestTextureId:I

.field protected mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mLowerBoundPosition:I

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mPressedContainerId:I

.field protected mScrollBarView:Lcom/htc/sunny/SScrollBarView;

.field protected mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

.field protected mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSelectorRenderOrder:I

.field protected mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSpacing:I

.field protected mStartDataIndex:I

.field protected mTotalItemsLength:I

.field protected mUpperBoundPosition:I

.field protected mViewColumnCount:I

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mWidth_H:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny/SGallery;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 5

    const/16 v4, 0x28

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    new-instance v0, Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$AnimationInfo;-><init>(Lcom/htc/sunny/SGallery;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iput v3, p0, Lcom/htc/sunny/SGallery;->mViewColumnCount:I

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    iput v2, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    iput v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    iput v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    invoke-super {p0, p3}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    iput-boolean p3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

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
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method private updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {p1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny/SGalleryAdapter;->getView(Lcom/htc/sunny/SView;I)Lcom/htc/sunny/SView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected Get2DX(F)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method protected Get2DY(F)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected Get3DX(F)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    return v0
.end method

.method protected Get3DY(F)F
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected addNewContainers()V
    .locals 10

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    :goto_0
    iget v7, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-gt v4, v7, :cond_0

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v0, v3

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-ne v9, v7, :cond_5

    const/4 v1, 0x1

    :cond_4
    :goto_2
    if-ne v9, v1, :cond_6

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    aget-object v2, v0, v3

    if-eqz v2, :cond_8

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    move-object v6, v2

    :cond_7
    if-eqz v6, :cond_9

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v6, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    invoke-direct {p0, v6}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const-string v7, "3DGlideMode"

    const-string v8, "[SGallery] SGalleryaddNewContainers() can\'t find free container !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected caculateMeasurement()V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    goto :goto_1
.end method

.method protected createResource()V
    .locals 1

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    goto :goto_0
.end method

.method protected destroyContainers()V
    .locals 5

    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v4, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iput-boolean v4, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    iput v0, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->onUpR(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    iput v3, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    goto :goto_0
.end method

.method public enableScrollBar(Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$4;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableSelector(Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$6;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableVerticalDisplay(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    :cond_0
    return-void
.end method

.method protected flingR(I)V
    .locals 9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    if-lez p1, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v7, v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-ne v7, v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    const/16 v0, 0xbb8

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v7, v6, :cond_3

    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int v4, v6, v7

    :goto_1
    int-to-float v6, v4

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    const/4 v2, 0x0

    if-lez p1, :cond_4

    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    mul-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v3, v6, :cond_2

    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    const/4 v2, 0x1

    :cond_2
    :goto_2
    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int v4, v6, v7

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v3, v6, :cond_2

    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-nez v2, :cond_6

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    :goto_3
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_3
.end method

.method protected freeItemResource()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeScrollBar()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    return-void
.end method

.method protected freeScrollBar()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    :cond_0
    return-void
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

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
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v5

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

    invoke-direct {p0, v3}, Lcom/htc/sunny/SGallery;->getSpriteIndex(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F
    .locals 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v0, p2

    move v1, p3

    move v2, p4

    sget-object v7, Lcom/htc/sunny/SGallery$13;->$SwitchMap$com$htc$sunny$SGallery$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SGallery$INTERPOLATE;->ordinal()I

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

.method protected getRefineDuration(II)I
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method public hasAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homingR()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_3

    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-eq v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v3, v1, :cond_4

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    goto :goto_2
.end method

.method protected initContainers()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    iput v10, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-virtual {v5}, Lcom/htc/sunny/SGalleryAdapter;->getItemCount()I

    move-result v4

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    :goto_1
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-eq v4, v5, :cond_3

    iput v4, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->caculateMeasurement()V

    :cond_3
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v3, v5, 0x2

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setVisibility(Z)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ne v3, v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_d

    :cond_6
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_7

    iget v5, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initItemResource()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initScrollBar()V

    iput v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    new-array v5, v5, [Lcom/htc/sunny/SGallery$ItemContainer;

    iput-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    new-instance v0, Lcom/htc/sunny/SGallery$ItemContainer;

    iget-object v6, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, p0, v6, v7}, Lcom/htc/sunny/SGallery$ItemContainer;-><init>(Lcom/htc/sunny/SGallery;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v0, v5, v2

    invoke-virtual {p0, v0, v10}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;Z)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundDisplaySize(II)V

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v9, v5, :cond_8

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundImageByTexture(IIII)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setSelectorRenderOrder(I)V

    :cond_8
    invoke-virtual {v0, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->setTouchable(Z)V

    iget-object v5, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-direct {p0, v2}, Lcom/htc/sunny/SGallery;->getSpriteTag(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v2, v5, :cond_a

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    :goto_3
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v9, v5, :cond_9

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_9

    new-instance v1, Lcom/htc/sunny/SView;

    iget-object v5, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v1, v5, v6}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->addView(Lcom/htc/sunny/SView;Z)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-virtual {v1, v10, v5, v6, v7}, Lcom/htc/sunny/SView;->setBackgroundImageByTexture(IIII)V

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v11, v5, v11}, Lcom/htc/sunny/SView;->setPosition(FFF)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_3

    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    :cond_c
    iget v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_c

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v0, v5, v2

    if-eqz v0, :cond_e

    invoke-virtual {v0, v10}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected initItemResource()V
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v11, v8, :cond_1

    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_0

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v0, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_0
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v1, :cond_1

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v1, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_1
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v11, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v8, :cond_2

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108022f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    iget v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-static {v2, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iget-object v8, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_2
    return-void

    :cond_3
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v8, "list_selector_background_pressed"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    const-string v9, "list_selector_background_pressed"

    invoke-static {v8, v9, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_1
.end method

.method protected initScrollBar()V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    if-ne v3, v0, :cond_0

    new-instance v0, Lcom/htc/sunny/SScrollBarView;

    iget-object v1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SScrollBarView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$11;-><init>(Lcom/htc/sunny/SGallery;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 5

    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_3
.end method

.method protected notifyStateChange(I)V
    .locals 1

    const/16 v0, 0x9

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    :cond_0
    iput p1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$12;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    if-ltz v1, :cond_1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    return-void

    :cond_1
    const/4 v1, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onHomingAnimationEnd()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onFlingAnimationEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "3DGlideMode"

    const-string v3, "[SGallery] onDown()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery]  onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_0

    float-to-int v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    goto :goto_0
.end method

.method protected onFlingAnimationEnd()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    return-void
.end method

.method protected onHomingAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    iput v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    :cond_2
    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    move-result v0

    if-ne v2, v0, :cond_3

    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SGallery;->getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    :cond_1
    :goto_1
    sub-int v6, v7, v8

    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-ge v0, v7, :cond_6

    if-nez v6, :cond_5

    add-int/lit8 v7, v7, -0x1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-gt v7, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    :cond_3
    :goto_3
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_1

    :cond_5
    if-lez v6, :cond_2

    add-int/lit8 v7, v8, -0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-le v0, v7, :cond_a

    if-nez v6, :cond_9

    add-int/lit8 v7, v7, 0x1

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-lt v7, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_3

    :cond_9
    if-gez v6, :cond_8

    add-int/lit8 v7, v8, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v0, v9}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v2, v0, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onUpR(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    if-ne v4, v2, :cond_0

    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    if-ne v4, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v2, v2, v0

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    invoke-interface {v2, v1}, Lcom/htc/sunny/SGallery$OnClickListener;->onClick(I)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    return-void

    :cond_3
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-nez v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0
.end method

.method public renderAndUpdate3D()V
    .locals 2

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onScrollAnimation()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected resetUselessContainers()V
    .locals 6

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gt v5, v4, :cond_4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-le v4, v5, :cond_2

    :cond_4
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_1
.end method

.method protected scrollGallery(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v4, v3, :cond_6

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p2

    if-lez p2, :cond_5

    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    if-ne v4, v2, :cond_2

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    if-ne v4, v2, :cond_3

    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    :cond_3
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    const/4 v0, 0x1

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p1

    if-lez p1, :cond_7

    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1
.end method

.method public setAdapter(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$10;-><init>(Lcom/htc/sunny/SGallery;Lcom/htc/sunny/SGalleryAdapter;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SAdapterView;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    return-void
.end method

.method public setClipSize(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$5;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItemSize(II)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$7;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SGallery$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny/SGallery$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SGallery$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SGallery$9;-><init>(Lcom/htc/sunny/SGallery;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSelector(II)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/sunny/SGallery$1;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$3;-><init>(Lcom/htc/sunny/SGallery;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSelectorRenderOrder(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$2;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSpacing(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SGallery$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$8;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/16 v2, 0x9

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainerLayout()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v9

    if-eq v8, v9, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    if-ltz v8, :cond_4

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v8, v9, :cond_4

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v12, v8, :cond_3

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v5, v8

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->Get3DY(F)F

    move-result v7

    invoke-virtual {v1, v11, v7, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    :goto_2
    invoke-virtual {v1, v12}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1

    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v8

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v10, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->Get3DX(F)F

    move-result v6

    invoke-virtual {v1, v6, v11, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateAllContainersData()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->resetUselessContainers()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->addNewContainers()V

    return-void
.end method

.method protected updateNewPosition(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-lt v0, v1, :cond_4

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-lt v0, v1, :cond_5

    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_6

    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/sunny/SGallery$OnScrollListener;->onScroll(Lcom/htc/sunny/SGallery;III)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainersData()V

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainerLayout()V

    return-void

    :cond_4
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_7

    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    :cond_7
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    goto :goto_2
.end method

.method protected updateViewLayout()V
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v0

    if-ne v11, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v10

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_5

    iget v0, v10, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    if-ne v11, v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v9

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_5
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    :goto_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v0, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int v5, v0, v9

    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    iget v8, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrolledViewBoundary(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method
