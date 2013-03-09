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
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/sunny/SGallery;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 5
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bEnableClip"

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 117
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 118
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 119
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 120
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 155
    new-instance v0, Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$AnimationInfo;-><init>(Lcom/htc/sunny/SGallery;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    .line 157
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 158
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 159
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 160
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 161
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 162
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    .line 165
    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 166
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 167
    iput v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 168
    iput v3, p0, Lcom/htc/sunny/SGallery;->mViewColumnCount:I

    .line 169
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 171
    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 172
    iput v2, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 174
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 175
    iput v2, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 176
    iput v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 177
    iput v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 178
    iput v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 180
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    .line 185
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 186
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 187
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 188
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 189
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 190
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 191
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 195
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 196
    iput v2, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    .line 197
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    .line 198
    iput v2, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    .line 199
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    .line 200
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    .line 201
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    .line 202
    iput v2, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    .line 203
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 204
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    .line 205
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    .line 206
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    .line 207
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    .line 208
    iput v4, p0, Lcom/htc/sunny/SGallery;->DURATION_HOMING:I

    .line 209
    const/16 v0, 0x64

    iput v0, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    .line 237
    invoke-super {p0, p3}, Lcom/htc/sunny/SAdapterView;->enableMaskNode(Z)V

    .line 238
    iput-boolean p3, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    .line 240
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 241
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 242
    return-void
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 738
    if-gt p1, v0, :cond_0

    .line 739
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 734
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method private updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 837
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v0, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {p1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny/SGalleryAdapter;->getView(Lcom/htc/sunny/SView;I)Lcom/htc/sunny/SView;

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected Get2DX(F)F
    .locals 1
    .parameter "n3DX"

    .prologue
    .line 1395
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    return v0
.end method

.method protected Get2DY(F)F
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 1391
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected Get3DX(F)F
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 1403
    iget v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    return v0
.end method

.method protected Get3DY(F)F
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 1399
    iget v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method protected addNewContainers()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 502
    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v7, :cond_1

    .line 543
    :cond_0
    return-void

    .line 504
    :cond_1
    iget v4, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .local v4, index:I
    :goto_0
    iget v7, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-gt v4, v7, :cond_0

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, bUpdated:Z
    const/4 v6, 0x0

    .line 508
    .local v6, updatedContainer:Lcom/htc/sunny/SGallery$ItemContainer;
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v2, v0, v3

    .line 509
    .local v2, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v2, :cond_3

    .line 508
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-ne v9, v7, :cond_5

    .line 512
    const/4 v1, 0x1

    .line 520
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_4
    :goto_2
    if-ne v9, v1, :cond_6

    .line 504
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_5
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->isValid()Z

    move-result v7

    if-nez v7, :cond_2

    .line 515
    move-object v6, v2

    .line 516
    goto :goto_2

    .line 524
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_6
    if-nez v6, :cond_7

    .line 526
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_7

    aget-object v2, v0, v3

    .line 527
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v2, :cond_8

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_8

    .line 528
    move-object v6, v2

    .line 535
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_7
    if-eqz v6, :cond_9

    .line 536
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v6, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 537
    invoke-direct {p0, v6}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    goto :goto_3

    .line 526
    .restart local v2       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 539
    .end local v2           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_9
    const-string v7, "3DGlideMode"

    const-string v8, "[SGallery] SGalleryaddNewContainers() can\'t find free container !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected caculateMeasurement()V
    .locals 3

    .prologue
    .line 564
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_3

    .line 565
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 566
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 567
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

    .line 568
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 582
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-le v0, v1, :cond_5

    .line 583
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 588
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 591
    :cond_1
    return-void

    .line 570
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingTop:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 573
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 574
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mSpacing:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    .line 575
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

    .line 576
    iget v0, p0, Lcom/htc/sunny/SGallery;->mTotalItemsLength:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 578
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SGallery;->mPaddingLeft:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    goto :goto_0

    .line 584
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v0, v1, :cond_0

    .line 585
    iget v0, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iput v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    goto :goto_1
.end method

.method protected createResource()V
    .locals 1

    .prologue
    .line 1099
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->createResource()V

    .line 1100
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsSurfaceBinded:Z

    if-nez v0, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    goto :goto_0
.end method

.method protected destroyContainers()V
    .locals 5

    .prologue
    .line 743
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 745
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_0

    .line 744
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    goto :goto_1

    .line 749
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 750
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 751
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 752
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1118
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 1120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v4, v1, :cond_0

    .line 1123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1124
    .local v0, nContainerId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 1125
    iput-boolean v4, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1126
    iput v0, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1130
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1135
    .end local v0           #nContainerId:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v1, :cond_2

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1137
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_1

    .line 1140
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->onUpR(Landroid/view/MotionEvent;)V

    .line 1141
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    .line 1142
    iput v3, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    goto :goto_0
.end method

.method public enableScrollBar(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 594
    new-instance v0, Lcom/htc/sunny/SGallery$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$4;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method

.method public enableSelector(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 642
    new-instance v0, Lcom/htc/sunny/SGallery$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$6;-><init>(Lcom/htc/sunny/SGallery;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public enableVerticalDisplay(Z)V
    .locals 1
    .parameter "bVertical"

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    .line 606
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method protected flingR(I)V
    .locals 9
    .parameter "nVelocity"

    .prologue
    const/4 v7, 0x1

    .line 885
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 887
    if-lez p1, :cond_0

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v7, v6, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    .line 948
    :goto_0
    return-void

    .line 890
    :cond_0
    if-gez p1, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-ne v7, v6, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 895
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 896
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 897
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 899
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 900
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 901
    .local v0, VELOCITY_MAX:I
    const/4 v4, 0x0

    .line 902
    .local v4, nMaxPosOffset:I
    iget-boolean v6, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v7, v6, :cond_3

    .line 903
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    mul-int v4, v6, v7

    .line 908
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

    .line 910
    .local v5, nTotalOffset:I
    const/4 v2, 0x0

    .line 911
    .local v2, bBounceBack:Z
    if-lez p1, :cond_4

    .line 912
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 913
    mul-int/lit8 v5, v5, -0x1

    .line 914
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 915
    .local v3, nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v3, v6, :cond_2

    .line 917
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 918
    iget v6, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 919
    const/4 v2, 0x1

    .line 932
    :cond_2
    :goto_2
    if-nez v5, :cond_5

    .line 933
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    goto :goto_0

    .line 905
    .end local v2           #bBounceBack:Z
    .end local v3           #nEndPos:I
    .end local v5           #nTotalOffset:I
    :cond_3
    iget v6, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    mul-int v4, v6, v7

    goto :goto_1

    .line 922
    .restart local v2       #bBounceBack:Z
    .restart local v5       #nTotalOffset:I
    :cond_4
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 923
    iget v6, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v3, v6, v5

    .line 924
    .restart local v3       #nEndPos:I
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v3, v6, :cond_2

    .line 926
    sget-object v6, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 927
    iget v6, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v5, v6, v7

    .line 928
    const/4 v2, 0x1

    goto :goto_2

    .line 937
    :cond_5
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 938
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 939
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 941
    if-nez v2, :cond_6

    .line 942
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny/SGallery;->DURATION_FLING:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 946
    :goto_3
    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v7, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 947
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 944
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

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 458
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 460
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 461
    iput v2, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 463
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 464
    iput v2, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 0

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1109
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 1110
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeScrollBar()V

    .line 1111
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 1113
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->freeResource()V

    .line 1114
    return-void
.end method

.method protected freeScrollBar()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->removeView(Lcom/htc/sunny/SView;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 271
    :cond_0
    return-void
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 960
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 969
    :goto_0
    return-object v1

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 963
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 962
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 965
    :cond_2
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v5

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 969
    goto :goto_0
.end method

.method protected getContainerId(II)I
    .locals 4
    .parameter "n2DX"
    .parameter "n2DY"

    .prologue
    const/4 v2, -0x1

    .line 1376
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_1

    move v1, v2

    .line 1387
    :cond_0
    :goto_0
    return v1

    .line 1378
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, p1, p2}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 1379
    .local v0, nSpriteId:I
    if-ne v2, v0, :cond_2

    move v1, v2

    .line 1380
    goto :goto_0

    .line 1383
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v3, v0, v2}, Lcom/htc/sunny/SunnyEngine;->getTag(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny/SGallery;->getSpriteIndex(I)I

    move-result v1

    .line 1384
    .local v1, nSpriteIndex:I
    if-ltz v1, :cond_3

    iget v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-lt v1, v3, :cond_0

    :cond_3
    move v1, v2

    .line 1387
    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny/SGallery$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 1051
    const/4 v3, 0x0

    .line 1052
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 1053
    .local v5, tc:F
    move v4, p1

    .line 1054
    .local v4, t:F
    move v0, p2

    .line 1055
    .local v0, b:F
    move v1, p3

    .line 1056
    .local v1, c:F
    move v2, p4

    .line 1058
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny/SGallery$13;->$SwitchMap$com$htc$sunny$SGallery$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny/SGallery$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1081
    :goto_0
    return v3

    .line 1060
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 1061
    goto :goto_0

    .line 1063
    :pswitch_1
    div-float/2addr v4, v2

    .line 1064
    mul-float v6, v4, v4

    .line 1065
    mul-float v5, v6, v4

    .line 1066
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

    .line 1067
    goto :goto_0

    .line 1076
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

    .line 1077
    goto :goto_0

    .line 1058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getRefineDuration(II)I
    .locals 0
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    .line 951
    if-gtz p1, :cond_0

    .line 952
    const/4 p1, 0x2

    .line 955
    .end local p1
    :cond_0
    return p1
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 1407
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

    .line 1408
    const/4 v0, 0x1

    .line 1410
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homingR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 845
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v1, :cond_1

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 850
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, nTotalOffset:I
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_3

    .line 854
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 855
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    .line 863
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mStart:I

    .line 864
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mTotal:I

    .line 865
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 867
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 869
    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-eq v3, v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-ne v3, v1, :cond_4

    .line 870
    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 871
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny/SGallery;->DURATION_BOUNCING:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    .line 877
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    .line 878
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    sget-object v2, Lcom/htc/sunny/SGallery$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny/SGallery$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->interpolate:Lcom/htc/sunny/SGallery$INTERPOLATE;

    .line 880
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 881
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 856
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_0

    .line 857
    sget-object v1, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 858
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v1, v2

    goto :goto_1

    .line 873
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 874
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

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 274
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v5, :cond_0

    .line 356
    :goto_0
    return-void

    .line 276
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

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    if-nez v5, :cond_2

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 278
    iput v10, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 279
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-virtual {v5}, Lcom/htc/sunny/SGalleryAdapter;->getItemCount()I

    move-result v4

    .line 284
    .local v4, nNewDataCount:I
    const/4 v3, 0x0

    .line 285
    .local v3, nCountainerCount:I
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_4

    .line 286
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

    .line 290
    :goto_1
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-eq v4, v5, :cond_3

    .line 291
    iput v4, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    .line 293
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->caculateMeasurement()V

    .line 296
    :cond_3
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-nez v5, :cond_5

    .line 297
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 298
    invoke-super {p0, v10}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    goto :goto_0

    .line 288
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

    .line 302
    :cond_5
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setVisibility(Z)V

    .line 304
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ne v3, v5, :cond_6

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_d

    .line 306
    :cond_6
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    if-ne v9, v5, :cond_7

    .line 307
    iget v5, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iput v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 309
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->destroyContainers()V

    .line 311
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initItemResource()V

    .line 312
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initScrollBar()V

    .line 314
    iput v3, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    .line 315
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    new-array v5, v5, [Lcom/htc/sunny/SGallery$ItemContainer;

    iput-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .line 317
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_b

    .line 318
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    new-instance v0, Lcom/htc/sunny/SGallery$ItemContainer;

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, p0, v6, v7}, Lcom/htc/sunny/SGallery$ItemContainer;-><init>(Lcom/htc/sunny/SGallery;Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    aput-object v0, v5, v2

    .line 319
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    invoke-virtual {p0, v0, v10}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;Z)V

    .line 321
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundDisplaySize(II)V

    .line 322
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v9, v5, :cond_8

    .line 323
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setBackgroundImageByTexture(IIII)V

    .line 324
    iget v5, p0, Lcom/htc/sunny/SGallery;->mSelectorRenderOrder:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->setSelectorRenderOrder(I)V

    .line 326
    :cond_8
    invoke-virtual {v0, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->setTouchable(Z)V

    .line 327
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v6, v0, Lcom/htc/sunny/SGallery$ItemContainer;->mTouchSensorSpriteId:I

    invoke-direct {p0, v2}, Lcom/htc/sunny/SGallery;->getSpriteTag(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setTag(II)V

    .line 328
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v2, v5, :cond_a

    .line 329
    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 335
    :goto_3
    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v9, v5, :cond_9

    iget-boolean v5, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v9, v5, :cond_9

    .line 336
    new-instance v1, Lcom/htc/sunny/SView;

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v1, v5, v6}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 337
    .local v1, dividerView:Lcom/htc/sunny/SView;
    invoke-virtual {v0, v1, v9}, Lcom/htc/sunny/SGallery$ItemContainer;->addView(Lcom/htc/sunny/SView;Z)V

    .line 338
    iget v5, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v7, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-virtual {v1, v10, v5, v6, v7}, Lcom/htc/sunny/SView;->setBackgroundImageByTexture(IIII)V

    .line 339
    iget v5, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v11, v5, v11}, Lcom/htc/sunny/SView;->setPosition(FFF)V

    .line 317
    .end local v1           #dividerView:Lcom/htc/sunny/SView;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 331
    :cond_a
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_3

    .line 343
    .end local v0           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    :cond_b
    iput-boolean v10, p0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 353
    :cond_c
    iget v5, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 355
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto/16 :goto_0

    .line 345
    .end local v2           #i:I
    :cond_d
    const/4 v0, 0x0

    .line 346
    .restart local v0       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget v5, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    if-ge v2, v5, :cond_c

    .line 347
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v0, v5, v2

    .line 348
    if-eqz v0, :cond_e

    .line 349
    invoke-virtual {v0, v10}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    .line 346
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method protected initItemResource()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 401
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->freeItemResource()V

    .line 404
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnableSelector:Z

    if-ne v11, v8, :cond_1

    .line 406
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    .line 407
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 416
    .local v0, backgroundPress:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v0, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    .line 418
    .local v4, itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    .line 419
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundPressTextureId:I

    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 420
    invoke-virtual {v4}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 424
    .end local v4           #itemBackgroundBitmapPress:Lcom/htc/sunny/SBitmap;
    :cond_0
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    .line 425
    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 429
    .local v1, backgroundRest:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v1, :cond_1

    .line 430
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    invoke-static {v1, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v5

    .line 431
    .local v5, itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    .line 432
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mItemBackgroundRestTextureId:I

    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 433
    invoke-virtual {v5}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 439
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    .end local v1           #backgroundRest:Landroid/graphics/drawable/Drawable;
    .end local v5           #itemBackgroundBitmapRest:Lcom/htc/sunny/SBitmap;
    :cond_1
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mEnabledDivider:Z

    if-ne v11, v8, :cond_2

    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v8, :cond_2

    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108022f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 442
    iget v8, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    .line 443
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    .line 444
    iget v8, p0, Lcom/htc/sunny/SGallery;->mDividerWidth:I

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerHeight:I

    invoke-static {v2, v8, v9}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    .line 446
    .local v3, dividerBmp:Lcom/htc/sunny/SBitmap;
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v8}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v8

    iput v8, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    .line 447
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v9, p0, Lcom/htc/sunny/SGallery;->mDividerTextureId:I

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 449
    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 452
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v3           #dividerBmp:Lcom/htc/sunny/SBitmap;
    :cond_2
    return-void

    .line 409
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 410
    .local v6, res:Landroid/content/res/Resources;
    const-string v8, "list_selector_background_pressed"

    const-string v9, "drawable"

    const-string v10, "com.htc"

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 411
    .local v7, resId:I
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    const-string v9, "list_selector_background_pressed"

    invoke-static {v8, v9, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 412
    if-nez v7, :cond_4

    const/4 v0, 0x0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 413
    .end local v0           #backgroundPress:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #backgroundPress:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 427
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #resId:I
    :cond_5
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v1       #backgroundRest:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1
.end method

.method protected initScrollBar()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    if-ne v3, v0, :cond_0

    .line 250
    new-instance v0, Lcom/htc/sunny/SScrollBarView;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SScrollBarView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    .line 251
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->addView(Lcom/htc/sunny/SView;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->enableVerticalDisplay(Z)V

    .line 256
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setScrollViewRange(I)V

    .line 257
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_2

    .line 258
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

    .line 263
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 264
    return-void

    .line 260
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

    .prologue
    .line 784
    new-instance v0, Lcom/htc/sunny/SGallery$11;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SGallery$11;-><init>(Lcom/htc/sunny/SGallery;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 5

    .prologue
    .line 792
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-nez v4, :cond_1

    .line 807
    :cond_0
    return-void

    .line 794
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_3

    .line 795
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 796
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 795
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_1

    .line 800
    .end local v0           #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny/SGallery$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 801
    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v4, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 803
    .restart local v1       #container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_4

    .line 802
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 804
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/htc/sunny/SGallery$ItemContainer;->setLayoutAnimation(Z)V

    goto :goto_3
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1148
    const/16 v0, 0x9

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 1151
    :cond_0
    iput p1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    .line 1152
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 815
    new-instance v0, Lcom/htc/sunny/SGallery$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$12;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 820
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lcom/htc/sunny/SGallery;->getContainerByDataIndex(I)Lcom/htc/sunny/SGallery$ItemContainer;

    move-result-object v0

    .line 824
    .local v0, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-eqz v0, :cond_0

    .line 826
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    if-ltz v1, :cond_1

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-ge v1, v2, :cond_1

    .line 827
    invoke-direct {p0, v0}, Lcom/htc/sunny/SGallery;->updateContainer(Lcom/htc/sunny/SGallery$ItemContainer;)V

    .line 833
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 834
    return-void

    .line 829
    :cond_1
    const/4 v1, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v0, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1038
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onHomingAnimationEnd()V

    .line 1043
    :cond_1
    :goto_0
    return-void

    .line 1040
    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onFlingAnimationEnd()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1208
    const-string v0, "3DGlideMode"

    const-string v3, "[SGallery] onDown()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    .line 1211
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    .line 1213
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1217
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1218
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1220
    return v2

    :cond_1
    move v0, v2

    .line 1210
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1211
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1225
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery]  onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_0

    .line 1228
    float-to-int v0, p4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    .line 1232
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1230
    :cond_0
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->flingR(I)V

    goto :goto_0
.end method

.method protected onFlingAnimationEnd()V
    .locals 0

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1048
    return-void
.end method

.method protected onHomingAnimationEnd()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    .line 974
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 975
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
    .line 1086
    invoke-super/range {p0 .. p5}, Lcom/htc/sunny/SAdapterView;->onLayout(ZIIII)V

    .line 1088
    sub-int v0, p4, p2

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    .line 1089
    sub-int v0, p5, p3

    iput v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    .line 1090
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mWidth_H:I

    .line 1091
    iget v0, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mHeight_H:I

    .line 1092
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 1094
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 1095
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1238
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1243
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsPressed:Z

    if-nez v3, :cond_0

    .line 1260
    :goto_0
    return v1

    .line 1247
    :cond_0
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v3, :cond_1

    .line 1248
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1249
    iput v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    .line 1252
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 1254
    :cond_2
    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {p0, v3, v4}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    move-result v0

    .line 1255
    .local v0, bScrolled:Z
    if-ne v2, v0, :cond_3

    .line 1256
    iput-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1257
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    :cond_3
    move v1, v2

    .line 1260
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 980
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onAnimationEnd()V

    .line 1035
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 986
    const/4 v7, 0x0

    .line 987
    .local v7, nNextPos:I
    iget v8, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 988
    .local v8, nPrePos:I
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_4

    .line 989
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

    .line 994
    :cond_1
    :goto_1
    sub-int v6, v7, v8

    .line 997
    .local v6, diff:I
    sget-object v0, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    if-ne v0, v1, :cond_7

    .line 998
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-ge v0, v7, :cond_6

    .line 999
    if-nez v6, :cond_5

    .line 1000
    add-int/lit8 v7, v7, -0x1

    .line 1008
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-gt v7, v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1010
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    .line 1029
    :cond_3
    :goto_3
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v0, v1, :cond_b

    .line 1030
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v9, v0}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto :goto_0

    .line 990
    .end local v6           #diff:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_1

    .line 991
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_1

    .line 1001
    .restart local v6       #diff:I
    :cond_5
    if-lez v6, :cond_2

    .line 1002
    add-int/lit8 v7, v8, -0x1

    goto :goto_2

    .line 1005
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    goto :goto_2

    .line 1013
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-le v0, v7, :cond_a

    .line 1014
    if-nez v6, :cond_9

    .line 1015
    add-int/lit8 v7, v7, 0x1

    .line 1023
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    if-lt v7, v0, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->mEnd:I

    .line 1025
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_3

    .line 1016
    :cond_9
    if-gez v6, :cond_8

    .line 1017
    add-int/lit8 v7, v8, 0x1

    goto :goto_4

    .line 1020
    :cond_a
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny/SGallery$AnimationInfo;->nTotalFrames:I

    iput v1, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->nInFrame:I

    goto :goto_4

    .line 1032
    :cond_b
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    sub-int v0, v7, v0

    invoke-virtual {p0, v0, v9}, Lcom/htc/sunny/SGallery;->scrollGallery(II)Z

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1358
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsTouchable:Z

    if-ne v2, v0, :cond_0

    .line 1361
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    if-eq v0, v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mPressedContainerId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/htc/sunny/SGallery$ItemContainer;->onFocusChanged(Z)V

    .line 1365
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1366
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 1370
    const-string v0, "3DGlideMode"

    const-string v1, "[SGallery] onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method public onUpR(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 1180
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    if-ne v4, v2, :cond_0

    .line 1184
    :cond_0
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    if-ne v4, v2, :cond_3

    .line 1185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/sunny/SGallery;->getContainerId(II)I

    move-result v0

    .line 1186
    .local v0, nContainerId:I
    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-eqz v2, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    aget-object v2, v2, v0

    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v2}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v1

    .line 1189
    .local v1, nPressItem:I
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    if-eqz v2, :cond_1

    .line 1190
    iget-object v2, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    invoke-interface {v2, v1}, Lcom/htc/sunny/SGallery$OnClickListener;->onClick(I)V

    .line 1193
    .end local v1           #nPressItem:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1203
    .end local v0           #nContainerId:I
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsSingleTapUp:Z

    .line 1204
    return-void

    .line 1194
    :cond_3
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v2, v3, :cond_4

    .line 1195
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1196
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0

    .line 1197
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-nez v2, :cond_2

    .line 1198
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->homingR()V

    goto :goto_0
.end method

.method public renderAndUpdate3D()V
    .locals 2

    .prologue
    .line 1155
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->renderAndUpdate3D()V

    .line 1157
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny/SGallery$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1171
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1164
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->onScrollAnimation()V

    .line 1165
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    goto :goto_0

    .line 1158
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

    .prologue
    .line 546
    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v5, :cond_1

    .line 561
    :cond_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 551
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_3

    .line 550
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    :cond_3
    #getter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1}, Lcom/htc/sunny/SGallery$ItemContainer;->access$000(Lcom/htc/sunny/SGallery$ItemContainer;)I

    move-result v4

    .line 555
    .local v4, nIndex:I
    iget v5, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gt v5, v4, :cond_4

    iget v5, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    if-le v4, v5, :cond_2

    .line 556
    :cond_4
    const/4 v5, -0x1

    #setter for: Lcom/htc/sunny/SGallery$ItemContainer;->mDataIndex:I
    invoke-static {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->access$002(Lcom/htc/sunny/SGallery$ItemContainer;I)I

    .line 557
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/htc/sunny/SGallery$ItemContainer;->setValid(Z)V

    goto :goto_1
.end method

.method protected scrollGallery(II)Z
    .locals 5
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, bScrolled:Z
    const/4 v1, 0x0

    .line 1266
    .local v1, nNewPosition:I
    iget-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v4, v3, :cond_6

    .line 1267
    if-nez p2, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return v2

    .line 1269
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p2

    .line 1270
    if-lez p2, :cond_5

    .line 1271
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    .line 1286
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockTop:Z

    if-ne v4, v2, :cond_2

    .line 1287
    iget v2, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    if-ge v1, v2, :cond_2

    .line 1288
    iget v1, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    .line 1291
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsBlockDown:Z

    if-ne v4, v2, :cond_3

    .line 1292
    iget v2, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-le v1, v2, :cond_3

    .line 1293
    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    .line 1297
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-eq v1, v2, :cond_4

    .line 1298
    invoke-virtual {p0, v1}, Lcom/htc/sunny/SGallery;->updateNewPosition(I)V

    .line 1299
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 1302
    goto :goto_0

    .line 1273
    :cond_5
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1276
    :cond_6
    if-eqz p1, :cond_0

    .line 1278
    iget v2, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    add-int v1, v2, p1

    .line 1279
    if-lez p1, :cond_7

    .line 1280
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_NEXT:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1

    .line 1282
    :cond_7
    sget-object v2, Lcom/htc/sunny/SGallery$DIRECTION;->D_PREVIOUSE:Lcom/htc/sunny/SGallery$DIRECTION;

    iput-object v2, p0, Lcom/htc/sunny/SGallery;->mDirection:Lcom/htc/sunny/SGallery$DIRECTION;

    goto :goto_1
.end method

.method public setAdapter(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 755
    new-instance v0, Lcom/htc/sunny/SGallery$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$10;-><init>(Lcom/htc/sunny/SGallery;Lcom/htc/sunny/SGalleryAdapter;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 760
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->stopAnimation()V

    .line 765
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->unregisterDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 768
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    .line 769
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    if-eqz v0, :cond_1

    .line 770
    new-instance v0, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    .line 771
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAdapter:Lcom/htc/sunny/SGalleryAdapter;

    iget-object v1, p0, Lcom/htc/sunny/SGallery;->mDataSetObserver:Lcom/htc/sunny/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGalleryAdapter;->registerDataSetObserver(Lcom/htc/sunny/SDataSetObserver;)V

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->initContainers()V

    .line 776
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->invalidate3DView()V

    .line 777
    return-void
.end method

.method public setClipSize(I)V
    .locals 1
    .parameter "nSize"

    .prologue
    .line 629
    new-instance v0, Lcom/htc/sunny/SGallery$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$5;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public setItemSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 653
    new-instance v0, Lcom/htc/sunny/SGallery$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$7;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SGallery$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mClickListener:Lcom/htc/sunny/SGallery$OnClickListener;

    .line 1176
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/sunny/SGallery$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    .line 246
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 722
    new-instance v0, Lcom/htc/sunny/SGallery$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SGallery$9;-><init>(Lcom/htc/sunny/SGallery;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method public setSelector(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 359
    new-instance v0, Lcom/htc/sunny/SGallery$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/sunny/SGallery$1;-><init>(Lcom/htc/sunny/SGallery;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawablePress"
    .parameter "drawableRest"

    .prologue
    .line 392
    new-instance v0, Lcom/htc/sunny/SGallery$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SGallery$3;-><init>(Lcom/htc/sunny/SGallery;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public setSelectorRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 378
    new-instance v0, Lcom/htc/sunny/SGallery$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$2;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .parameter "spacing"

    .prologue
    .line 707
    new-instance v0, Lcom/htc/sunny/SGallery$8;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SGallery$8;-><init>(Lcom/htc/sunny/SGallery;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 719
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "bVisible"

    .prologue
    .line 617
    invoke-super {p0, p1}, Lcom/htc/sunny/SAdapterView;->setVisibility(Z)V

    .line 618
    iput-boolean p1, p0, Lcom/htc/sunny/SGallery;->mGalleryVisibility:Z

    .line 619
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 1417
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1419
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1421
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1422
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    const/4 v0, 0x5

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_2

    .line 1424
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1425
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1426
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0

    .line 1427
    :cond_2
    const/4 v0, 0x7

    iget v1, p0, Lcom/htc/sunny/SGallery;->mGalleryState:I

    if-ne v0, v1, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationInfo:Lcom/htc/sunny/SGallery$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery$AnimationInfo;->reset()V

    .line 1429
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    .line 1430
    invoke-virtual {p0, v2}, Lcom/htc/sunny/SGallery;->notifyStateChange(I)V

    goto :goto_0
.end method

.method protected updateAllContainerLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 469
    iget-object v8, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    if-nez v8, :cond_1

    .line 494
    :cond_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mItemContainers:[Lcom/htc/sunny/SGallery$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny/SGallery$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 472
    .local v1, container:Lcom/htc/sunny/SGallery$ItemContainer;
    if-nez v1, :cond_2

    .line 471
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
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

    .line 475
    iget-boolean v8, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v12, v8, :cond_3

    .line 476
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

    .line 477
    .local v5, n2DY:F
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SGallery;->Get3DY(F)F

    move-result v7

    .line 478
    .local v7, n3DY:F
    invoke-virtual {v1, v11, v7, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    .line 485
    .end local v5           #n2DY:F
    .end local v7           #n3DY:F
    :goto_2
    invoke-virtual {v1, v12}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1

    .line 480
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

    .line 481
    .local v4, n2DX:F
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SGallery;->Get3DX(F)F

    move-result v6

    .line 482
    .local v6, n3DX:F
    invoke-virtual {v1, v6, v11, v11}, Lcom/htc/sunny/SGallery$ItemContainer;->setPosition(FFF)V

    goto :goto_2

    .line 488
    .end local v4           #n2DX:F
    .end local v6           #n3DX:F
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/htc/sunny/SGallery$ItemContainer;->setVisibility(Z)V

    goto :goto_1
.end method

.method protected updateAllContainersData()V
    .locals 0

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->resetUselessContainers()V

    .line 498
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->addNewContainers()V

    .line 499
    return-void
.end method

.method protected updateNewPosition(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1306
    iput p1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    .line 1308
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SScrollBarView;->setCurrentViewPosition(I)V

    .line 1312
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mLowerBoundPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    if-lt v0, v1, :cond_4

    .line 1313
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    .line 1318
    :goto_0
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mUpperBoundPosition:I

    if-lt v0, v1, :cond_5

    .line 1319
    iput-boolean v3, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    .line 1324
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v3, v0, :cond_6

    .line 1325
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1326
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_1

    .line 1327
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1329
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1330
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1331
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1343
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1345
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1346
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollListener:Lcom/htc/sunny/SGallery$OnScrollListener;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v2, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/sunny/SGallery$OnScrollListener;->onScroll(Lcom/htc/sunny/SGallery;III)V

    .line 1351
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainersData()V

    .line 1352
    invoke-virtual {p0}, Lcom/htc/sunny/SGallery;->updateAllContainerLayout()V

    .line 1354
    return-void

    .line 1315
    :cond_4
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverTopBoundary:Z

    goto :goto_0

    .line 1321
    :cond_5
    iput-boolean v2, p0, Lcom/htc/sunny/SGallery;->mIsOverBottomBoundary:Z

    goto :goto_1

    .line 1333
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SGallery;->mCurrentPosition:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mItemWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1334
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    if-gez v0, :cond_7

    .line 1335
    iput v2, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    .line 1337
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SGallery;->mStartDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mContainerCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    .line 1338
    iget v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    iget v1, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    if-lt v0, v1, :cond_2

    .line 1339
    iget v0, p0, Lcom/htc/sunny/SGallery;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SGallery;->mEndDataIndex:I

    goto :goto_2
.end method

.method protected updateViewLayout()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 666
    invoke-super {p0}, Lcom/htc/sunny/SAdapterView;->updateViewLayout()V

    .line 668
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    const/4 v9, 0x0

    .line 671
    .local v9, nOffset:I
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v0

    if-ne v11, v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v10

    .line 674
    .local v10, v:Lcom/htc/sunny/Vector3F;
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_5

    .line 675
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 689
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    if-ne v11, v0, :cond_4

    .line 690
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_8

    .line 691
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    iget v3, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    sub-int/2addr v3, v9

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewWidth:I

    iget v5, p0, Lcom/htc/sunny/SGallery;->mViewHeight:I

    iget v6, p0, Lcom/htc/sunny/SGallery;->mClipSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SunnyEngine;->setClipArea(IIIII)V

    .line 697
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mScrollBarView:Lcom/htc/sunny/SScrollBarView;

    if-eqz v0, :cond_0

    .line 698
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_9

    .line 699
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

    .line 677
    .restart local v10       #v:Lcom/htc/sunny/Vector3F;
    :cond_5
    iget v0, v10, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_1

    .line 681
    .end local v10           #v:Lcom/htc/sunny/Vector3F;
    :cond_6
    iget-boolean v0, p0, Lcom/htc/sunny/SGallery;->mIsVerticalGallery:Z

    if-ne v11, v0, :cond_7

    .line 682
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mY:F

    float-to-int v9, v0

    .line 686
    :goto_3
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    .line 684
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SGallery;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v0, v0, Lcom/htc/sunny/Vector3F;->mX:F

    float-to-int v9, v0

    goto :goto_3

    .line 693
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny/SGallery;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SGallery;->mViewNodeId:I

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

    .line 701
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
