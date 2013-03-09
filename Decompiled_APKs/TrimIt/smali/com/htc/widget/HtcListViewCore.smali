.class public Lcom/htc/widget/HtcListViewCore;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcListViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore$1;,
        Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore$FocusSelector;,
        Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAddedCounter:I

.field private mAdjustFooter:Z

.field private mAdjustForSipOff:Z

.field private mAdjustForSipOn:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field mDividerWidth:I

.field private mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

.field private mFootHeight:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mForceAdjustFooter:Z

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewWithoutDivider:Landroid/view/View;

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field private mKeepFootHeight:I

.field private mKeepFootHeightUpdated:Z

.field private mLastItemCnt:I

.field private mRelayout:Z

.field private mScreenBottom:I

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 150
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 129
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 131
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    .line 134
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 136
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    .line 140
    new-instance v7, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    .line 2828
    const/16 v7, 0xc3

    iput v7, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    .line 2829
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    .line 2830
    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2831
    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 2832
    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 2833
    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 2834
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2835
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 2836
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    .line 2837
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 5022
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    .line 156
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 161
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 162
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 167
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 175
    .local v6, htcContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080669

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 178
    .local v5, group_divider:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 179
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    .end local v5           #group_divider:Landroid/graphics/drawable/Drawable;
    .end local v6           #htcContext:Landroid/content/Context;
    :cond_2
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 189
    .local v2, dividerHeight:I
    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setDividerHeight(I)V

    .line 193
    :cond_3
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    .line 194
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    return-void

    .line 180
    .end local v2           #dividerHeight:I
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "HtcListViewCore"

    const-string v8, "resource not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 183
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 4396
    add-int/lit8 v2, p2, -0x1

    .line 4397
    .local v2, abovePosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 4400
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4401
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int v3, v0, v5

    .line 4406
    .local v3, edgeOfNewChild:I
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4408
    return-object v1

    .line 4403
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v3, v0, v5

    .restart local v3       #edgeOfNewChild:I
    goto :goto_0
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 4412
    add-int/lit8 v2, p2, 0x1

    .line 4413
    .local v2, belowPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 4416
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4417
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int v3, v0, v4

    .line 4422
    .local v3, edgeOfNewChild:I
    :goto_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4424
    return-object v1

    .line 4419
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v3, v0, v4

    .restart local v3       #edgeOfNewChild:I
    goto :goto_0
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 224
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 227
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v3, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 235
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 238
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int/2addr v2, v3

    .line 252
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 254
    const/4 v2, 0x0

    .line 285
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 288
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 295
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    :goto_2
    return-void

    .line 242
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 244
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 247
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 258
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 260
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBorderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 263
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 266
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    add-int/2addr v2, v3

    .line 280
    :cond_5
    :goto_3
    if-lez v2, :cond_1

    .line 281
    const/4 v2, 0x0

    goto :goto_1

    .line 270
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 273
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 276
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_3

    .line 290
    :cond_7
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_2
.end method

.method private amountToScroll(II)I
    .locals 17
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 3805
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v12

    .line 3808
    .local v12, numChildren:I
    const/4 v1, 0x0

    .line 3810
    .local v1, amountToScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    :cond_0
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    .line 3811
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 3812
    .local v9, listRight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    .line 3813
    .local v8, listLeft:I
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    .line 3814
    add-int/lit8 v6, v12, -0x1

    .line 3815
    .local v6, indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_2

    .line 3816
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3819
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3820
    .local v13, positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3822
    .local v14, viewToMakeVisible:Landroid/view/View;
    move v4, v9

    .line 3823
    .local v4, goalRight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_4

    .line 3824
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v4, v15

    .line 3831
    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 3834
    const/4 v15, 0x0

    .line 3954
    .end local v4           #goalRight:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    :goto_0
    return v15

    .line 3826
    .restart local v4       #goalRight:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v15, v4, :cond_3

    .line 3828
    const/4 v15, 0x0

    goto :goto_0

    .line 3837
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-ne v15, v4, :cond_7

    .line 3838
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3843
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3845
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v11, v15, v9

    .line 3846
    .local v11, max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3954
    .end local v4           #goalRight:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v11           #max:I
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_0

    .line 3841
    .restart local v4       #goalRight:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v1, v15, v4

    goto :goto_1

    .line 3851
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_8
    const/4 v6, 0x0

    .line 3852
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    .line 3853
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3855
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3856
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3857
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v3, v8

    .line 3858
    .local v3, goalLeft:I
    if-lez v13, :cond_b

    .line 3859
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v3, v15

    .line 3866
    :cond_a
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_c

    .line 3869
    const/4 v15, 0x0

    goto :goto_0

    .line 3861
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-lt v15, v3, :cond_a

    .line 3863
    const/4 v15, 0x0

    goto :goto_0

    .line 3872
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v15, v3, :cond_d

    .line 3873
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3878
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 3880
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v11, v8, v15

    .line 3881
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 3876
    .end local v11           #max:I
    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v1, v3, v15

    goto :goto_3

    .line 3886
    .end local v3           #goalLeft:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 3887
    .local v7, listBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 3888
    .local v10, listTop:I
    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_13

    .line 3889
    add-int/lit8 v6, v12, -0x1

    .line 3890
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_f

    .line 3891
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3894
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3895
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3897
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v2, v7

    .line 3899
    .local v2, goalBottom:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_10

    .line 3900
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v2, v15

    .line 3903
    :cond_10
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v15, v2, :cond_11

    .line 3905
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3908
    :cond_11
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_12

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_12

    .line 3911
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3914
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v1, v15, v2

    .line 3916
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3918
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v15, v7

    .line 3919
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    .line 3924
    .end local v2           #goalBottom:I
    .end local v6           #indexToMakeVisible:I
    .end local v11           #max:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_13
    const/4 v6, 0x0

    .line 3925
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_14

    .line 3926
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3928
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3929
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3930
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v5, v10

    .line 3931
    .local v5, goalTop:I
    if-lez v13, :cond_15

    .line 3932
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v5, v15

    .line 3934
    :cond_15
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v15, v5, :cond_16

    .line 3936
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3939
    :cond_16
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_17

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_17

    .line 3942
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3945
    :cond_17
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v1, v5, v15

    .line 3947
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 3949
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v11, v10, v15

    .line 3950
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 5
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 4164
    const/4 v0, 0x0

    .line 4165
    .local v0, amountToScroll:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4166
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4167
    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    .line 4168
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_0

    .line 4169
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 4170
    if-lez p3, :cond_0

    .line 4171
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    .line 4198
    :cond_0
    :goto_0
    return v0

    .line 4174
    :cond_1
    const/16 v3, 0x11

    if-ne p1, v3, :cond_2

    .line 4175
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    .line 4176
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v4

    .line 4177
    if-lez p3, :cond_0

    .line 4178
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4181
    :cond_2
    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 4182
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4183
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_0

    .line 4184
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v2

    .line 4185
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4186
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4190
    .end local v2           #listRight:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4191
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_0

    .line 4192
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v1

    .line 4193
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4194
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    .locals 25
    .parameter "direction"

    .prologue
    .line 4043
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v18

    .line 4045
    .local v18, selectedView:Landroid/view/View;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 4046
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 4047
    .local v14, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 4091
    .end local v14           #oldFocus:Landroid/view/View;
    .local v13, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v13, :cond_16

    .line 4092
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore;->positionOfNewFocus(Landroid/view/View;)I

    move-result v15

    .line 4096
    .local v15, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v15, v0, :cond_14

    .line 4097
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v17

    .line 4098
    .local v17, selectablePosition:I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v0, v17

    if-lt v0, v15, :cond_3

    :cond_1
    const/16 v22, 0x21

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_2
    move/from16 v0, v17

    if-le v0, v15, :cond_14

    .line 4101
    :cond_3
    const/16 v22, 0x0

    .line 4123
    .end local v15           #positionOfNewFocus:I
    .end local v17           #selectablePosition:I
    :goto_1
    return-object v22

    .line 4049
    .end local v13           #newFocus:Landroid/view/View;
    :cond_4
    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 4050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    const/16 v19, 0x1

    .line 4051
    .local v19, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_3
    add-int v11, v23, v22

    .line 4053
    .local v11, listTop:I
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4057
    .local v21, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4088
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    .end local v21           #ySearchPoint:I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v13

    .restart local v13       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 4050
    .end local v13           #newFocus:Landroid/view/View;
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 4051
    .restart local v19       #topFadingEdgeShowing:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .restart local v11       #listTop:I
    :cond_7
    move/from16 v21, v11

    .line 4053
    goto :goto_4

    .line 4058
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    :cond_8
    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 4059
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_9

    const/4 v7, 0x1

    .line 4060
    .local v7, leftFadingEdgeShowing:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_7
    add-int v9, v23, v22

    .line 4062
    .local v9, listLeft:I
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 4066
    .local v20, xSearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 4059
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    .end local v20           #xSearchPoint:I
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 4060
    .restart local v7       #leftFadingEdgeShowing:Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_7

    .restart local v9       #listLeft:I
    :cond_b
    move/from16 v20, v9

    .line 4062
    goto :goto_8

    .line 4067
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    :cond_c
    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 4068
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const/16 v16, 0x1

    .line 4070
    .local v16, rightFadingEdgeShowing:Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_a
    sub-int v10, v23, v22

    .line 4072
    .local v10, listRight:I
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v10, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v20

    .line 4076
    .restart local v20       #xSearchPoint:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 4068
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    .end local v20           #xSearchPoint:I
    :cond_d
    const/16 v16, 0x0

    goto :goto_9

    .line 4070
    .restart local v16       #rightFadingEdgeShowing:Z
    :cond_e
    const/16 v22, 0x0

    goto :goto_a

    .restart local v10       #listRight:I
    :cond_f
    move/from16 v20, v10

    .line 4072
    goto :goto_b

    .line 4078
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    const/4 v5, 0x1

    .line 4080
    .local v5, bottomFadingEdgeShowing:Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v5, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_d
    sub-int v8, v23, v22

    .line 4082
    .local v8, listBottom:I
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v8, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 4086
    .restart local v21       #ySearchPoint:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 4078
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .end local v21           #ySearchPoint:I
    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    .line 4080
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_12
    const/16 v22, 0x0

    goto :goto_d

    .restart local v8       #listBottom:I
    :cond_13
    move/from16 v21, v8

    .line 4082
    goto :goto_e

    .line 4105
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .restart local v13       #newFocus:Landroid/view/View;
    .restart local v15       #positionOfNewFocus:I
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/htc/widget/HtcListViewCore;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 4107
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v12

    .line 4108
    .local v12, maxScrollAmount:I
    if-ge v6, v12, :cond_15

    .line 4110
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v6}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    .line 4112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4113
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_16

    .line 4118
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v12}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4123
    .end local v6           #focusScroll:I
    .end local v12           #maxScrollAmount:I
    .end local v15           #positionOfNewFocus:I
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 3501
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 3589
    :cond_0
    :goto_0
    return v8

    .line 3505
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3507
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 3508
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore;->amountToScroll(II)I

    move-result v0

    .line 3511
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_a

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-result-object v1

    .line 3512
    .local v1, focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 3513
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 3514
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 3517
    :cond_2
    if-eqz v1, :cond_b

    move v3, v7

    .line 3518
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v9, :cond_4

    .line 3519
    if-eqz v1, :cond_c

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3520
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 3521
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 3522
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3523
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 3526
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3527
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3528
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3531
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 3532
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 3535
    :cond_4
    if-lez v0, :cond_5

    .line 3537
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3538
    const/16 v6, 0x11

    if-ne p1, v6, :cond_d

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    .line 3543
    :goto_5
    const/4 v3, 0x1

    .line 3548
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3550
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3551
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    .line 3552
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3557
    .end local v2           #focused:Landroid/view/View;
    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3559
    const/4 v5, 0x0

    .line 3560
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hideSelector()V

    .line 3564
    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mResurrectToPosition:I

    .line 3567
    :cond_7
    if-eqz v3, :cond_0

    .line 3569
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3570
    if-eqz v5, :cond_8

    .line 3571
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 3572
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedLeft:I

    .line 3582
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_9

    .line 3583
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3585
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    move v8, v7

    .line 3586
    goto/16 :goto_0

    .line 3511
    .end local v1           #focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    :cond_b
    move v3, v8

    .line 3517
    goto/16 :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_c
    move v6, v8

    .line 3519
    goto/16 :goto_3

    .line 3538
    :cond_d
    neg-int v0, v0

    goto :goto_4

    .line 3540
    :cond_e
    const/16 v6, 0x21

    if-ne p1, v6, :cond_f

    .end local v0           #amountToScroll:I
    :goto_7
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    goto :goto_5

    .restart local v0       #amountToScroll:I
    :cond_f
    neg-int v0, v0

    goto :goto_7

    .line 3575
    .end local v0           #amountToScroll:I
    :cond_10
    if-eqz v5, :cond_8

    .line 3576
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 3577
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedTop:I

    goto :goto_6
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 591
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 594
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v0, v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 595
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 596
    .local v3, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 597
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 593
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/16 v7, 0x82

    const/16 v6, 0x42

    const/16 v5, 0x21

    const/16 v4, 0x11

    const/4 v2, 0x1

    .line 3117
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    .line 3118
    const/4 v2, 0x0

    .line 3244
    :cond_0
    :goto_0
    return v2

    .line 3121
    :cond_1
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 3122
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 3125
    :cond_2
    const/4 v1, 0x0

    .line 3126
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3128
    .local v0, action:I
    if-eq v0, v2, :cond_4

    .line 3129
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-gez v3, :cond_3

    .line 3130
    sparse-switch p1, :sswitch_data_0

    .line 3141
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 3226
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 3227
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3230
    :cond_5
    if-nez v1, :cond_0

    .line 3233
    packed-switch v0, :pswitch_data_0

    .line 3244
    const/4 v2, 0x0

    goto :goto_0

    .line 3136
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resurrectSelection()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 3145
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3152
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3154
    :cond_6
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    .line 3157
    goto :goto_1

    .line 3161
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3168
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3170
    :cond_7
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    .line 3173
    goto :goto_1

    .line 3176
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3177
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3178
    :goto_2
    if-lez p2, :cond_4

    .line 3179
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    .line 3180
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3183
    :cond_8
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3186
    :cond_9
    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3188
    goto :goto_1

    .line 3190
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3191
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3192
    :goto_3
    if-lez p2, :cond_4

    .line 3193
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    .line 3194
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3197
    :cond_a
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3200
    :cond_b
    invoke-direct {p0, v6}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3203
    goto :goto_1

    .line 3207
    :sswitch_5
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-lez v3, :cond_c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 3208
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->keyPressed()V

    .line 3210
    :cond_c
    const/4 v1, 0x1

    .line 3211
    goto :goto_1

    .line 3214
    :sswitch_6
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3215
    :cond_d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3216
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    .line 3220
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3218
    :cond_e
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    goto :goto_4

    .line 3235
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3238
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3241
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3130
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3141
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 3233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 13
    .parameter "childCount"

    .prologue
    const/4 v12, 0x0

    .line 2060
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v10, p1

    add-int/lit8 v7, v10, -0x1

    .line 2061
    .local v7, lastPosition:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_2

    if-lez p1, :cond_2

    .line 2064
    add-int/lit8 v10, p1, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2067
    .local v6, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2069
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2072
    .local v8, lastRight:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBorderWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 2076
    .local v1, end:I
    sub-int v9, v1, v8

    .line 2077
    .local v9, rightOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2078
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2082
    .local v3, firstLeft:I
    if-lez v9, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v3, v10, :cond_2

    .line 2083
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v10, :cond_1

    .line 2085
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2088
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 2089
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2092
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 2094
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2133
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstLeft:I
    .end local v6           #lastChild:Landroid/view/View;
    .end local v8           #lastRight:I
    .end local v9           #rightOffset:I
    :cond_2
    :goto_0
    return-void

    .line 2100
    .restart local v6       #lastChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2104
    .local v5, lastBottom:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v11

    sub-int v1, v10, v11

    .line 2108
    .restart local v1       #end:I
    sub-int v0, v1, v5

    .line 2109
    .local v0, bottomOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2110
    .restart local v2       #firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2114
    .local v4, firstTop:I
    if-lez v0, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_2

    .line 2115
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v10, :cond_5

    .line 2117
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2120
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 2121
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2124
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 2126
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 14
    .parameter "childCount"

    .prologue
    .line 2145
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v11, :cond_2

    if-lez p1, :cond_2

    .line 2148
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2151
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2153
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2156
    .local v2, firstLeft:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v12

    add-int v9, v11, v12

    .line 2159
    .local v9, start:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    iget v12, p0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBorderWidth()I

    move-result v12

    sub-int v0, v11, v12

    .line 2163
    .local v0, end:I
    sub-int v8, v2, v9

    .line 2164
    .local v8, leftOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2165
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    .line 2166
    .local v7, lastRight:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2170
    .local v6, lastPosition:I
    if-lez v8, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_0

    if-le v7, v0, :cond_2

    .line 2171
    :cond_0
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_1

    .line 2173
    sub-int v11, v7, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2176
    :cond_1
    neg-int v11, v8

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 2177
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2180
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 2182
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2226
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstLeft:I
    .end local v5           #lastChild:Landroid/view/View;
    .end local v6           #lastPosition:I
    .end local v7           #lastRight:I
    .end local v8           #leftOffset:I
    .end local v9           #start:I
    :cond_2
    :goto_0
    return-void

    .line 2187
    .restart local v1       #firstChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2190
    .local v3, firstTop:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v12

    add-int v9, v11, v12

    .line 2193
    .restart local v9       #start:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v12, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v12

    sub-int v0, v11, v12

    .line 2197
    .restart local v0       #end:I
    sub-int v10, v3, v9

    .line 2198
    .local v10, topOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2199
    .restart local v5       #lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 2200
    .local v4, lastBottom:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2204
    .restart local v6       #lastPosition:I
    if-lez v10, :cond_2

    .line 2205
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_4

    if-le v4, v0, :cond_6

    .line 2206
    :cond_4
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_5

    .line 2208
    sub-int v11, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2211
    :cond_5
    neg-int v11, v10

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 2212
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2215
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 2217
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto :goto_0

    .line 2219
    :cond_6
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_2

    .line 2220
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5
    .parameter "descendant"

    .prologue
    .line 4209
    const/4 v0, 0x0

    .line 4210
    .local v0, distance:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4211
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4214
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4215
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4216
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_1

    .line 4217
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    .line 4230
    .end local v2           #listRight:I
    :cond_0
    :goto_0
    return v0

    .line 4218
    .restart local v2       #listRight:I
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    .line 4219
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v2

    goto :goto_0

    .line 4222
    .end local v2           #listRight:I
    :cond_2
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4223
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    .line 4224
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    goto :goto_0

    .line 4225
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_0

    .line 4226
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1026
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 1027
    .local v1, dividerWidth:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v2, :cond_0

    .line 1028
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1029
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1030
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1048
    .end local v1           #dividerWidth:I
    :goto_0
    return-void

    .line 1032
    .restart local v1       #dividerWidth:I
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1033
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1034
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1037
    .end local v1           #dividerWidth:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1038
    .local v0, dividerHeight:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 1039
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1040
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1041
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1043
    :cond_2
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1044
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1045
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 11
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 979
    sub-int v6, p2, p1

    .line 982
    .local v6, height:I
    sub-int v10, p2, p1

    .line 985
    .local v10, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v1

    .line 987
    .local v1, position:I
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 989
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 992
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 994
    .local v9, selWidth:I
    if-gt v9, v10, :cond_0

    .line 995
    sub-int v0, v10, v9

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1005
    .end local v9           #selWidth:I
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1007
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1008
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 1013
    :goto_1
    return-object v7

    .line 998
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 999
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 1000
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1010
    .end local v8           #selHeight:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 1062
    .local v9, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    .line 1066
    .local v3, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v16

    .line 1068
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1072
    .local v8, bottomSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v10

    .line 1074
    .local v10, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v12

    .line 1078
    .local v12, rightSelectionPixel:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 1081
    .local v13, sel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v12, :cond_1

    .line 1086
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v2, v10

    .line 1090
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v2, v12

    .line 1091
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1094
    .local v11, offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1139
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1141
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v2, :cond_4

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 1147
    :goto_1
    return-object v13

    .line 1095
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v10, :cond_0

    .line 1098
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v10, v2

    .line 1102
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v12, v2

    .line 1103
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1106
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1110
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_3

    .line 1113
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v2, v16

    .line 1117
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v2, v8

    .line 1118
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1121
    .restart local v11       #offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1122
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    .line 1125
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v16, v2

    .line 1129
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v8, v2

    .line 1130
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1133
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1144
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 959
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 960
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 961
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 964
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1985
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1986
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 1988
    .local v11, temp:Landroid/view/View;
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 1990
    if-nez v11, :cond_2

    .line 1991
    const/4 v11, 0x0

    .line 2046
    .end local v11           #temp:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v11

    .line 1985
    .end local v5           #tempIsSelected:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1997
    .restart local v5       #tempIsSelected:Z
    .restart local v11       #temp:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1998
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 1999
    .local v10, dividerWidth:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v0, :cond_4

    .line 2000
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2002
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2003
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2004
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 2005
    .local v8, childCount:I
    if-lez v8, :cond_3

    .line 2006
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 2041
    .end local v10           #dividerWidth:I
    :cond_3
    :goto_2
    if-nez v5, :cond_0

    .line 2043
    if-eqz v6, :cond_7

    move-object v11, v6

    .line 2044
    goto :goto_1

    .line 2009
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .restart local v10       #dividerWidth:I
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2011
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2012
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2013
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 2014
    .restart local v8       #childCount:I
    if-lez v8, :cond_3

    .line 2015
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_2

    .line 2019
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v10           #dividerWidth:I
    :cond_5
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 2020
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v0, :cond_6

    .line 2021
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2023
    .restart local v6       #above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2024
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2025
    .restart local v7       #below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 2026
    .restart local v8       #childCount:I
    if-lez v8, :cond_3

    .line 2027
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    goto :goto_2

    .line 2030
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_6
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2032
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 2033
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2034
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 2035
    .restart local v8       #childCount:I
    if-lez v8, :cond_3

    .line 2036
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_2

    .end local v9           #dividerHeight:I
    :cond_7
    move-object v11, v7

    .line 2046
    goto/16 :goto_1
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3777
    const/4 v0, 0x0

    .line 3778
    .local v0, val:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3779
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3786
    :goto_0
    return v0

    .line 3782
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1160
    move v0, p1

    .line 1161
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1162
    sub-int/2addr v0, p2

    .line 1164
    :cond_0
    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .parameter "childrenLeft"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1219
    move v0, p1

    .line 1220
    .local v0, leftSelectionPixel:I
    if-lez p3, :cond_0

    .line 1221
    add-int/2addr v0, p2

    .line 1223
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .parameter "childrenRight"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1198
    move v0, p1

    .line 1199
    .local v0, rightSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1200
    sub-int/2addr v0, p2

    .line 1202
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1177
    move v0, p1

    .line 1178
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 1179
    add-int/2addr v0, p2

    .line 1181
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3385
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 3386
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3390
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    .line 3391
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3392
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3393
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3396
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3397
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3399
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3401
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3402
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3403
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3404
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3405
    const/4 v5, 0x1

    .line 3419
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3412
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3414
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3415
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3419
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 16
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 3607
    const/4 v14, -0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_0

    .line 3608
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "newSelectedPosition needs to be valid"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3616
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3620
    const/4 v3, 0x0

    .line 3621
    .local v3, leftSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3622
    .local v10, selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3623
    .local v6, nextSelectedIndex:I
    const/16 v14, 0x11

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 3624
    move v5, v6

    .line 3625
    .local v5, leftViewIndex:I
    move v9, v10

    .line 3626
    .local v9, rightViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3627
    .local v4, leftView:Landroid/view/View;
    move-object/from16 v8, p1

    .line 3628
    .local v8, rightView:Landroid/view/View;
    const/4 v3, 0x1

    .line 3636
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    .line 3639
    .local v7, numChildren:I
    if-eqz v4, :cond_1

    .line 3640
    if-nez p4, :cond_4

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v4, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3641
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v7}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3645
    :cond_1
    if-eqz v8, :cond_2

    .line 3646
    if-nez p4, :cond_5

    if-nez v3, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v8, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3647
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3684
    .end local v3           #leftSelected:Z
    .end local v4           #leftView:Landroid/view/View;
    .end local v5           #leftViewIndex:I
    .end local v8           #rightView:Landroid/view/View;
    .end local v9           #rightViewIndex:I
    :cond_2
    :goto_3
    return-void

    .line 3630
    .end local v7           #numChildren:I
    .restart local v3       #leftSelected:Z
    :cond_3
    move v5, v10

    .line 3631
    .restart local v5       #leftViewIndex:I
    move v9, v6

    .line 3632
    .restart local v9       #rightViewIndex:I
    move-object/from16 v4, p1

    .line 3633
    .restart local v4       #leftView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .restart local v8       #rightView:Landroid/view/View;
    goto :goto_0

    .line 3640
    .restart local v7       #numChildren:I
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 3646
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 3653
    .end local v3           #leftSelected:Z
    .end local v4           #leftView:Landroid/view/View;
    .end local v5           #leftViewIndex:I
    .end local v6           #nextSelectedIndex:I
    .end local v7           #numChildren:I
    .end local v8           #rightView:Landroid/view/View;
    .end local v9           #rightViewIndex:I
    .end local v10           #selectedIndex:I
    :cond_6
    const/4 v11, 0x0

    .line 3654
    .local v11, topSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3655
    .restart local v10       #selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3656
    .restart local v6       #nextSelectedIndex:I
    const/16 v14, 0x21

    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 3657
    move v13, v6

    .line 3658
    .local v13, topViewIndex:I
    move v2, v10

    .line 3659
    .local v2, bottomViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3660
    .local v12, topView:Landroid/view/View;
    move-object/from16 v1, p1

    .line 3661
    .local v1, bottomView:Landroid/view/View;
    const/4 v11, 0x1

    .line 3669
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    .line 3672
    .restart local v7       #numChildren:I
    if-eqz v12, :cond_7

    .line 3673
    if-nez p4, :cond_9

    if-eqz v11, :cond_9

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3674
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3678
    :cond_7
    if-eqz v1, :cond_2

    .line 3679
    if-nez p4, :cond_a

    if-nez v11, :cond_a

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3680
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    goto :goto_3

    .line 3663
    .end local v1           #bottomView:Landroid/view/View;
    .end local v2           #bottomViewIndex:I
    .end local v7           #numChildren:I
    .end local v12           #topView:Landroid/view/View;
    .end local v13           #topViewIndex:I
    :cond_8
    move v13, v10

    .line 3664
    .restart local v13       #topViewIndex:I
    move v2, v6

    .line 3665
    .restart local v2       #bottomViewIndex:I
    move-object/from16 v12, p1

    .line 3666
    .restart local v12       #topView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #bottomView:Landroid/view/View;
    goto :goto_4

    .line 3673
    .restart local v7       #numChildren:I
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 3679
    :cond_a
    const/4 v14, 0x0

    goto :goto_6
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3433
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 3434
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3437
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    .line 3438
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3439
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3440
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3441
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3442
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3446
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3448
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3449
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3450
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3451
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3452
    const/4 v5, 0x1

    .line 3469
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3459
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3464
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3465
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3469
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 2564
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2565
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2566
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2567
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 2578
    :goto_1
    return v5

    .line 2566
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2571
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2572
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2573
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2574
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 2575
    goto :goto_1

    .line 2573
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2578
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 4146
    if-ne p1, p2, :cond_1

    .line 4151
    :cond_0
    :goto_0
    return v1

    .line 4150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4151
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v6, -0x1

    .line 3991
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 3992
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-eq p1, v7, :cond_0

    const/16 v7, 0x42

    if-ne p1, v7, :cond_6

    .line 3993
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 3995
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    move v4, v6

    .line 4030
    :cond_1
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_2
    move v5, v1

    .line 3993
    goto :goto_0

    .line 3998
    .restart local v5       #startPos:I
    :cond_3
    if-ge v5, v1, :cond_4

    .line 3999
    move v5, v1

    .line 4002
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLastVisiblePosition()I

    move-result v3

    .line 4003
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4004
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 4005
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 4004
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4011
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 4012
    .local v2, last:I
    iget v7, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 4015
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_8

    move v4, v6

    .line 4016
    goto :goto_1

    .line 4012
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 4018
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 4019
    move v5, v2

    .line 4022
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4023
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 4024
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 4023
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 4030
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 2599
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2601
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2602
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2610
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2622
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 2617
    .end local v8           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2620
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2622
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 3694
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 3695
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->measureItem(Landroid/view/View;)V

    .line 3696
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 3698
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3701
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 3702
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 3703
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3706
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 10
    .parameter "child"

    .prologue
    const/high16 v9, 0x4000

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v8, 0x0

    .line 3714
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3719
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3720
    if-nez v4, :cond_0

    .line 3721
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3726
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mHeightMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3728
    .local v0, childHeightSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3729
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 3730
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3754
    .end local v3           #lpWidth:I
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3755
    return-void

    .line 3733
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 3737
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    if-nez v4, :cond_3

    .line 3738
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3743
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mWidthMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3745
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3746
    .local v2, lpHeight:I
    if-lez v2, :cond_4

    .line 3747
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0

    .line 3750
    .end local v0           #childHeightSpec:I
    :cond_4
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 9
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 1708
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 1709
    .local v4, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v4, :cond_0

    .line 1710
    new-instance v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v4           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 1712
    .restart local v4       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 1718
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1719
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->height:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1721
    .local v0, childHeightSpec:I
    iget v3, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->width:I

    .line 1723
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 1724
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1728
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1742
    .end local v3           #lpWidth:I
    :goto_1
    return-void

    .line 1726
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 1730
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->width:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1732
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->height:I

    .line 1734
    .local v2, lpHeight:I
    if-lez v2, :cond_3

    .line 1735
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1739
    .restart local v0       #childHeightSpec:I
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1737
    .end local v0           #childHeightSpec:I
    :cond_3
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 25
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHorizontalFadingEdgeLength()I

    move-result v12

    .line 1323
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1325
    .local v21, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore;->getLeftSelectionPixel(III)I

    move-result v14

    .line 1327
    .local v14, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore;->getRightSelectionPixel(III)I

    move-result v19

    .line 1330
    .local v19, rightSelectionPixel:I
    if-lez p3, :cond_2

    .line 1352
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1355
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 1358
    .local v11, dividerWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v11

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1362
    .local v20, sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_0

    .line 1365
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v3, v14

    .line 1368
    .local v22, spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v3, v19

    .line 1371
    .local v23, spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1372
    .local v13, halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1373
    .local v17, offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1376
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1378
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1382
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1383
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1385
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1612
    .end local v11           #dividerWidth:I
    .end local v14           #leftSelectionPixel:I
    .end local v19           #rightSelectionPixel:I
    :goto_0
    return-object v20

    .line 1387
    .restart local v11       #dividerWidth:I
    .restart local v14       #leftSelectionPixel:I
    .restart local v19       #rightSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1388
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1389
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1391
    .end local v11           #dividerWidth:I
    .end local v20           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1412
    if-eqz p2, :cond_4

    .line 1414
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1424
    .restart local v20       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v14, :cond_3

    .line 1426
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v14, v3

    .line 1429
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v19, v3

    .line 1432
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1433
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1434
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1437
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1441
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1419
    .end local v20           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_1

    .line 1444
    .end local v20           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 1449
    .local v18, oldLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1452
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, v18

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1455
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v16

    .line 1456
    .local v16, newRight:I
    add-int/lit8 v3, p4, 0x14

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 1458
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1463
    .end local v16           #newRight:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1466
    .end local v12           #fadingEdgeLength:I
    .end local v14           #leftSelectionPixel:I
    .end local v18           #oldLeft:I
    .end local v19           #rightSelectionPixel:I
    .end local v20           #sel:Landroid/view/View;
    .end local v21           #selectedPosition:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 1467
    .restart local v12       #fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1469
    .restart local v21       #selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v24

    .line 1471
    .local v24, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1474
    .local v9, bottomSelectionPixel:I
    if-lez p3, :cond_a

    .line 1496
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1499
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1502
    .local v10, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v5, v3, v10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1506
    .restart local v20       #sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v9, :cond_8

    .line 1509
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v3, v24

    .line 1512
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v3, v9

    .line 1515
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1516
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1517
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1520
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1522
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1526
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v3, :cond_9

    .line 1527
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 1528
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1529
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1531
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 1532
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    .line 1533
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1535
    .end local v10           #dividerHeight:I
    .end local v20           #sel:Landroid/view/View;
    :cond_a
    if-gez p3, :cond_d

    .line 1556
    if-eqz p2, :cond_c

    .line 1558
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1568
    .restart local v20       #sel:Landroid/view/View;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v24

    if-ge v3, v0, :cond_b

    .line 1570
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v24, v3

    .line 1573
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v9, v3

    .line 1576
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1577
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1578
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1581
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1585
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1563
    .end local v20           #sel:Landroid/view/View;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_2

    .line 1588
    .end local v20           #sel:Landroid/view/View;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1593
    .local v5, oldTop:I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1596
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_e

    .line 1599
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 1600
    .local v15, newBottom:I
    add-int/lit8 v3, p4, 0x14

    if-ge v15, v3, :cond_e

    .line 1602
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1607
    .end local v15           #newBottom:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 4131
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    .line 4132
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4133
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4134
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4135
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 4132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4138
    .end local v0           #child:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 3763
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3764
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3765
    .local v4, h:I
    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 3766
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 3767
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3768
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 3769
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3770
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 366
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 367
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    .line 368
    .local v1, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 369
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 373
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_0
    return-void

    .line 366
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 14
    .parameter "amount"

    .prologue
    const/4 v13, 0x0

    .line 4243
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4244
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 4246
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v7, v11, v12

    .line 4247
    .local v7, listRight:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    .line 4248
    .local v6, listLeft:I
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 4250
    .local v10, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 4254
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v9

    .line 4255
    .local v9, numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4256
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_0

    .line 4257
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4258
    .local v3, lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_0

    .line 4259
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4260
    add-int/lit8 v9, v9, 0x1

    .line 4264
    goto :goto_0

    .line 4269
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_1

    .line 4270
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 4274
    :cond_1
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4275
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v6, :cond_f

    .line 4276
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4277
    .local v4, layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4278
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 4279
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4283
    :goto_2
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4284
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    goto :goto_1

    .line 4281
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 4288
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v9           #numChildren:I
    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4291
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_4

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-lez v11, :cond_4

    .line 4292
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4293
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    goto :goto_3

    .line 4298
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_5

    .line 4299
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenLeftAndRight(I)V

    .line 4302
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4303
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4306
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v7, :cond_f

    .line 4307
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4308
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4309
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 4310
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4314
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4315
    goto :goto_4

    .line 4312
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 4318
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v6           #listLeft:I
    .end local v7           #listRight:I
    .end local v10           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 4320
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v11, v12

    .line 4321
    .local v5, listBottom:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 4322
    .local v8, listTop:I
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 4324
    .restart local v10       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    if-gez p1, :cond_b

    .line 4328
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v9

    .line 4329
    .restart local v9       #numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4330
    .restart local v1       #last:Landroid/view/View;
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_8

    .line 4331
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4332
    .restart local v3       #lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_8

    .line 4333
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4334
    add-int/lit8 v9, v9, 0x1

    .line 4338
    goto :goto_6

    .line 4343
    .end local v3           #lastVisiblePosition:I
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_9

    .line 4344
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 4348
    :cond_9
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4349
    .restart local v0       #first:Landroid/view/View;
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v8, :cond_f

    .line 4350
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4351
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4352
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    .line 4353
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4357
    :goto_8
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4358
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    goto :goto_7

    .line 4355
    :cond_a
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_8

    .line 4362
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v9           #numChildren:I
    :cond_b
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4365
    .restart local v0       #first:Landroid/view/View;
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-lez v11, :cond_c

    .line 4366
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4367
    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    goto :goto_9

    .line 4372
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_d

    .line 4373
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    .line 4376
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4377
    .restart local v2       #lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4380
    .restart local v1       #last:Landroid/view/View;
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v5, :cond_f

    .line 4381
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 4382
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4383
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    .line 4384
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4388
    :goto_b
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4389
    goto :goto_a

    .line 4386
    :cond_e
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_b

    .line 4393
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v5           #listBottom:I
    .end local v8           #listTop:I
    :cond_f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 29
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 2642
    if-nez p1, :cond_1

    .line 2826
    :cond_0
    :goto_0
    return-void

    .line 2645
    :cond_1
    if-eqz p6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->shouldShowSelector()Z

    move-result v26

    if-eqz v26, :cond_e

    const/4 v14, 0x1

    .line 2646
    .local v14, isSelected:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v26

    move/from16 v0, v26

    if-eq v14, v0, :cond_f

    const/16 v24, 0x1

    .line 2647
    .local v24, updateChildSelected:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mTouchMode:I

    move/from16 v17, v0

    .line 2648
    .local v17, mode:I
    if-lez v17, :cond_10

    const/16 v26, 0x3

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mMotionPosition:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    .line 2650
    .local v13, isPressed:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v26

    move/from16 v0, v26

    if-eq v13, v0, :cond_11

    const/16 v23, 0x1

    .line 2651
    .local v23, updateChildPressed:Z
    :goto_4
    if-eqz p7, :cond_2

    if-nez v24, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v26

    if-eqz v26, :cond_12

    :cond_2
    const/16 v18, 0x1

    .line 2655
    .local v18, needToMeasure:Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .line 2656
    .local v19, p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    if-nez v19, :cond_3

    .line 2657
    new-instance v19, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    .end local v19           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    .line 2660
    .restart local v19       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    .line 2662
    if-eqz p7, :cond_4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    :cond_4
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 2664
    :cond_5
    if-eqz p4, :cond_13

    const/16 v26, -0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2673
    :goto_7
    if-eqz v24, :cond_6

    .line 2674
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 2677
    :cond_6
    if-eqz v23, :cond_7

    .line 2678
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 2681
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mChoiceMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 2682
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v26, p1

    .line 2683
    check-cast v26, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2687
    :cond_8
    if-eqz v18, :cond_1a

    .line 2689
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 2690
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeightMeasureSpec:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->height:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 2692
    .local v6, childHeightSpec:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->width:I

    move/from16 v16, v0

    .line 2694
    .local v16, lpWidth:I
    if-lez v16, :cond_17

    .line 2695
    const/high16 v26, 0x4000

    move/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 2699
    .local v9, childWidthSpec:I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Landroid/view/View;->measure(II)V

    .line 2717
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v16           #lpWidth:I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 2718
    .local v25, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 2719
    .local v11, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 2720
    .local v10, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFooterViewsCount()I

    move-result v26

    if-lez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 2722
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    move/from16 v1, p2

    if-ne v0, v1, :cond_1d

    .line 2723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 2724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    sub-int v26, v26, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 2730
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 2731
    if-gez p3, :cond_1c

    .line 2732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2736
    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    move/from16 v26, v0

    if-nez v26, :cond_b

    .line 2737
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    .line 2738
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    .line 2759
    :cond_b
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v26, v0

    if-nez v26, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v26, v0

    if-nez v26, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 2760
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2761
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 2762
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v26, v0

    if-nez v26, :cond_20

    .line 2798
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v26

    if-eqz v26, :cond_28

    .line 2799
    if-eqz p4, :cond_26

    move/from16 v8, p3

    .line 2801
    .local v8, childTop:I
    :goto_e
    if-eqz v18, :cond_27

    .line 2802
    add-int v5, p5, v11

    .line 2803
    .local v5, childBottom:I
    add-int v7, v8, v25

    .line 2804
    .local v7, childRight:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v8, v1, v7, v5}, Landroid/view/View;->layout(IIII)V

    .line 2823
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mCachingStarted:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v26

    if-nez v26, :cond_0

    .line 2824
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 2645
    .end local v8           #childTop:I
    .end local v10           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v17           #mode:I
    .end local v18           #needToMeasure:Z
    .end local v19           #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    .end local v23           #updateChildPressed:Z
    .end local v24           #updateChildSelected:Z
    .end local v25           #w:I
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2646
    .restart local v14       #isSelected:Z
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2648
    .restart local v17       #mode:I
    .restart local v24       #updateChildSelected:Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2650
    .restart local v13       #isPressed:Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 2651
    .restart local v23       #updateChildPressed:Z
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 2664
    .restart local v18       #needToMeasure:Z
    .restart local v19       #p:Lcom/htc/widget/HtcAbsListView$LayoutParams;
    :cond_13
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 2666
    :cond_14
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    .line 2667
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 2668
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2670
    :cond_15
    if-eqz p4, :cond_16

    const/16 v26, -0x1

    :goto_10
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v19

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_7

    :cond_16
    const/16 v26, 0x0

    goto :goto_10

    .line 2697
    .restart local v6       #childHeightSpec:I
    .restart local v16       #lpWidth:I
    :cond_17
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childWidthSpec:I
    goto/16 :goto_8

    .line 2701
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v16           #lpWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mWidthMeasureSpec:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->width:I

    move/from16 v28, v0

    invoke-static/range {v26 .. v28}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 2703
    .restart local v9       #childWidthSpec:I
    move-object/from16 v0, v19

    iget v15, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->height:I

    .line 2705
    .local v15, lpHeight:I
    if-lez v15, :cond_19

    .line 2706
    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2710
    .restart local v6       #childHeightSpec:I
    :goto_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Landroid/view/View;->measure(II)V

    goto/16 :goto_9

    .line 2708
    .end local v6           #childHeightSpec:I
    :cond_19
    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto :goto_11

    .line 2714
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v15           #lpHeight:I
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2727
    .restart local v10       #dm:Landroid/util/DisplayMetrics;
    .restart local v11       #h:I
    .restart local v25       #w:I
    :cond_1b
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2728
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto/16 :goto_a

    .line 2734
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    sub-int v26, v26, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_b

    .line 2740
    :cond_1d
    if-nez p2, :cond_b

    .line 2741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 2742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v26, v0

    sub-int v27, p3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v28

    add-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    .line 2743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    .line 2748
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 2749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v27

    sub-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v27

    add-int v26, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v27

    sub-int v22, v26, v27

    .line 2750
    .local v22, tmp_height:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v12, v0, :cond_1f

    .line 2751
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2752
    .local v21, tmp:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v22, v22, v26

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    sub-int v22, v22, v26

    .line 2750
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 2746
    .end local v12           #i:I
    .end local v21           #tmp:Landroid/view/View;
    .end local v22           #tmp_height:I
    :cond_1e
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto :goto_12

    .line 2755
    .restart local v12       #i:I
    .restart local v22       #tmp_height:I
    :cond_1f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_c

    .line 2765
    .end local v12           #i:I
    .end local v22           #tmp_height:I
    .restart local v20       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 2766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_22

    .line 2767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2770
    :goto_14
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 2774
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v26, v0

    if-eqz v26, :cond_21

    .line 2775
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 2776
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 2777
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    .line 2769
    :cond_22
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_14

    .line 2781
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v26, v0

    if-nez v26, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 2782
    :cond_24
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_25

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    .line 2784
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2785
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    .line 2790
    :cond_25
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 2791
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    .line 2799
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_26
    sub-int v8, p3, v25

    goto/16 :goto_e

    .line 2806
    .restart local v8       #childTop:I
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v26

    sub-int v26, v8, v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2807
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v26, p5, v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_f

    .line 2810
    .end local v8           #childTop:I
    :cond_28
    if-eqz p4, :cond_29

    move/from16 v8, p3

    .line 2812
    .restart local v8       #childTop:I
    :goto_15
    if-eqz v18, :cond_2a

    .line 2813
    add-int v7, p5, v25

    .line 2814
    .restart local v7       #childRight:I
    add-int v5, v8, v11

    .line 2815
    .restart local v5       #childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8, v7, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    .line 2810
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    .end local v8           #childTop:I
    :cond_29
    sub-int v8, p3, v11

    goto :goto_15

    .line 2817
    .restart local v8       #childTop:I
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v26

    sub-int v26, p5, v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2818
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v26, v8, v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_f
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 616
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 617
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 619
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 621
    .local v3, listBottom:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 630
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mScrollX:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 631
    .local v0, listLeft:I
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 639
    .local v0, childCount:I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 640
    .local v3, rightOfRightChild:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 642
    .local v1, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 644
    .local v2, listRight:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 607
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 608
    .local v0, listTop:I
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    .line 422
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 423
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 460
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 461
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 389
    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    .line 390
    .local v0, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 391
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    .line 392
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    .line 393
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 400
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 337
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    .line 318
    .local v0, info:Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 319
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    .line 320
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    .line 321
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public addHeaderViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    .line 444
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 445
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 3482
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mInLayout:Z

    .line 3483
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollImpl(I)Z

    move-result v0

    .line 3484
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 3485
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3489
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListViewCore;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcListViewCore;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2867
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 4474
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 4475
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 4477
    .local v10, dividerWidth:I
    if-lez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 4479
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 4480
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mPaddingTop:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 4481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mPaddingBottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 4483
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 4484
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 4485
    .local v16, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    add-int/lit8 v15, v28, -0x1

    .line 4486
    .local v15, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    move/from16 v17, v0

    .line 4487
    .local v17, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 4488
    .local v14, footerDividers:Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 4490
    .local v13, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_3

    .line 4492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v22, v28, v29

    .line 4494
    .local v22, listRight:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v8, :cond_13

    .line 4495
    if-nez v17, :cond_0

    add-int v28, v13, v18

    move/from16 v0, v28

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    :cond_0
    if-nez v14, :cond_1

    add-int v28, v13, v18

    move/from16 v0, v28

    if-ge v0, v15, :cond_2

    .line 4497
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4498
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v25

    .line 4499
    .local v25, right:I
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 4500
    move/from16 v0, v25

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4501
    add-int v28, v25, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_2

    .line 4507
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4494
    .end local v7           #child:Landroid/view/View;
    .end local v25           #right:I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 4517
    .end local v18           #i:I
    .end local v22           #listRight:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 4519
    .local v21, listLeft:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_13

    .line 4520
    if-nez v17, :cond_4

    add-int v28, v13, v18

    move/from16 v0, v28

    move/from16 v1, v16

    if-lt v0, v1, :cond_6

    :cond_4
    if-nez v14, :cond_5

    add-int v28, v13, v18

    move/from16 v0, v28

    if-ge v0, v15, :cond_6

    .line 4522
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4523
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v19

    .line 4524
    .local v19, left:I
    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 4525
    sub-int v28, v19, v10

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4526
    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_6

    .line 4536
    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4519
    .end local v7           #child:Landroid/view/View;
    .end local v19           #left:I
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 4547
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v10           #dividerWidth:I
    .end local v13           #first:I
    .end local v14           #footerDividers:Z
    .end local v15           #footerLimit:I
    .end local v16           #headerCount:I
    .end local v17           #headerDividers:Z
    .end local v18           #i:I
    .end local v21           #listLeft:I
    :cond_7
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 4548
    .local v9, dividerHeight:I
    if-lez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    const/4 v11, 0x1

    .line 4550
    .local v11, drawDividers:Z
    :goto_2
    if-eqz v11, :cond_13

    .line 4552
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 4553
    .restart local v6       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 4554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 4556
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    .line 4557
    .restart local v8       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 4558
    .restart local v16       #headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    add-int/lit8 v15, v28, -0x1

    .line 4559
    .restart local v15       #footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    move/from16 v17, v0

    .line 4560
    .restart local v17       #headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 4561
    .restart local v14       #footerDividers:Z
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 4562
    .restart local v13       #first:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 4563
    .local v4, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 4568
    .local v3, adapter:Landroid/widget/ListAdapter;
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isOpaque()Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v28

    if-nez v28, :cond_d

    const/4 v12, 0x1

    .line 4570
    .local v12, fillForMissingDividers:Z
    :goto_3
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    if-nez v28, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 4571
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getCacheColorHint()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 4574
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    .line 4576
    .local v24, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScrollY:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .line 4577
    .local v20, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_e

    .line 4581
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v8, :cond_13

    .line 4582
    if-nez v17, :cond_9

    add-int v28, v13, v18

    move/from16 v0, v28

    move/from16 v1, v16

    if-lt v0, v1, :cond_b

    :cond_9
    if-nez v14, :cond_a

    add-int v28, v13, v18

    move/from16 v0, v28

    if-ge v0, v15, :cond_b

    .line 4584
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4585
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 4586
    .local v5, bottom:I
    move/from16 v0, v20

    if-ge v5, v0, :cond_b

    .line 4587
    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 4588
    add-int v28, v5, v9

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 4592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_b

    .line 4594
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4581
    .end local v5           #bottom:I
    .end local v7           #child:Landroid/view/View;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 4548
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #fillForMissingDividers:Z
    .end local v13           #first:I
    .end local v14           #footerDividers:Z
    .end local v15           #footerLimit:I
    .end local v16           #headerCount:I
    .end local v17           #headerDividers:Z
    .end local v18           #i:I
    .end local v20           #listBottom:I
    .end local v24           #paint:Landroid/graphics/Paint;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 4568
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    .restart local v4       #areAllItemsSelectable:Z
    .restart local v6       #bounds:Landroid/graphics/Rect;
    .restart local v8       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v13       #first:I
    .restart local v14       #footerDividers:Z
    .restart local v15       #footerLimit:I
    .restart local v16       #headerCount:I
    .restart local v17       #headerDividers:Z
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4604
    .restart local v12       #fillForMissingDividers:Z
    .restart local v20       #listBottom:I
    .restart local v24       #paint:Landroid/graphics/Paint;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 4606
    .local v23, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScrollY:I

    move/from16 v26, v0

    .line 4608
    .local v26, scrollY:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    move/from16 v0, v18

    if-ge v0, v8, :cond_12

    .line 4609
    if-nez v17, :cond_f

    add-int v28, v13, v18

    move/from16 v0, v28

    move/from16 v1, v16

    if-lt v0, v1, :cond_11

    :cond_f
    if-nez v14, :cond_10

    add-int v28, v13, v18

    move/from16 v0, v28

    if-ge v0, v15, :cond_11

    .line 4611
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4612
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4613
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 4614
    sub-int v28, v27, v9

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 4615
    move/from16 v0, v27

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    if-eq v0, v7, :cond_11

    .line 4625
    add-int/lit8 v28, v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4608
    .end local v7           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_11
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 4634
    :cond_12
    if-lez v8, :cond_13

    if-lez v26, :cond_13

    if-eqz v11, :cond_13

    .line 4635
    move/from16 v0, v20

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 4636
    add-int v28, v20, v9

    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 4637
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4645
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #areAllItemsSelectable:Z
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #count:I
    .end local v9           #dividerHeight:I
    .end local v11           #drawDividers:Z
    .end local v12           #fillForMissingDividers:Z
    .end local v13           #first:I
    .end local v14           #footerDividers:Z
    .end local v15           #footerLimit:I
    .end local v16           #headerCount:I
    .end local v17           #headerDividers:Z
    .end local v18           #i:I
    .end local v20           #listBottom:I
    .end local v23           #listTop:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v26           #scrollY:I
    :cond_13
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4646
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 3088
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 3089
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 3091
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3092
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 3095
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3098
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 3034
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 3038
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 3039
    const/4 v4, 0x0

    .line 3040
    .local v4, itemCount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedItemPosition()I

    move-result v2

    .line 3042
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3043
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 3044
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 3045
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 3046
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 3047
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3048
    add-int/lit8 v4, v4, 0x1

    .line 3046
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3049
    :cond_1
    if-gt v3, v2, :cond_0

    .line 3050
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3054
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 3058
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3059
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 3062
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 4659
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4661
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->shouldDrawSeperatorDivider(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4662
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4663
    .local v1, seperatorDivider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4664
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4670
    .end local v1           #seperatorDivider:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 4668
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4669
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 855
    const/4 v8, 0x0

    .line 858
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 859
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 861
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 863
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 864
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 867
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 894
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    return-object v8

    :cond_1
    move v5, v9

    .line 863
    goto :goto_1

    .line 869
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    add-int p2, v0, v1

    .line 870
    if-eqz v5, :cond_3

    .line 871
    move-object v8, v6

    .line 873
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 874
    goto :goto_0

    .line 876
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #end:I
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 878
    .restart local v7       #end:I
    :goto_2
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 880
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    move v5, v3

    .line 881
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 884
    .restart local v6       #child:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 886
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int p2, v0, v1

    .line 887
    if-eqz v5, :cond_5

    .line 888
    move-object v8, v6

    .line 890
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 891
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 880
    goto :goto_3
.end method

.method fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    const/4 v3, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 813
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 814
    if-eqz p1, :cond_1

    .line 815
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    add-int v1, v2, v3

    .line 818
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 819
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    .line 840
    :goto_1
    return-void

    .line 815
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 821
    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int v1, v2, v3

    .line 823
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 824
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1

    .line 821
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2

    .line 827
    :cond_3
    if-eqz p1, :cond_5

    .line 828
    if-lez v0, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v1, v2, v3

    .line 831
    .restart local v1       #startOffset:I
    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    .line 832
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    goto :goto_1

    .line 828
    .end local v1           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingTop()I

    move-result v1

    goto :goto_3

    .line 834
    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v1, v2, v3

    .line 836
    .restart local v1       #startOffset:I
    :goto_4
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    .line 837
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1

    .line 834
    .end local v1           #startOffset:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_4
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 909
    const/4 v8, 0x0

    .line 912
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 915
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_0

    if-ltz p1, :cond_0

    .line 917
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v9

    .line 918
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 919
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 945
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 947
    return-object v8

    :cond_1
    move v5, v3

    .line 917
    goto :goto_1

    .line 921
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    sub-int p2, v0, v1

    .line 922
    if-eqz v5, :cond_3

    .line 923
    move-object v8, v6

    .line 925
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 926
    goto :goto_0

    .line 928
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #end:I
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 930
    .restart local v7       #end:I
    :goto_2
    if-le p2, v7, :cond_0

    if-ltz p1, :cond_0

    .line 932
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    move v5, v9

    .line 933
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 934
    .restart local v6       #child:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 936
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 937
    if-eqz v5, :cond_5

    .line 938
    move-object v8, v6

    .line 940
    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 941
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_6
    move v5, v3

    .line 932
    goto :goto_3
.end method

.method findMotionColumn(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 1934
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 1935
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1936
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1937
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1938
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1943
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1935
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1941
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1943
    .end local v1           #i:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 1950
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 1951
    .local v0, childCount:I
    if-lez v0, :cond_4

    .line 1952
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1953
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1954
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1955
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1956
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1970
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 1953
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1960
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 1961
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1962
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1963
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1960
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1968
    .end local v2           #v:Landroid/view/View;
    :cond_3
    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1970
    .end local v1           #i:I
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4876
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4877
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4880
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4881
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 4883
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4884
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4886
    if-eqz v2, :cond_0

    .line 4892
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 4880
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4892
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .parameter "id"

    .prologue
    .line 4857
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4858
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4859
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4860
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4868
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 4863
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4864
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4865
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4868
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4922
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4923
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4926
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4927
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    .line 4929
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4930
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4932
    if-eqz v2, :cond_0

    .line 4938
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 4926
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4938
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 4902
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4903
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4904
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4905
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4914
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 4909
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4910
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4911
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4914
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3317
    const/4 v0, 0x0

    .line 3320
    .local v0, moved:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3321
    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    .line 3322
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3323
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3324
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 3325
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3326
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 3327
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 3329
    :cond_0
    const/4 v0, 0x1

    .line 3369
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3370
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    .line 3371
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3374
    :cond_2
    return v0

    .line 3331
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    .line 3332
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3333
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3335
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 3336
    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3337
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 3338
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 3340
    :cond_4
    const/4 v0, 0x1

    .line 3341
    goto :goto_0

    .line 3344
    .end local v1           #position:I
    :cond_5
    const/16 v2, 0x21

    if-ne p1, v2, :cond_7

    .line 3345
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3346
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3347
    .restart local v1       #position:I
    if-ltz v1, :cond_6

    .line 3348
    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3349
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 3350
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 3352
    :cond_6
    const/4 v0, 0x1

    .line 3353
    goto :goto_0

    .line 3354
    .end local v1           #position:I
    :cond_7
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 3355
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3356
    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3358
    .restart local v1       #position:I
    if-ltz v1, :cond_8

    .line 3359
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3360
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 3361
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 3363
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4964
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4965
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getCheckedItemIds()[J

    move-result-object v5

    .line 4994
    :cond_0
    :goto_0
    return-object v5

    .line 4970
    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcListViewCore;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 4971
    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4972
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 4973
    .local v3, count:I
    new-array v5, v3, [J

    .line 4974
    .local v5, ids:[J
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 4976
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 4977
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 4978
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4979
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 4977
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_1

    .line 4985
    :cond_2
    if-eq v2, v3, :cond_0

    .line 4988
    new-array v6, v2, [J

    .line 4989
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 4991
    goto :goto_0

    .line 4994
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4678
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4717
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 4738
    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 4445
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 4

    .prologue
    const v3, 0x3ea8f5c3

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, amount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 211
    :goto_0
    return v0

    .line 209
    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_0
.end method

.method public isAdjustFooter()Z
    .locals 1

    .prologue
    .line 5035
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    return v0
.end method

.method public isFootAdjusted()Z
    .locals 1

    .prologue
    .line 2855
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 4453
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 31

    .prologue
    .line 2230
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    .line 2231
    .local v15, blockLayoutRequests:Z
    if-nez v15, :cond_0

    .line 2232
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    .line 2238
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    .line 2240
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_1

    .line 2243
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 2244
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2552
    if-nez v15, :cond_0

    .line 2553
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2248
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v9

    add-int v13, v3, v9

    .line 2249
    .local v13, childrenTop:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v9

    sub-int v14, v3, v9

    .line 2252
    .local v14, childrenBottom:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v9

    add-int v7, v3, v9

    .line 2253
    .local v7, childrenLeft:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mRight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mLeft:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getRightBorderWidth()I

    move-result v9

    sub-int v8, v3, v9

    .line 2256
    .local v8, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v17

    .line 2257
    .local v17, childCount:I
    const/16 v26, 0x0

    .line 2258
    .local v26, index:I
    const/4 v6, 0x0

    .line 2261
    .local v6, delta:I
    const/4 v4, 0x0

    .line 2262
    .local v4, oldSel:Landroid/view/View;
    const/16 v27, 0x0

    .line 2263
    .local v27, oldFirst:Landroid/view/View;
    const/4 v5, 0x0

    .line 2265
    .local v5, newSel:Landroid/view/View;
    const/16 v21, 0x0

    .line 2268
    .local v21, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    packed-switch v3, :pswitch_data_0

    .line 2285
    :pswitch_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v26, v3, v9

    .line 2286
    if-ltz v26, :cond_2

    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 2287
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2291
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 2293
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    if-ltz v3, :cond_3

    .line 2294
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    sub-int v6, v3, v9

    .line 2298
    :cond_3
    add-int v3, v26, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2302
    :cond_4
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mDataChanged:Z

    move/from16 v18, v0

    .line 2303
    .local v18, dataChanged:Z
    if-eqz v18, :cond_5

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->handleDataChanged()V

    .line 2309
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-nez v3, :cond_6

    .line 2310
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 2311
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2552
    if-nez v15, :cond_0

    .line 2553
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2270
    .end local v18           #dataChanged:Z
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int v26, v3, v9

    .line 2271
    if-ltz v26, :cond_4

    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 2272
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    .line 2315
    .restart local v18       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 2319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move/from16 v19, v0

    .line 2320
    .local v19, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v29, v0

    .line 2323
    .local v29, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    const/16 v20, 0x0

    .line 2328
    .local v20, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v18, :cond_7

    .line 2329
    const/16 v25, 0x0

    .local v25, i:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 2330
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2329
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 2337
    .end local v25           #i:I
    :cond_7
    move-object/from16 v0, v29

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 2344
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 2345
    .local v24, focusedChild:Landroid/view/View;
    if-eqz v24, :cond_b

    .line 2350
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2351
    :cond_9
    move-object/from16 v20, v24

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->findFocus()Landroid/view/View;

    move-result-object v21

    .line 2354
    if-eqz v21, :cond_a

    .line 2356
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2359
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->requestFocus()Z

    .line 2363
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->detachAllViewsFromParent()V

    .line 2365
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    packed-switch v3, :pswitch_data_1

    .line 2424
    if-nez v17, :cond_1b

    .line 2425
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-nez v3, :cond_19

    .line 2426
    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v28

    .line 2427
    .local v28, position:I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2430
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 2484
    .end local v7           #childrenLeft:I
    .end local v13           #childrenTop:I
    .end local v28           #position:I
    .local v30, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v29 .. v29}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    .line 2486
    if-eqz v30, :cond_28

    .line 2489
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v3, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_27

    .line 2490
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_d
    const/16 v22, 0x1

    .line 2492
    .local v22, focusWasTaken:Z
    :goto_4
    if-nez v22, :cond_26

    .line 2496
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    .line 2497
    .local v23, focused:Landroid/view/View;
    if-eqz v23, :cond_e

    .line 2498
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    .line 2500
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 2508
    .end local v22           #focusWasTaken:Z
    .end local v23           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedTop:I

    .line 2511
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedTop:I

    .line 2534
    :cond_f
    :goto_6
    if-eqz v21, :cond_10

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 2536
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2539
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 2540
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mDataChanged:Z

    .line 2541
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mNeedSync:Z

    .line 2542
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->updateScrollIndicators()V

    .line 2546
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-lez v3, :cond_11

    .line 2547
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 2550
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2552
    if-nez v15, :cond_0

    .line 2553
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2368
    .end local v30           #sel:Landroid/view/View;
    .restart local v7       #childrenLeft:I
    .restart local v13       #childrenTop:I
    :pswitch_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2369
    if-eqz v5, :cond_12

    .line 2370
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v8}, Lcom/htc/widget/HtcListViewCore;->fillFromSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2372
    .end local v30           #sel:Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2375
    .end local v30           #sel:Landroid/view/View;
    :cond_13
    if-eqz v5, :cond_14

    .line 2376
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14}, Lcom/htc/widget/HtcListViewCore;->fillFromSelection(III)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2378
    .end local v30           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/htc/widget/HtcListViewCore;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v30

    .line 2381
    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2383
    .end local v30           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 2384
    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2386
    .end local v30           #sel:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .line 2387
    .restart local v30       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2552
    .end local v4           #oldSel:Landroid/view/View;
    .end local v5           #newSel:Landroid/view/View;
    .end local v6           #delta:I
    .end local v7           #childrenLeft:I
    .end local v8           #childrenRight:I
    .end local v13           #childrenTop:I
    .end local v14           #childrenBottom:I
    .end local v17           #childCount:I
    .end local v18           #dataChanged:Z
    .end local v19           #firstPosition:I
    .end local v20           #focusLayoutRestoreDirectChild:Landroid/view/View;
    .end local v21           #focusLayoutRestoreView:Landroid/view/View;
    .end local v24           #focusedChild:Landroid/view/View;
    .end local v26           #index:I
    .end local v27           #oldFirst:Landroid/view/View;
    .end local v29           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v30           #sel:Landroid/view/View;
    :catchall_0
    move-exception v3

    if-nez v15, :cond_15

    .line 2553
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/htc/widget/HtcListViewCore;->mBlockLayoutRequests:Z

    :cond_15
    throw v3

    .line 2390
    .restart local v4       #oldSel:Landroid/view/View;
    .restart local v5       #newSel:Landroid/view/View;
    .restart local v6       #delta:I
    .restart local v7       #childrenLeft:I
    .restart local v8       #childrenRight:I
    .restart local v13       #childrenTop:I
    .restart local v14       #childrenBottom:I
    .restart local v17       #childCount:I
    .restart local v18       #dataChanged:Z
    .restart local v19       #firstPosition:I
    .restart local v20       #focusLayoutRestoreDirectChild:Landroid/view/View;
    .restart local v21       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v24       #focusedChild:Landroid/view/View;
    .restart local v26       #index:I
    .restart local v27       #oldFirst:Landroid/view/View;
    .restart local v29       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    :pswitch_6
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 2391
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 2392
    .restart local v30       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2396
    .end local v30           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .line 2397
    .restart local v30       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2400
    .end local v30           #sel:Landroid/view/View;
    :pswitch_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 2401
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .line 2402
    .restart local v30       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2407
    .end local v30           #sel:Landroid/view/View;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2408
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mSpecificLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2410
    .end local v30           #sel:Landroid/view/View;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .line 2413
    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2416
    .end local v30           #sel:Landroid/view/View;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v3, p0

    .line 2417
    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v30           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    .line 2419
    invoke-direct/range {v9 .. v14}, Lcom/htc/widget/HtcListViewCore;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v30

    .line 2422
    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2432
    .end local v30           #sel:Landroid/view/View;
    .restart local v28       #position:I
    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2436
    .end local v28           #position:I
    .end local v30           #sel:Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v28

    .line 2437
    .restart local v28       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 2439
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2440
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2442
    .end local v30           #sel:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2447
    .end local v28           #position:I
    .end local v30           #sel:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-ltz v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge v3, v9, :cond_1f

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2451
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-nez v4, :cond_1c

    .end local v7           #childrenLeft:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v30           #sel:Landroid/view/View;
    .restart local v7       #childrenLeft:I
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_7

    .line 2454
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    if-nez v4, :cond_1e

    .end local v13           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v30           #sel:Landroid/view/View;
    .restart local v13       #childrenTop:I
    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v13

    goto :goto_8

    .line 2458
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-ge v3, v9, :cond_23

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2462
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v27, :cond_20

    .end local v7           #childrenLeft:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v30           #sel:Landroid/view/View;
    .restart local v7       #childrenLeft:I
    :cond_20
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLeft()I

    move-result v7

    goto :goto_9

    .line 2465
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    if-nez v27, :cond_22

    .end local v13           #childrenTop:I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v30           #sel:Landroid/view/View;
    .restart local v13       #childrenTop:I
    :cond_22
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v13

    goto :goto_a

    .line 2472
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2473
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2475
    .end local v30           #sel:Landroid/view/View;
    :cond_24
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v30

    .restart local v30       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2490
    .end local v7           #childrenLeft:I
    .end local v13           #childrenTop:I
    :cond_25
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 2502
    .restart local v22       #focusWasTaken:Z
    :cond_26
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 2503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 2506
    .end local v22           #focusWasTaken:Z
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 2514
    :cond_28
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mTouchMode:I

    if-lez v3, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mTouchMode:I

    const/4 v9, 0x3

    if-ge v3, v9, :cond_2a

    .line 2515
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2516
    .local v16, child:Landroid/view/View;
    if-eqz v16, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 2527
    .end local v16           #child:Landroid/view/View;
    :cond_29
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v21, :cond_f

    .line 2528
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 2518
    :cond_2a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedTop:I

    .line 2520
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedLeft:I

    .line 2522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    .line 2268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2365
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 3001
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 3002
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3028
    :cond_0
    :goto_0
    return v2

    .line 3006
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 3007
    .local v1, count:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 3008
    if-eqz p2, :cond_2

    .line 3009
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3010
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3011
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3014
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3015
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3016
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 3020
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3023
    goto :goto_0

    .line 3025
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3028
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1783
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 1784
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1785
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1838
    :cond_0
    :goto_0
    return v6

    .line 1789
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1790
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 1793
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 1798
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1799
    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 1800
    .local v7, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v8

    .line 1801
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    .line 1803
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1804
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1806
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    .line 1808
    if-lez v4, :cond_3

    .line 1810
    add-int/2addr v9, v3

    .line 1814
    :cond_3
    if-eqz v8, :cond_4

    .line 1815
    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1818
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1820
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1823
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1790
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1831
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1832
    move v6, v9

    .line 1803
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1838
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 10
    .parameter "heightMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxWidth"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 1875
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1876
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v8, v9

    .line 1928
    :cond_0
    :goto_0
    return v4

    .line 1880
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    .line 1881
    .local v7, returnedWidth:I
    iget v8, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 1884
    .local v2, dividerWidth:I
    :goto_1
    const/4 v4, 0x0

    .line 1889
    .local v4, prevWidthWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 1890
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    .line 1891
    .local v5, recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v6

    .line 1893
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 1894
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    invoke-virtual {p0, v3, v8}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1896
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    .line 1898
    if-lez v3, :cond_3

    .line 1900
    add-int/2addr v7, v2

    .line 1904
    :cond_3
    if-eqz v6, :cond_4

    .line 1905
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1908
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 1910
    if-lt v7, p4, :cond_7

    .line 1913
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 1881
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerWidth:I
    .end local v3           #i:I
    .end local v4           #prevWidthWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .end local v6           #recyle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 1921
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerWidth:I
    .restart local v3       #i:I
    .restart local v4       #prevWidthWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/htc/widget/HtcAbsListView$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 1922
    move v4, v7

    .line 1893
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_9
    move v4, v7

    .line 1928
    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 1230
    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    invoke-super {p0, p1, v9}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1231
    .local v2, child:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1232
    const/4 v2, 0x0

    .line 1295
    .end local v2           #child:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 1233
    .restart local v2       #child:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1234
    .local v6, tag:Ljava/lang/Object;
    iget-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    if-nez v9, :cond_2

    .line 1235
    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    .line 1236
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    .line 1240
    :cond_2
    const v9, 0x20201c8

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 1244
    const v9, 0x2020019

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1245
    .local v4, child_top_round:Landroid/view/View;
    const v9, 0x2020018

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1255
    .local v3, child_bottom_round:Landroid/view/View;
    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    move-object v7, v6

    .line 1256
    check-cast v7, Lcom/htc/widget/HtcListItemSeparableType;

    .line 1257
    .local v7, tagItem:Lcom/htc/widget/HtcListItemSeparableType;
    const/4 v8, 0x0

    .line 1258
    .local v8, top_round:Z
    const/4 v1, 0x0

    .line 1259
    .local v1, bottom_round:Z
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1260
    const/4 v8, 0x1

    .line 1261
    :cond_3
    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_5

    .line 1262
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mBottom:I

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v10

    add-int v5, v9, v10

    .line 1264
    .local v5, listBottom:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1265
    .local v0, bottom:I
    if-le v0, v5, :cond_4

    .line 1266
    const/4 v1, 0x1

    .line 1269
    .end local v0           #bottom:I
    .end local v5           #listBottom:I
    :cond_4
    :goto_1
    if-eqz v8, :cond_7

    if-eqz v1, :cond_7

    .line 1270
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 1271
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1267
    :cond_5
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1268
    const/4 v1, 0x1

    goto :goto_1

    .line 1274
    :cond_6
    const v9, 0x2080693

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1275
    :cond_7
    if-eqz v8, :cond_9

    .line 1276
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 1277
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1280
    :cond_8
    const v9, 0x2080696

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1281
    :cond_9
    if-eqz v1, :cond_b

    .line 1282
    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 1283
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1286
    :cond_a
    const v9, 0x2080694

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1288
    :cond_b
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    .line 1289
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1292
    :cond_c
    const v9, 0x2080695

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4839
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onFinishInflate()V

    .line 4841
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    .line 4842
    .local v0, count:I
    if-lez v0, :cond_1

    .line 4843
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4844
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;)V

    .line 4843
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4846
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->removeAllViews()V

    .line 4848
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4784
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4786
    const/4 v2, -0x1

    .line 4787
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 4788
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 4790
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 4793
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 4794
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 4795
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 4800
    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    .line 4801
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 4802
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    .line 4803
    .local v1, childCount:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    .line 4805
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 4807
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4805
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4811
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4812
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4813
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4814
    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 4816
    .local v3, distance:I
    if-ge v3, v6, :cond_1

    .line 4817
    move v6, v3

    .line 4818
    move v2, v5

    goto :goto_1

    .line 4823
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v2, :cond_4

    .line 4824
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    .line 4828
    :goto_2
    return-void

    .line 4826
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 3108
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3113
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1651
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    .line 1653
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1654
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1655
    .local v16, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1656
    .local v11, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1658
    .local v6, heightSize:I
    const/4 v15, 0x0

    .line 1659
    .local v15, childWidth:I
    const/4 v14, 0x0

    .line 1661
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    .line 1662
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-lez v2, :cond_1

    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 1664
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mIsScrap:[Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1666
    .local v13, child:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    .line 1668
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1669
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v2, v2, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1677
    .end local v13           #child:Landroid/view/View;
    :cond_1
    if-nez v17, :cond_2

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalScrollbarWidth()I

    move-result v3

    add-int v11, v2, v3

    .line 1682
    :cond_2
    if-nez v16, :cond_3

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    .line 1687
    :cond_3
    const/high16 v2, -0x8000

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 1689
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->measureHeightOfChildren(IIIII)I

    move-result v6

    .line 1693
    :cond_4
    const/high16 v2, -0x8000

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 1695
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/htc/widget/HtcListViewCore;->measureWidthOfChildren(IIIII)I

    move-result v11

    .line 1699
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Lcom/htc/widget/HtcListViewCore;->setMeasuredDimension(II)V

    .line 1700
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mWidthMeasureSpec:I

    .line 1703
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mHeightMeasureSpec:I

    .line 1705
    return-void

    .line 1661
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1632
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1633
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1634
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1635
    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1636
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1637
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/widget/HtcListViewCore;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1638
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1639
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    if-nez v5, :cond_0

    .line 1640
    new-instance v5, Lcom/htc/widget/HtcListViewCore$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcListViewCore$FocusSelector;-><init>(Lcom/htc/widget/HtcListViewCore;Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    .line 1642
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/htc/widget/HtcListViewCore$FocusSelector;->setup(II)Lcom/htc/widget/HtcListViewCore$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->post(Ljava/lang/Runnable;)Z

    .line 1645
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->onSizeChanged(IIII)V

    .line 1646
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4944
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4947
    const/4 v0, 0x0

    .line 4949
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3256
    const/4 v1, -0x1

    .line 3257
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 3259
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 3260
    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3266
    :cond_0
    :goto_0
    if-ltz v1, :cond_7

    .line 3267
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3268
    .local v2, position:I
    if-ltz v2, :cond_7

    .line 3269
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3272
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3273
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mSpecificLeft:I

    .line 3275
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 3276
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3279
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3280
    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3295
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    .line 3296
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    .line 3297
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3298
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 3305
    .end local v2           #position:I
    :cond_3
    :goto_2
    return v3

    .line 3261
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 3262
    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3263
    const/4 v0, 0x1

    goto :goto_0

    .line 3283
    .restart local v2       #position:I
    :cond_5
    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mSpecificTop:I

    .line 3285
    if-eqz v0, :cond_6

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_6

    .line 3286
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 3289
    :cond_6
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3290
    iput v3, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    goto :goto_1

    .end local v2           #position:I
    :cond_7
    move v3, v4

    .line 3305
    goto :goto_2
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1751
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 480
    const/4 v0, 0x1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 485
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 356
    const/4 v0, 0x1

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 361
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 26
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 661
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 663
    .local v16, rectLeftWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getWidth()I

    move-result v23

    .line 664
    .local v23, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getScrollX()I

    move-result v13

    .line 665
    .local v13, listUnfadedLeft:I
    add-int v14, v13, v23

    .line 666
    .local v14, listUnfadedRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHorizontalFadingEdgeLength()I

    move-result v9

    .line 668
    .local v9, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->showingLeftFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_0

    move/from16 v0, v16

    if-le v0, v9, :cond_1

    .line 671
    :cond_0
    add-int/2addr v13, v9

    .line 675
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    .line 676
    .local v4, childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v18

    .line 678
    .local v18, rightOfRightChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->showingRightFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 680
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v25, v18, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 682
    :cond_2
    sub-int v18, v18, v9

    .line 686
    :cond_3
    const/16 v20, 0x0

    .line 688
    .local v20, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v14, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v13, :cond_7

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 695
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int v20, v20, v24

    .line 702
    :goto_0
    sub-int v8, v18, v14

    .line 703
    .local v8, distanceToRight:I
    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 723
    .end local v8           #distanceToRight:I
    :cond_4
    :goto_1
    if-eqz v20, :cond_9

    const/16 v19, 0x1

    .line 724
    .local v19, scroll:Z
    :goto_2
    if-eqz v19, :cond_5

    .line 725
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    .line 726
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mSelectedLeft:I

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 802
    .end local v13           #listUnfadedLeft:I
    .end local v14           #listUnfadedRight:I
    .end local v16           #rectLeftWithinChild:I
    .end local v18           #rightOfRightChild:I
    .end local v20           #scrollXDelta:I
    .end local v23           #width:I
    :cond_5
    :goto_3
    return v19

    .line 698
    .end local v19           #scroll:Z
    .restart local v13       #listUnfadedLeft:I
    .restart local v14       #listUnfadedRight:I
    .restart local v16       #rectLeftWithinChild:I
    .restart local v18       #rightOfRightChild:I
    .restart local v20       #scrollXDelta:I
    .restart local v23       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    add-int v20, v20, v24

    goto :goto_0

    .line 704
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v14, :cond_4

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 711
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v14, v24

    sub-int v20, v20, v24

    .line 718
    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 719
    .local v11, left:I
    sub-int v5, v11, v13

    .line 720
    .local v5, deltaToLeft:I
    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto :goto_1

    .line 714
    .end local v5           #deltaToLeft:I
    .end local v11           #left:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    sub-int v20, v20, v24

    goto :goto_4

    .line 723
    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    .line 731
    .end local v4           #childCount:I
    .end local v9           #fadingEdge:I
    .end local v13           #listUnfadedLeft:I
    .end local v14           #listUnfadedRight:I
    .end local v16           #rectLeftWithinChild:I
    .end local v18           #rightOfRightChild:I
    .end local v20           #scrollXDelta:I
    .end local v23           #width:I
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 733
    .local v17, rectTopWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v10

    .line 734
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getScrollY()I

    move-result v15

    .line 735
    .local v15, listUnfadedTop:I
    add-int v12, v15, v10

    .line 736
    .local v12, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 738
    .restart local v9       #fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->showingTopFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 740
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_b

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    .line 741
    :cond_b
    add-int/2addr v15, v9

    .line 745
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    .line 746
    .restart local v4       #childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 748
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->showingBottomFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 750
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v25, v3, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 752
    :cond_d
    sub-int/2addr v12, v9

    .line 756
    :cond_e
    const/16 v21, 0x0

    .line 758
    .local v21, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v12, :cond_11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v15, :cond_11

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_10

    .line 765
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    add-int v21, v21, v24

    .line 772
    :goto_5
    sub-int v7, v3, v12

    .line 773
    .local v7, distanceToBottom:I
    move/from16 v0, v21

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 793
    .end local v7           #distanceToBottom:I
    :cond_f
    :goto_6
    if-eqz v21, :cond_13

    const/16 v19, 0x1

    .line 794
    .restart local v19       #scroll:Z
    :goto_7
    if-eqz v19, :cond_5

    .line 795
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    .line 796
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mSelectedTop:I

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    goto/16 :goto_3

    .line 768
    .end local v19           #scroll:Z
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    add-int v21, v21, v24

    goto :goto_5

    .line 774
    :cond_11
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v15, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_f

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_12

    .line 781
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v12, v24

    sub-int v21, v21, v24

    .line 788
    :goto_8
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v22

    .line 789
    .local v22, top:I
    sub-int v6, v22, v15

    .line 790
    .local v6, deltaToTop:I
    move/from16 v0, v21

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_6

    .line 784
    .end local v6           #deltaToTop:I
    .end local v22           #top:I
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v15, v24

    sub-int v21, v21, v24

    goto :goto_8

    .line 793
    :cond_13
    const/16 v19, 0x0

    goto :goto_7
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 584
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 587
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "adapter"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    .line 525
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    .line 527
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 528
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    .line 533
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mOldSelectedPosition:I

    .line 534
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcListViewCore;->mOldSelectedRowId:J

    .line 537
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 539
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 540
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 541
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mOldItemCount:I

    .line 542
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    .line 543
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    .line 545
    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    .line 546
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 548
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 551
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 552
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 556
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    .line 557
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 559
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mItemCount:I

    if-nez v1, :cond_2

    .line 561
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    .line 570
    .end local v0           #position:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 571
    return-void

    .line 530
    :cond_3
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 554
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 564
    .end local v0           #position:I
    :cond_5
    iput-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    .line 565
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    .line 567
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAdjustFooter(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5028
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    .line 5029
    return-void
.end method

.method public setAdjustForSipOff(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2840
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    .line 2841
    return-void
.end method

.method public setAdjustForSipOn(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2844
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    .line 2845
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 4459
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 4460
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    .line 4461
    if-eqz v0, :cond_1

    .line 4462
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 4463
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    .line 4465
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4467
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    .line 4468
    return-void

    .line 4459
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 4689
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4690
    if-eqz p1, :cond_3

    .line 4691
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 4692
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mClipDivider:Z

    .line 4705
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4706
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 4707
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4708
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    .line 4709
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 4710
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 4711
    return-void

    .line 4694
    :cond_3
    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 4695
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mClipDivider:Z

    goto :goto_0

    .line 4698
    :cond_4
    if-eqz p1, :cond_5

    .line 4699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    goto :goto_0

    .line 4701
    :cond_5
    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 4727
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    .line 4728
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    .line 4729
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 4730
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 4750
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerWidth:I

    .line 4751
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayoutIfNecessary()V

    .line 4752
    return-void
.end method

.method public setFootAdjusted(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2862
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    .line 2863
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 4778
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    .line 4779
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 4780
    return-void
.end method

.method public setForceAdjustFooter(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2848
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    .line 2849
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 4765
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    .line 4766
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    .line 4767
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 4434
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    .line 4435
    if-nez p1, :cond_0

    .line 4436
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setDescendantFocusability(I)V

    .line 4438
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 2880
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromLeft(II)V

    .line 2886
    :goto_0
    return-void

    .line 2883
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 3070
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3071
    .local v0, count:I
    if-lez v0, :cond_0

    .line 3072
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    .line 3083
    :goto_0
    return-void

    .line 3076
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3077
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    goto :goto_0

    .line 3079
    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mNextSelectedPosition:I

    .line 3080
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2
    .parameter "position"
    .parameter "x"

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2961
    :cond_0
    :goto_0
    return-void

    .line 2941
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2942
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2943
    if-ltz p1, :cond_2

    .line 2944
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2950
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2951
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 2952
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mSpecificLeft:I

    .line 2954
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2955
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mSyncPosition:I

    .line 2956
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcListViewCore;->mSyncColumnId:J

    .line 2959
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    .line 2947
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2902
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2903
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2904
    if-ltz p1, :cond_2

    .line 2905
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2911
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2912
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mLayoutMode:I

    .line 2913
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mSpecificTop:I

    .line 2915
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2916
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mSyncPosition:I

    .line 2917
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcListViewCore;->mSyncRowId:J

    .line 2920
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    .line 2908
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 2971
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    .line 2972
    const/4 v0, 0x0

    .line 2974
    .local v0, awakeScrollbars:Z
    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mSelectedPosition:I

    .line 2976
    .local v1, selectedPosition:I
    if-ltz v1, :cond_0

    .line 2977
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    .line 2978
    const/4 v0, 0x1

    .line 2984
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    .line 2986
    if-eqz v0, :cond_1

    .line 2987
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    .line 2989
    :cond_1
    return-void

    .line 2979
    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2980
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 5019
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 5020
    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5043
    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5050
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 5009
    const/4 v0, 0x1

    return v0
.end method
