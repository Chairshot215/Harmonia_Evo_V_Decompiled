.class public Lcom/htc/widget/HtcListViewCore2;
.super Lcom/htc/widget/HtcAbsListView2;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore2$1;,
        Lcom/htc/widget/HtcListViewCore2$SavedState;,
        Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

.field private mBottomFirst:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mDividerWidth:I

.field protected mDrawEndRound:Z

.field mFakeSelectorOn:Z

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private mLastPosition:I

.field final mListSelector:Landroid/graphics/drawable/Drawable;

.field mRoundedCornerGetView:Z

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field mThisContext:Landroid/content/Context;

.field private mTransparentWrap:Z

.field mUseDivider:Z

.field private mWrappingHeader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 167
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 122
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 136
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 138
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    .line 140
    iput v9, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    .line 146
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 148
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mSpeedUp:Z

    .line 152
    new-instance v7, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore2$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    .line 155
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    .line 156
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    .line 5175
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    .line 5179
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    .line 5186
    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5193
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    .line 5200
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    .line 5201
    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    .line 172
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_0

    .line 174
    const-string v7, "list_selector_background"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    .line 177
    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 181
    .local v4, entries:[Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    .line 182
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :cond_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .line 198
    .local v6, htcContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080ba4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 201
    .local v5, group_divider:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 202
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .end local v5           #group_divider:Landroid/graphics/drawable/Drawable;
    .end local v6           #htcContext:Landroid/content/Context;
    :cond_3
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 212
    .local v2, dividerHeight:I
    if-eqz v2, :cond_4

    .line 213
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setDividerHeight(I)V

    .line 216
    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 218
    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 221
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    return-void

    .line 203
    .end local v2           #dividerHeight:I
    :catch_0
    move-exception v3

    .line 204
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "HtcListViewCore"

    const-string v8, "resource not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 206
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

    .line 4401
    add-int/lit8 v2, p2, -0x1

    .line 4402
    .local v2, abovePosition:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4405
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4406
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v5

    .line 4411
    .local v3, edgeOfNewChild:I
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4413
    return-object v1

    .line 4408
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

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

    .line 4417
    add-int/lit8 v2, p2, 0x1

    .line 4418
    .local v2, belowPosition:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 4421
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4422
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v4

    .line 4427
    .local v3, edgeOfNewChild:I
    :goto_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 4429
    return-object v1

    .line 4424
    .end local v3           #edgeOfNewChild:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v3, v0, v4

    .restart local v3       #edgeOfNewChild:I
    goto :goto_0
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 249
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 252
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v3, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 260
    .local v2, delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 263
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v2, v3

    .line 277
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 279
    const/4 v2, 0x0

    .line 310
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 313
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 320
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    :goto_2
    return-void

    .line 267
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 269
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 272
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 283
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 288
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 291
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v2, v3

    .line 305
    :cond_5
    :goto_3
    if-lez v2, :cond_1

    .line 306
    const/4 v2, 0x0

    goto :goto_1

    .line 295
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 298
    .restart local v2       #delta:I
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge v3, v4, :cond_5

    .line 301
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_3

    .line 315
    :cond_7
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_2
.end method

.method private amountToScroll(II)I
    .locals 17
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v12

    .line 3790
    .local v12, numChildren:I
    const/4 v1, 0x0

    .line 3792
    .local v1, amountToScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    :cond_0
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    .line 3793
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    .line 3794
    .local v9, listRight:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    .line 3795
    .local v8, listLeft:I
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    .line 3796
    add-int/lit8 v6, v12, -0x1

    .line 3797
    .local v6, indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_2

    .line 3798
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3801
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3802
    .local v13, positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3804
    .local v14, viewToMakeVisible:Landroid/view/View;
    move v4, v9

    .line 3805
    .local v4, goalRight:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_4

    .line 3806
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v4, v15

    .line 3813
    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    .line 3816
    const/4 v15, 0x0

    .line 3946
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :goto_0
    return v15

    .line 3808
    .restart local v4       #goalRight:I
    .restart local v6       #indexToMakeVisible:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    .restart local v13       #positionToMakeVisible:I
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v15, v4, :cond_3

    .line 3810
    const/4 v15, 0x0

    goto :goto_0

    .line 3819
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-ne v15, v4, :cond_7

    .line 3820
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3825
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3827
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v11, v15, v9

    .line 3828
    .local v11, max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3946
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v11           #max:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_0

    .line 3823
    .restart local v4       #goalRight:I
    .restart local v6       #indexToMakeVisible:I
    .restart local v8       #listLeft:I
    .restart local v9       #listRight:I
    .restart local v13       #positionToMakeVisible:I
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v1, v15, v4

    goto :goto_1

    .line 3833
    .end local v4           #goalRight:I
    .end local v6           #indexToMakeVisible:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_8
    const/4 v6, 0x0

    .line 3834
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    .line 3835
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3837
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3838
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3839
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v3, v8

    .line 3840
    .local v3, goalLeft:I
    if-lez v13, :cond_b

    .line 3841
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v3, v15

    .line 3848
    :cond_a
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_c

    .line 3851
    const/4 v15, 0x0

    goto :goto_0

    .line 3843
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-lt v15, v3, :cond_a

    .line 3845
    const/4 v15, 0x0

    goto :goto_0

    .line 3854
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v15, v3, :cond_d

    .line 3855
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3860
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 3862
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v11, v8, v15

    .line 3863
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 3858
    .end local v11           #max:I
    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v1, v3, v15

    goto :goto_3

    .line 3868
    .end local v3           #goalLeft:I
    .end local v6           #indexToMakeVisible:I
    .end local v8           #listLeft:I
    .end local v9           #listRight:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 3869
    .local v7, listBottom:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v15, Landroid/graphics/Rect;->top:I

    .line 3870
    .local v10, listTop:I
    const/16 v15, 0x21

    move/from16 v0, p1

    if-eq v0, v15, :cond_f

    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    .line 3871
    :cond_f
    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_15

    .line 3872
    add-int/lit8 v6, v12, -0x1

    .line 3873
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_10

    .line 3874
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3877
    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3878
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3880
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v2, v7

    .line 3882
    .local v2, goalBottom:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_12

    .line 3883
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v2, v15

    .line 3891
    :cond_11
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_13

    .line 3894
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3886
    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v15, v2, :cond_11

    .line 3888
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3897
    :cond_13
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-ne v15, v2, :cond_14

    .line 3898
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3903
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3905
    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v15, v7

    .line 3906
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    .line 3901
    .end local v11           #max:I
    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v1, v15, v2

    goto :goto_4

    .line 3911
    .end local v2           #goalBottom:I
    .end local v6           #indexToMakeVisible:I
    .end local v13           #positionToMakeVisible:I
    .end local v14           #viewToMakeVisible:Landroid/view/View;
    :cond_15
    const/4 v6, 0x0

    .line 3912
    .restart local v6       #indexToMakeVisible:I
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_16

    .line 3913
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p2, v15

    .line 3915
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int v13, v15, v6

    .line 3916
    .restart local v13       #positionToMakeVisible:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3917
    .restart local v14       #viewToMakeVisible:Landroid/view/View;
    move v5, v10

    .line 3918
    .local v5, goalTop:I
    if-lez v13, :cond_18

    .line 3919
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v5, v15

    .line 3926
    :cond_17
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_19

    .line 3929
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3921
    :cond_18
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v15, v5, :cond_17

    .line 3923
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3932
    :cond_19
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-ne v15, v5, :cond_1a

    .line 3933
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    .line 3938
    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v15, :cond_6

    .line 3940
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v11, v10, v15

    .line 3941
    .restart local v11       #max:I
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    .line 3936
    .end local v11           #max:I
    :cond_1a
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v1, v5, v15

    goto :goto_5
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
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4166
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4167
    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    .line 4168
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_0

    .line 4169
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 4170
    if-lez p3, :cond_0

    .line 4171
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

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
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    .line 4176
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v4

    .line 4177
    if-lez p3, :cond_0

    .line 4178
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4181
    :cond_2
    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    .line 4182
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4183
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_0

    .line 4184
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v2

    .line 4185
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4186
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 4190
    .end local v2           #listRight:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4191
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_0

    .line 4192
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v1

    .line 4193
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 4194
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    .locals 25
    .parameter "direction"

    .prologue
    .line 4037
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v18

    .line 4039
    .local v18, selectedView:Landroid/view/View;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 4040
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    .line 4041
    .local v14, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 4085
    .end local v14           #oldFocus:Landroid/view/View;
    .local v13, newFocus:Landroid/view/View;
    :goto_0
    if-eqz v13, :cond_16

    .line 4086
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->positionOfNewFocus(Landroid/view/View;)I

    move-result v15

    .line 4090
    .local v15, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v15, v0, :cond_14

    .line 4091
    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v17

    .line 4092
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

    .line 4095
    :cond_3
    const/16 v22, 0x0

    .line 4117
    .end local v15           #positionOfNewFocus:I
    .end local v17           #selectablePosition:I
    :goto_1
    return-object v22

    .line 4043
    .end local v13           #newFocus:Landroid/view/View;
    :cond_4
    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 4044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    const/16 v19, 0x1

    .line 4045
    .local v19, topFadingEdgeShowing:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_3
    add-int v11, v23, v22

    .line 4047
    .local v11, listTop:I
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4051
    .local v21, ySearchPoint:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4082
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    .end local v21           #ySearchPoint:I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v13

    .restart local v13       #newFocus:Landroid/view/View;
    goto/16 :goto_0

    .line 4044
    .end local v13           #newFocus:Landroid/view/View;
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 4045
    .restart local v19       #topFadingEdgeShowing:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .restart local v11       #listTop:I
    :cond_7
    move/from16 v21, v11

    .line 4047
    goto :goto_4

    .line 4052
    .end local v11           #listTop:I
    .end local v19           #topFadingEdgeShowing:Z
    :cond_8
    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 4053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_9

    const/4 v7, 0x1

    .line 4054
    .local v7, leftFadingEdgeShowing:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_7
    add-int v9, v23, v22

    .line 4056
    .local v9, listLeft:I
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 4060
    .local v20, xSearchPoint:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

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

    .line 4053
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    .end local v20           #xSearchPoint:I
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 4054
    .restart local v7       #leftFadingEdgeShowing:Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_7

    .restart local v9       #listLeft:I
    :cond_b
    move/from16 v20, v9

    .line 4056
    goto :goto_8

    .line 4061
    .end local v7           #leftFadingEdgeShowing:Z
    .end local v9           #listLeft:I
    :cond_c
    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 4062
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const/16 v16, 0x1

    .line 4064
    .local v16, rightFadingEdgeShowing:Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_a
    sub-int v10, v23, v22

    .line 4066
    .local v10, listRight:I
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v10, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v20

    .line 4070
    .restart local v20       #xSearchPoint:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

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

    .line 4062
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    .end local v20           #xSearchPoint:I
    :cond_d
    const/16 v16, 0x0

    goto :goto_9

    .line 4064
    .restart local v16       #rightFadingEdgeShowing:Z
    :cond_e
    const/16 v22, 0x0

    goto :goto_a

    .restart local v10       #listRight:I
    :cond_f
    move/from16 v20, v10

    .line 4066
    goto :goto_b

    .line 4072
    .end local v10           #listRight:I
    .end local v16           #rightFadingEdgeShowing:Z
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    const/4 v5, 0x1

    .line 4074
    .local v5, bottomFadingEdgeShowing:Z
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v5, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_d
    sub-int v8, v23, v22

    .line 4076
    .local v8, listBottom:I
    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v8, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 4080
    .restart local v21       #ySearchPoint:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

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

    .line 4072
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .end local v21           #ySearchPoint:I
    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    .line 4074
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_12
    const/16 v22, 0x0

    goto :goto_d

    .restart local v8       #listBottom:I
    :cond_13
    move/from16 v21, v8

    .line 4076
    goto :goto_e

    .line 4099
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v8           #listBottom:I
    .restart local v13       #newFocus:Landroid/view/View;
    .restart local v15       #positionOfNewFocus:I
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/htc/widget/HtcListViewCore2;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 4101
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v12

    .line 4102
    .local v12, maxScrollAmount:I
    if-ge v6, v12, :cond_15

    .line 4104
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v6}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    .line 4106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4107
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_16

    .line 4112
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v12}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    .line 4114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 4117
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

    .line 3468
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 3554
    :cond_0
    :goto_0
    return v8

    .line 3472
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3474
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 3475
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore2;->amountToScroll(II)I

    move-result v0

    .line 3478
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-result-object v1

    .line 3479
    .local v1, focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 3480
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 3481
    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 3484
    :cond_2
    if-eqz v1, :cond_a

    move v3, v7

    .line 3485
    .local v3, needToRedraw:Z
    :goto_2
    if-eq v4, v9, :cond_4

    .line 3486
    if-eqz v1, :cond_b

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore2;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 3487
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 3488
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 3489
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 3490
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 3493
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 3494
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 3495
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3498
    .end local v2           #focused:Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 3499
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 3502
    :cond_4
    if-lez v0, :cond_5

    .line 3504
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3505
    const/16 v6, 0x11

    if-ne p1, v6, :cond_c

    .end local v0           #amountToScroll:I
    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 3510
    :goto_5
    const/4 v3, 0x1

    .line 3515
    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3517
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3518
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    .line 3519
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 3524
    .end local v2           #focused:Landroid/view/View;
    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 3526
    const/4 v5, 0x0

    .line 3527
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->hideSelector()V

    .line 3531
    iput v9, p0, Lcom/htc/widget/HtcListViewCore2;->mResurrectToPosition:I

    .line 3534
    :cond_7
    if-eqz v3, :cond_0

    .line 3536
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3537
    if-eqz v5, :cond_8

    .line 3538
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 3539
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedLeft:I

    .line 3549
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3550
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    move v8, v7

    .line 3551
    goto/16 :goto_0

    .line 3478
    .end local v1           #focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    .restart local v0       #amountToScroll:I
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #focusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    :cond_a
    move v3, v8

    .line 3484
    goto :goto_2

    .restart local v3       #needToRedraw:Z
    :cond_b
    move v6, v8

    .line 3486
    goto :goto_3

    .line 3505
    :cond_c
    neg-int v0, v0

    goto :goto_4

    .line 3507
    :cond_d
    const/16 v6, 0x21

    if-ne p1, v6, :cond_e

    .end local v0           #amountToScroll:I
    :goto_7
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    goto :goto_5

    .restart local v0       #amountToScroll:I
    :cond_e
    neg-int v0, v0

    goto :goto_7

    .line 3542
    .end local v0           #amountToScroll:I
    :cond_f
    if-eqz v5, :cond_8

    .line 3543
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 3544
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedTop:I

    goto :goto_6
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/16 v8, 0x82

    const/16 v7, 0x42

    const/16 v6, 0x21

    const/16 v5, 0x11

    const/4 v3, 0x1

    .line 3076
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    .line 3077
    const/4 v3, 0x0

    .line 3204
    :cond_0
    :goto_0
    return v3

    .line 3080
    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    if-eqz v4, :cond_2

    .line 3081
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    .line 3084
    :cond_2
    const/4 v1, 0x0

    .line 3085
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3087
    .local v0, action:I
    if-eq v0, v3, :cond_4

    .line 3088
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-gez v4, :cond_3

    .line 3089
    sparse-switch p1, :sswitch_data_0

    .line 3100
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 3186
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 3187
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3190
    :cond_5
    if-nez v1, :cond_0

    .line 3193
    packed-switch v0, :pswitch_data_0

    .line 3204
    const/4 v3, 0x0

    goto :goto_0

    .line 3095
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resurrectSelection()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 3104
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3105
    :goto_2
    if-lez p2, :cond_4

    .line 3106
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3107
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3110
    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    .line 3113
    goto :goto_1

    .line 3117
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3118
    :goto_3
    if-lez p2, :cond_7

    .line 3119
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3120
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 3122
    :cond_7
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 3123
    .local v2, lastPosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    if-eq v4, v2, :cond_4

    .line 3124
    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    .line 3125
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    goto :goto_1

    .line 3128
    .end local v2           #lastPosition:I
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    .line 3131
    goto :goto_1

    .line 3134
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3136
    :goto_4
    if-lez p2, :cond_4

    .line 3137
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3138
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 3141
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    .line 3144
    :cond_a
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3146
    goto :goto_1

    .line 3148
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3149
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_b

    .line 3150
    :goto_5
    if-lez p2, :cond_4

    .line 3151
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    .line 3152
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 3155
    :cond_b
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_1

    .line 3158
    :cond_c
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 3161
    goto/16 :goto_1

    .line 3165
    :sswitch_5
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-lez v4, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_e

    .line 3166
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->keyPressed()V

    .line 3170
    :cond_d
    :goto_6
    const/4 v1, 0x1

    .line 3171
    goto/16 :goto_1

    .line 3167
    :cond_e
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3168
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->unPressedUnSelectChildren(Landroid/view/View;)V

    goto :goto_6

    .line 3174
    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3175
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_10

    .line 3176
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    .line 3180
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 3178
    :cond_10
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    goto :goto_7

    .line 3195
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3198
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3201
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 3089
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 3100
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

    .line 3193
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

    .line 2175
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v10, p1

    add-int/lit8 v7, v10, -0x1

    .line 2176
    .local v7, lastPosition:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_2

    if-lez p1, :cond_2

    .line 2179
    add-int/lit8 v10, p1, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2182
    .local v6, lastChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2184
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    .line 2187
    .local v8, lastRight:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 2191
    .local v1, end:I
    sub-int v9, v1, v8

    .line 2192
    .local v9, rightOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2193
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2197
    .local v3, firstLeft:I
    if-lez v9, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v3, v10, :cond_2

    .line 2198
    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v10, :cond_1

    .line 2200
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2203
    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 2204
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2207
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 2209
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2247
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstLeft:I
    .end local v6           #lastChild:Landroid/view/View;
    .end local v8           #lastRight:I
    .end local v9           #rightOffset:I
    :cond_2
    :goto_0
    return-void

    .line 2215
    .restart local v6       #lastChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 2218
    .local v5, lastBottom:I
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v11

    sub-int v1, v10, v11

    .line 2222
    .restart local v1       #end:I
    sub-int v0, v1, v5

    .line 2223
    .local v0, bottomOffset:I
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2224
    .restart local v2       #firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2228
    .local v4, firstTop:I
    if-lez v0, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_2

    .line 2229
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v10, :cond_5

    .line 2231
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2234
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 2235
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-lez v10, :cond_2

    .line 2238
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 2240
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 14
    .parameter "childCount"

    .prologue
    .line 2260
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v11, :cond_2

    if-lez p1, :cond_2

    .line 2263
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2266
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2268
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2271
    .local v2, firstLeft:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v12

    add-int v9, v11, v12

    .line 2274
    .local v9, start:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v12

    sub-int v0, v11, v12

    .line 2278
    .local v0, end:I
    sub-int v8, v2, v9

    .line 2279
    .local v8, leftOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2280
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    .line 2281
    .local v7, lastRight:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2285
    .local v6, lastPosition:I
    if-lez v8, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_0

    if-le v7, v0, :cond_2

    .line 2286
    :cond_0
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_1

    .line 2288
    sub-int v11, v7, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2291
    :cond_1
    neg-int v11, v8

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 2292
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2295
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 2297
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2337
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

    .line 2302
    .restart local v1       #firstChild:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2305
    .local v3, firstTop:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v12

    add-int v9, v11, v12

    .line 2308
    .restart local v9       #start:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v12

    sub-int v0, v11, v12

    .line 2312
    .restart local v0       #end:I
    sub-int v10, v3, v9

    .line 2313
    .local v10, topOffset:I
    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2314
    .restart local v5       #lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 2315
    .local v4, lastBottom:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    .line 2319
    .restart local v6       #lastPosition:I
    if-lez v10, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_4

    if-le v4, v0, :cond_2

    .line 2320
    :cond_4
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_5

    .line 2322
    sub-int v11, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2325
    :cond_5
    neg-int v11, v10

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 2326
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    .line 2329
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 2331
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5
    .parameter "descendant"

    .prologue
    .line 4210
    const/4 v0, 0x0

    .line 4211
    .local v0, distance:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4212
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4215
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4216
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    .line 4217
    .local v2, listRight:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_1

    .line 4218
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    .line 4231
    .end local v2           #listRight:I
    :cond_0
    :goto_0
    return v0

    .line 4219
    .restart local v2       #listRight:I
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    .line 4220
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v2

    goto :goto_0

    .line 4223
    .end local v2           #listRight:I
    :cond_2
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    .line 4224
    .local v1, listBottom:I
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    .line 4225
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    goto :goto_0

    .line 4226
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_0

    .line 4227
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4
    .parameter "sel"
    .parameter "position"

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1155
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 1156
    .local v1, dividerWidth:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v2, :cond_0

    .line 1157
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1158
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1159
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1177
    .end local v1           #dividerWidth:I
    :goto_0
    return-void

    .line 1161
    .restart local v1       #dividerWidth:I
    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1162
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1163
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1166
    .end local v1           #dividerWidth:I
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 1167
    .local v0, dividerHeight:I
    iget-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 1168
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1169
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1170
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1172
    :cond_2
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1173
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1174
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 11
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 1106
    sub-int v6, p2, p1

    .line 1109
    .local v6, height:I
    sub-int v10, p2, p1

    .line 1112
    .local v10, width:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v1

    .line 1114
    .local v1, position:I
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 1116
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 1119
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1121
    .local v9, selWidth:I
    if-gt v9, v10, :cond_0

    .line 1122
    sub-int v0, v10, v9

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1132
    .end local v9           #selWidth:I
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1134
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 1140
    :goto_1
    return-object v7

    .line 1125
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1126
    .local v8, selHeight:I
    if-gt v8, v6, :cond_0

    .line 1127
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1137
    .end local v8           #selHeight:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 1194
    .local v9, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    .line 1198
    .local v3, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v16

    .line 1200
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v8

    .line 1204
    .local v8, bottomSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v10

    .line 1206
    .local v10, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v12

    .line 1210
    .local v12, rightSelectionPixel:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 1213
    .local v13, sel:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1215
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v12, :cond_1

    .line 1218
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v2, v10

    .line 1222
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v2, v12

    .line 1223
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1226
    .local v11, offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1271
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v2, :cond_4

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 1279
    :goto_1
    return-object v13

    .line 1227
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v10, :cond_0

    .line 1230
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v10, v2

    .line 1234
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v12, v2

    .line 1235
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1238
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1242
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_3

    .line 1245
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v2, v16

    .line 1249
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v2, v8

    .line 1250
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1253
    .restart local v11       #offset:I
    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1254
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    .line 1257
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v16, v2

    .line 1261
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v8, v2

    .line 1262
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1265
    .restart local v11       #offset:I
    invoke-virtual {v13, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 1276
    .end local v11           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 1085
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 1086
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 1087
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 1088
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 1090
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 2097
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 2098
    .local v5, tempIsSelected:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 2101
    .local v11, temp:Landroid/view/View;
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 2107
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2108
    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 2109
    .local v10, dividerWidth:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 2110
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2112
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2113
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2114
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2115
    .local v8, childCount:I
    if-lez v8, :cond_0

    .line 2116
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 2155
    .end local v10           #dividerWidth:I
    :cond_0
    :goto_1
    if-eqz v5, :cond_5

    .line 2160
    .end local v11           #temp:Landroid/view/View;
    :goto_2
    return-object v11

    .line 2097
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2119
    .restart local v5       #tempIsSelected:Z
    .restart local v10       #dividerWidth:I
    .restart local v11       #temp:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2121
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2122
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2123
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2124
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2125
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 2129
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v10           #dividerWidth:I
    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 2130
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v0, :cond_4

    .line 2131
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2133
    .restart local v6       #above:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2134
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2135
    .restart local v7       #below:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2136
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2137
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_1

    .line 2140
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 2142
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 2143
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 2144
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    .line 2145
    .restart local v8       #childCount:I
    if-lez v8, :cond_0

    .line 2146
    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 2157
    .end local v9           #dividerHeight:I
    :cond_5
    if-eqz v6, :cond_6

    move-object v11, v6

    .line 2158
    goto :goto_2

    :cond_6
    move-object v11, v7

    .line 2160
    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3756
    const/4 v0, 0x0

    .line 3757
    .local v0, val:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3758
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3765
    :goto_0
    return v0

    .line 3761
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

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
    .line 1295
    move v0, p1

    .line 1296
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1297
    sub-int/2addr v0, p2

    .line 1299
    :cond_0
    return v0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .parameter "childrenLeft"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1358
    move v0, p1

    .line 1359
    .local v0, leftSelectionPixel:I
    if-lez p3, :cond_0

    .line 1360
    add-int/2addr v0, p2

    .line 1362
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .parameter "childrenRight"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1337
    move v0, p1

    .line 1338
    .local v0, rightSelectionPixel:I
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1339
    sub-int/2addr v0, p2

    .line 1341
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 1316
    move v0, p1

    .line 1317
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 1318
    add-int/2addr v0, p2

    .line 1320
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3347
    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    .line 3348
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3351
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    .line 3352
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3353
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3354
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3355
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3356
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3360
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3362
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3363
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3364
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3365
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3366
    const/4 v5, 0x1

    .line 3383
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3373
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3378
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3379
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3383
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
    .line 3577
    const/4 v14, -0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_0

    .line 3578
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "newSelectedPosition needs to be valid"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3586
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3590
    const/4 v3, 0x0

    .line 3591
    .local v3, leftSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3592
    .local v10, selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3593
    .local v6, nextSelectedIndex:I
    const/16 v14, 0x11

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 3594
    move v5, v6

    .line 3595
    .local v5, leftViewIndex:I
    move v9, v10

    .line 3596
    .local v9, rightViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3597
    .local v4, leftView:Landroid/view/View;
    move-object/from16 v8, p1

    .line 3598
    .local v8, rightView:Landroid/view/View;
    const/4 v3, 0x1

    .line 3606
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    .line 3609
    .local v7, numChildren:I
    if-eqz v4, :cond_1

    .line 3610
    if-nez p4, :cond_4

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v4, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3611
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3615
    :cond_1
    if-eqz v8, :cond_2

    .line 3616
    if-nez p4, :cond_5

    if-nez v3, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v8, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3617
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3654
    .end local v3           #leftSelected:Z
    .end local v4           #leftView:Landroid/view/View;
    .end local v5           #leftViewIndex:I
    .end local v8           #rightView:Landroid/view/View;
    .end local v9           #rightViewIndex:I
    :cond_2
    :goto_3
    return-void

    .line 3600
    .end local v7           #numChildren:I
    .restart local v3       #leftSelected:Z
    :cond_3
    move v5, v10

    .line 3601
    .restart local v5       #leftViewIndex:I
    move v9, v6

    .line 3602
    .restart local v9       #rightViewIndex:I
    move-object/from16 v4, p1

    .line 3603
    .restart local v4       #leftView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .restart local v8       #rightView:Landroid/view/View;
    goto :goto_0

    .line 3610
    .restart local v7       #numChildren:I
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 3616
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 3623
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

    .line 3624
    .local v11, topSelected:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v10, v14, v15

    .line 3625
    .restart local v10       #selectedIndex:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v6, p3, v14

    .line 3626
    .restart local v6       #nextSelectedIndex:I
    const/16 v14, 0x21

    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    .line 3627
    move v13, v6

    .line 3628
    .local v13, topViewIndex:I
    move v2, v10

    .line 3629
    .local v2, bottomViewIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3630
    .local v12, topView:Landroid/view/View;
    move-object/from16 v1, p1

    .line 3631
    .local v1, bottomView:Landroid/view/View;
    const/4 v11, 0x1

    .line 3639
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    .line 3642
    .restart local v7       #numChildren:I
    if-eqz v12, :cond_7

    .line 3643
    if-nez p4, :cond_9

    if-eqz v11, :cond_9

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3644
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 3648
    :cond_7
    if-eqz v1, :cond_2

    .line 3649
    if-nez p4, :cond_a

    if-nez v11, :cond_a

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setSelected(Z)V

    .line 3650
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    goto :goto_3

    .line 3633
    .end local v1           #bottomView:Landroid/view/View;
    .end local v2           #bottomViewIndex:I
    .end local v7           #numChildren:I
    .end local v12           #topView:Landroid/view/View;
    .end local v13           #topViewIndex:I
    :cond_8
    move v13, v10

    .line 3634
    .restart local v13       #topViewIndex:I
    move v2, v6

    .line 3635
    .restart local v2       #bottomViewIndex:I
    move-object/from16 v12, p1

    .line 3636
    .restart local v12       #topView:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1       #bottomView:Landroid/view/View;
    goto :goto_4

    .line 3643
    .restart local v7       #numChildren:I
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 3649
    :cond_a
    const/4 v14, 0x0

    goto :goto_6
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    .line 3397
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 3398
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3401
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    .line 3402
    .local v3, numChildren:I
    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3403
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 3404
    .local v4, selectedView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 3405
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3406
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3410
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3412
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3413
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3414
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3415
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3416
    const/4 v5, 0x1

    .line 3433
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_0
    return v5

    .line 3423
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3428
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3429
    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .line 3433
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

    .line 2678
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2679
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2680
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2681
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 2692
    :goto_1
    return v5

    .line 2680
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2686
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2687
    .local v3, numFooters:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 2688
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 2689
    goto :goto_1

    .line 2687
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2692
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

    .line 4141
    if-ne p1, p2, :cond_1

    .line 4146
    :cond_0
    :goto_0
    return v1

    .line 4145
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4146
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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

    .line 3985
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 3986
    .local v1, firstPosition:I
    const/16 v7, 0x82

    if-eq p1, v7, :cond_0

    const/16 v7, 0x42

    if-ne p1, v7, :cond_6

    .line 3987
    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 3989
    .local v5, startPos:I
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    move v4, v6

    .line 4023
    :cond_1
    :goto_1
    return v4

    .end local v5           #startPos:I
    :cond_2
    move v5, v1

    .line 3987
    goto :goto_0

    .line 3992
    .restart local v5       #startPos:I
    :cond_3
    if-ge v5, v1, :cond_4

    .line 3993
    move v5, v1

    .line 3996
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLastVisiblePosition()I

    move-result v3

    .line 3997
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3998
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 3999
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 3998
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4005
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 4006
    .local v2, last:I
    iget v7, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 4008
    .restart local v5       #startPos:I
    :goto_3
    if-gez v5, :cond_8

    move v4, v6

    .line 4009
    goto :goto_1

    .line 4006
    .end local v5           #startPos:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 4011
    .restart local v5       #startPos:I
    :cond_8
    if-le v5, v2, :cond_9

    .line 4012
    move v5, v2

    .line 4015
    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4016
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 4017
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 4016
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2           #last:I
    :cond_b
    move v4, v6

    .line 4023
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
    .line 2718
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 2721
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2729
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2741
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 2736
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2739
    .restart local v1       #child:Landroid/view/View;
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 2741
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
    .line 3669
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3670
    .local v1, oldWidth:I
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->measureItem(Landroid/view/View;)V

    .line 3671
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 3673
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 3676
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 3677
    .local v2, widthDelta:I
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3678
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3682
    .end local v0           #i:I
    .end local v2           #widthDelta:I
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

    .line 3691
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3696
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3697
    if-nez v4, :cond_0

    .line 3698
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3703
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mHeightMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3705
    .local v0, childHeightSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3706
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 3707
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3731
    .end local v3           #lpWidth:I
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3732
    return-void

    .line 3710
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 3714
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    if-nez v4, :cond_3

    .line 3715
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4           #p:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3720
    .restart local v4       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mWidthMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3722
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3723
    .local v2, lpHeight:I
    if-lez v2, :cond_4

    .line 3724
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0

    .line 3727
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

    .line 1828
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 1829
    .local v4, p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-nez v4, :cond_0

    .line 1830
    new-instance v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .end local v4           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    .line 1832
    .restart local v4       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1834
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    .line 1837
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1838
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->height:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1840
    .local v0, childHeightSpec:I
    iget v3, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->width:I

    .line 1842
    .local v3, lpWidth:I
    if-lez v3, :cond_1

    .line 1843
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1847
    .local v1, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1861
    .end local v3           #lpWidth:I
    :goto_1
    return-void

    .line 1845
    .end local v1           #childWidthSpec:I
    .restart local v3       #lpWidth:I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #childWidthSpec:I
    goto :goto_0

    .line 1849
    .end local v0           #childHeightSpec:I
    .end local v1           #childWidthSpec:I
    .end local v3           #lpWidth:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->width:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1851
    .restart local v1       #childWidthSpec:I
    iget v2, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->height:I

    .line 1853
    .local v2, lpHeight:I
    if-lez v2, :cond_3

    .line 1854
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1858
    .restart local v0       #childHeightSpec:I
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 1856
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
    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v12

    .line 1477
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1479
    .local v21, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getLeftSelectionPixel(III)I

    move-result v14

    .line 1481
    .local v14, leftSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getRightSelectionPixel(III)I

    move-result v19

    .line 1484
    .local v19, rightSelectionPixel:I
    if-lez p3, :cond_2

    .line 1506
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1509
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 1512
    .local v11, dividerWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v11

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1516
    .local v20, sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_0

    .line 1519
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v3, v14

    .line 1522
    .local v22, spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v3, v19

    .line 1525
    .local v23, spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1526
    .local v13, halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1527
    .local v17, offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1530
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1532
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1536
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1537
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1538
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1539
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1766
    .end local v11           #dividerWidth:I
    .end local v14           #leftSelectionPixel:I
    .end local v19           #rightSelectionPixel:I
    :goto_0
    return-object v20

    .line 1541
    .restart local v11       #dividerWidth:I
    .restart local v14       #leftSelectionPixel:I
    .restart local v19       #rightSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1542
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1543
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1545
    .end local v11           #dividerWidth:I
    .end local v20           #sel:Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1566
    if-eqz p2, :cond_4

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1578
    .restart local v20       #sel:Landroid/view/View;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v14, :cond_3

    .line 1580
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v14, v3

    .line 1583
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v19, v3

    .line 1586
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1587
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1588
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1591
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1595
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1573
    .end local v20           #sel:Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_1

    .line 1598
    .end local v20           #sel:Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 1603
    .local v18, oldLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1606
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, v18

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 1609
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v16

    .line 1610
    .local v16, newRight:I
    add-int/lit8 v3, p4, 0x14

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 1612
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1617
    .end local v16           #newRight:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1620
    .end local v12           #fadingEdgeLength:I
    .end local v14           #leftSelectionPixel:I
    .end local v18           #oldLeft:I
    .end local v19           #rightSelectionPixel:I
    .end local v20           #sel:Landroid/view/View;
    .end local v21           #selectedPosition:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 1621
    .restart local v12       #fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v21, v0

    .line 1623
    .restart local v21       #selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v24

    .line 1625
    .local v24, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1628
    .local v9, bottomSelectionPixel:I
    if-lez p3, :cond_a

    .line 1650
    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1653
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 1656
    .local v10, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v5, v3, v10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1660
    .restart local v20       #sel:Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v9, :cond_8

    .line 1663
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v3, v24

    .line 1666
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v3, v9

    .line 1669
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1670
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1671
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1674
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1676
    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1680
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v3, :cond_9

    .line 1681
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 1682
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1683
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1685
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 1686
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    .line 1687
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto/16 :goto_0

    .line 1689
    .end local v10           #dividerHeight:I
    .end local v20           #sel:Landroid/view/View;
    :cond_a
    if-gez p3, :cond_d

    .line 1710
    if-eqz p2, :cond_c

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1722
    .restart local v20       #sel:Landroid/view/View;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v24

    if-ge v3, v0, :cond_b

    .line 1724
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v24, v3

    .line 1727
    .restart local v22       #spaceAbove:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v9, v3

    .line 1730
    .restart local v23       #spaceBelow:I
    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    .line 1731
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1732
    .restart local v17       #offset:I
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1735
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1739
    .end local v13           #halfVerticalSpace:I
    .end local v17           #offset:I
    .end local v22           #spaceAbove:I
    .end local v23           #spaceBelow:I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1717
    .end local v20           #sel:Landroid/view/View;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .restart local v20       #sel:Landroid/view/View;
    goto :goto_2

    .line 1742
    .end local v20           #sel:Landroid/view/View;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1747
    .local v5, oldTop:I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    .line 1750
    .restart local v20       #sel:Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_e

    .line 1753
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 1754
    .local v15, newBottom:I
    add-int/lit8 v3, p4, 0x14

    if-ge v15, v3, :cond_e

    .line 1756
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1761
    .end local v15           #newBottom:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .parameter "newFocus"

    .prologue
    .line 4126
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    .line 4127
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 4128
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4129
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4130
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 4127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4133
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
    .line 3742
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3743
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 3744
    .local v4, h:I
    iget-object v6, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 3745
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 3746
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3747
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 3748
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3749
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
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 400
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 401
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    .line 402
    .local v1, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 403
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    .end local v1           #info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    :cond_0
    return-void

    .line 400
    .restart local v1       #info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 14
    .parameter "amount"

    .prologue
    const/4 v13, 0x0

    .line 4244
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4245
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4247
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v7, v11, v12

    .line 4248
    .local v7, listRight:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    .line 4249
    .local v6, listLeft:I
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 4251
    .local v10, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    if-gez p1, :cond_3

    .line 4255
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    .line 4256
    .local v9, numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4257
    .local v1, last:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_0

    .line 4258
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4259
    .local v3, lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_0

    .line 4260
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4261
    add-int/lit8 v9, v9, 0x1

    .line 4265
    goto :goto_0

    .line 4270
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_1

    .line 4271
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4275
    :cond_1
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4276
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v6, :cond_f

    .line 4277
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4278
    .local v4, layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4279
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4280
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4284
    :goto_2
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4285
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    goto :goto_1

    .line 4282
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    .line 4289
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v9           #numChildren:I
    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4292
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_4

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-lez v11, :cond_4

    .line 4293
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4294
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    goto :goto_3

    .line 4299
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_5

    .line 4300
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    .line 4303
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4304
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4307
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v7, :cond_f

    .line 4308
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4309
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4310
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4311
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4315
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4316
    goto :goto_4

    .line 4313
    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    .line 4319
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v6           #listLeft:I
    .end local v7           #listRight:I
    .end local v10           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4321
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v11, v12

    .line 4322
    .local v5, listBottom:I
    iget-object v11, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    .line 4323
    .local v8, listTop:I
    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 4325
    .restart local v10       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    if-gez p1, :cond_b

    .line 4329
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    .line 4330
    .restart local v9       #numChildren:I
    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4331
    .restart local v1       #last:Landroid/view/View;
    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_8

    .line 4332
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    .line 4333
    .restart local v3       #lastVisiblePosition:I
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_8

    .line 4334
    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 4335
    add-int/lit8 v9, v9, 0x1

    .line 4339
    goto :goto_6

    .line 4344
    .end local v3           #lastVisiblePosition:I
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_9

    .line 4345
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4349
    :cond_9
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4350
    .restart local v0       #first:Landroid/view/View;
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v8, :cond_f

    .line 4351
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4352
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4353
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4354
    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4358
    :goto_8
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4359
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    goto :goto_7

    .line 4356
    :cond_a
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_8

    .line 4363
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v9           #numChildren:I
    :cond_b
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4366
    .restart local v0       #first:Landroid/view/View;
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-lez v11, :cond_c

    .line 4367
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4368
    iget v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    goto :goto_9

    .line 4373
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_d

    .line 4374
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    .line 4377
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 4378
    .restart local v2       #lastIndex:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4381
    .restart local v1       #last:Landroid/view/View;
    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v5, :cond_f

    .line 4382
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 4383
    .restart local v4       #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4384
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    .line 4385
    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 4389
    :goto_b
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4390
    goto :goto_a

    .line 4387
    :cond_e
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_b

    .line 4398
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v5           #listBottom:I
    .end local v8           #listTop:I
    :cond_f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 20
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 2768
    if-nez p1, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->shouldShowSelector()Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v10, 0x1

    .line 2772
    .local v10, isSelected:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v17

    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    const/4 v15, 0x1

    .line 2773
    .local v15, updateChildSelected:Z
    :goto_2
    if-eqz p7, :cond_2

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_2
    const/4 v13, 0x1

    .line 2777
    .local v13, needToMeasure:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .line 2778
    .local v14, p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    if-nez v14, :cond_3

    .line 2779
    new-instance v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    .end local v14           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    .line 2782
    .restart local v14       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    .line 2784
    if-nez p7, :cond_4

    iget-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2786
    :cond_4
    if-eqz p4, :cond_a

    const/16 v17, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/htc/widget/HtcListViewCore2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2794
    :goto_5
    if-eqz v15, :cond_5

    .line 2795
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    .line 2798
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 2799
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p1

    .line 2800
    check-cast v17, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2804
    :cond_6
    if-eqz v13, :cond_11

    .line 2806
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeightMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2809
    .local v5, childHeightSpec:I
    iget v12, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->width:I

    .line 2811
    .local v12, lpWidth:I
    if-lez v12, :cond_e

    .line 2812
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2816
    .local v8, childWidthSpec:I
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2834
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 2835
    .local v16, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2838
    .local v9, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 2839
    if-eqz p4, :cond_12

    move/from16 v7, p3

    .line 2841
    .local v7, childTop:I
    :goto_8
    if-eqz v13, :cond_13

    .line 2842
    add-int v4, p5, v9

    .line 2843
    .local v4, childBottom:I
    add-int v6, v7, v16

    .line 2844
    .local v6, childRight:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v7, v1, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2863
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCachingStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2864
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    .line 2771
    .end local v7           #childTop:I
    .end local v9           #h:I
    .end local v10           #isSelected:Z
    .end local v13           #needToMeasure:Z
    .end local v14           #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    .end local v15           #updateChildSelected:Z
    .end local v16           #w:I
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2772
    .restart local v10       #isSelected:Z
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2773
    .restart local v15       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2786
    .restart local v13       #needToMeasure:Z
    .restart local v14       #p:Lcom/htc/widget/HtcAbsListView2$LayoutParams;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 2788
    :cond_b
    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2789
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    .line 2791
    :cond_c
    if-eqz p4, :cond_d

    const/16 v17, -0x1

    :goto_a
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_d
    const/16 v17, 0x0

    goto :goto_a

    .line 2814
    .restart local v5       #childHeightSpec:I
    .restart local v12       #lpWidth:I
    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8       #childWidthSpec:I
    goto :goto_6

    .line 2818
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v12           #lpWidth:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mWidthMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 2820
    .restart local v8       #childWidthSpec:I
    iget v11, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->height:I

    .line 2822
    .local v11, lpHeight:I
    if-lez v11, :cond_10

    .line 2823
    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2827
    .restart local v5       #childHeightSpec:I
    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    .line 2825
    .end local v5           #childHeightSpec:I
    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5       #childHeightSpec:I
    goto :goto_b

    .line 2831
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v11           #lpHeight:I
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 2839
    .restart local v9       #h:I
    .restart local v16       #w:I
    :cond_12
    sub-int v7, p3, v16

    goto/16 :goto_8

    .line 2846
    .restart local v7       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2847
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    .line 2850
    .end local v7           #childTop:I
    :cond_14
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2852
    .restart local v7       #childTop:I
    :goto_c
    if-eqz v13, :cond_16

    .line 2853
    add-int v6, p5, v16

    .line 2854
    .restart local v6       #childRight:I
    add-int v4, v7, v9

    .line 2855
    .restart local v4       #childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    .line 2850
    .end local v4           #childBottom:I
    .end local v6           #childRight:I
    .end local v7           #childTop:I
    :cond_15
    sub-int v7, p3, v9

    goto :goto_c

    .line 2857
    .restart local v7       #childTop:I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 628
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 629
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 631
    .local v2, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 633
    .local v3, listBottom:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

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

    .line 642
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollX:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 643
    .local v0, listLeft:I
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

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
    .line 650
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 651
    .local v0, childCount:I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 652
    .local v3, rightOfRightChild:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 654
    .local v1, lastVisiblePosition:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 656
    .local v2, listRight:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

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

    .line 619
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 620
    .local v0, listTop:I
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

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
    .line 458
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    .line 459
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 460
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 478
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 479
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 426
    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    .line 427
    .local v0, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 428
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    .line 429
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    .line 430
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 437
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 367
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 339
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    .line 345
    .local v0, info:Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    if-nez v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    const-string v2, "list_item_4roundx"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    :cond_1
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 348
    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    .line 349
    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    .line 350
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method arrowScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 3447
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mInLayout:Z

    .line 3448
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollImpl(I)Z

    move-result v0

    .line 3449
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 3450
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3454
    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mInLayout:Z

    return v0

    .end local v0           #handled:Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcListViewCore2;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2870
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 5066
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 5067
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5069
    :cond_0
    return-void
.end method

.method public disableFakeSelector()V
    .locals 1

    .prologue
    .line 5181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    .line 5182
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 4458
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 4459
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4461
    .local v8, dividerWidth:I
    if-lez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4464
    .local v4, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4467
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    .line 4468
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4469
    .local v12, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    .line 4470
    .local v11, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4471
    .local v13, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4472
    .local v10, footerDividers:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 4474
    .local v9, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 4476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v18, v22, v23

    .line 4478
    .local v18, listRight:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v6, :cond_f

    .line 4479
    if-nez v13, :cond_0

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_2

    :cond_0
    if-nez v10, :cond_1

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_2

    .line 4481
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4482
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v20

    .line 4483
    .local v20, right:I
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 4484
    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4485
    add-int v22, v20, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 4489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_2

    .line 4491
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4478
    .end local v5           #child:Landroid/view/View;
    .end local v20           #right:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 4501
    .end local v14           #i:I
    .end local v18           #listRight:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 4503
    .local v17, listLeft:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1
    if-ge v14, v6, :cond_f

    .line 4504
    if-nez v13, :cond_4

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_6

    :cond_4
    if-nez v10, :cond_5

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_6

    .line 4506
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4507
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 4508
    .local v15, left:I
    move/from16 v0, v17

    if-le v15, v0, :cond_6

    .line 4509
    sub-int v22, v15, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4510
    iput v15, v4, Landroid/graphics/Rect;->right:I

    .line 4518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_6

    .line 4520
    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4503
    .end local v5           #child:Landroid/view/View;
    .end local v15           #left:I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4531
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v6           #count:I
    .end local v8           #dividerWidth:I
    .end local v9           #first:I
    .end local v10           #footerDividers:Z
    .end local v11           #footerLimit:I
    .end local v12           #headerCount:I
    .end local v13           #headerDividers:Z
    .end local v14           #i:I
    .end local v17           #listLeft:I
    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4533
    .local v7, dividerHeight:I
    if-lez v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4536
    .restart local v4       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 4537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 4539
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    .line 4540
    .restart local v6       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4541
    .restart local v12       #headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    .line 4542
    .restart local v11       #footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4543
    .restart local v13       #headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4544
    .restart local v10       #footerDividers:Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 4546
    .restart local v9       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 4548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    .line 4550
    .local v16, listBottom:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    if-ge v14, v6, :cond_f

    .line 4551
    if-nez v13, :cond_8

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_a

    :cond_8
    if-nez v10, :cond_9

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_a

    .line 4553
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4554
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 4555
    .local v3, bottom:I
    move/from16 v0, v16

    if-ge v3, v0, :cond_a

    .line 4556
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 4557
    add-int v22, v3, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_a

    .line 4563
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4550
    .end local v3           #bottom:I
    .end local v5           #child:Landroid/view/View;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 4573
    .end local v14           #i:I
    .end local v16           #listBottom:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 4575
    .local v19, listTop:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    if-ge v14, v6, :cond_f

    .line 4576
    if-nez v13, :cond_c

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_e

    :cond_c
    if-nez v10, :cond_d

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_e

    .line 4578
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4579
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v21

    .line 4580
    .local v21, top:I
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 4581
    sub-int v22, v21, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 4582
    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 4590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_e

    .line 4592
    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 4575
    .end local v5           #child:Landroid/view/View;
    .end local v21           #top:I
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 4606
    .end local v4           #bounds:Landroid/graphics/Rect;
    .end local v6           #count:I
    .end local v7           #dividerHeight:I
    .end local v9           #first:I
    .end local v10           #footerDividers:Z
    .end local v11           #footerLimit:I
    .end local v12           #headerCount:I
    .end local v13           #headerDividers:Z
    .end local v14           #i:I
    .end local v19           #listTop:I
    :cond_f
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4607
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 3047
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 3048
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3051
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 3054
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3057
    .end local v0           #focused:Landroid/view/View;
    :cond_0
    return v1
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 4622
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4623
    .local v2, seperatorDivider:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4624
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    .line 4626
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 4627
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4628
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4633
    :goto_0
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, p3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->shouldDrawSeperatorDivider(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4634
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4639
    :goto_1
    if-eqz v0, :cond_0

    .line 4640
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4642
    :cond_0
    return-void

    .line 4630
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4631
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 4636
    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 983
    const/4 v8, 0x0

    .line 986
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 989
    .local v7, end:I
    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 991
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 992
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 995
    .local v6, child:Landroid/view/View;
    if-nez v6, :cond_2

    .line 1022
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_0
    return-object v8

    :cond_1
    move v5, v9

    .line 991
    goto :goto_1

    .line 997
    .restart local v5       #selected:Z
    .restart local v6       #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int p2, v0, v1

    .line 998
    if-eqz v5, :cond_3

    .line 999
    move-object v8, v6

    .line 1001
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1002
    goto :goto_0

    .line 1004
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    .end local v7           #end:I
    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 1006
    .restart local v7       #end:I
    :goto_2
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge p1, v0, :cond_0

    .line 1008
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    move v5, v3

    .line 1009
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1012
    .restart local v6       #child:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1014
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int p2, v0, v1

    .line 1015
    if-eqz v5, :cond_5

    .line 1016
    move-object v8, v6

    .line 1018
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 1019
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_6
    move v5, v9

    .line 1008
    goto :goto_3
.end method

.method fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    const/4 v3, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 935
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    if-eqz p1, :cond_1

    .line 937
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int v1, v2, v3

    .line 940
    .local v1, startOffset:I
    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 941
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    .line 966
    :goto_1
    return-void

    .line 937
    .end local v1           #startOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingLeft()I

    move-result v1

    goto :goto_0

    .line 943
    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v1, v2, v3

    .line 945
    .restart local v1       #startOffset:I
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 946
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 943
    .end local v1           #startOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2

    .line 949
    :cond_3
    if-eqz p1, :cond_5

    .line 950
    if-lez v0, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int v1, v2, v3

    .line 953
    .restart local v1       #startOffset:I
    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    .line 954
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_1

    .line 950
    .end local v1           #startOffset:I
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingTop()I

    move-result v1

    goto :goto_3

    .line 956
    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v1, v2, v3

    .line 958
    .restart local v1       #startOffset:I
    :goto_4
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    .line 959
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    .line 956
    .end local v1           #startOffset:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingBottom()I

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

    .line 1039
    const/4 v8, 0x0

    .line 1042
    .local v8, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 1045
    .local v7, end:I
    :goto_0
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    .line 1047
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v9

    .line 1048
    .local v5, selected:Z
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1049
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int p2, v0, v1

    .line 1050
    if-eqz v5, :cond_0

    .line 1051
    move-object v8, v6

    .line 1053
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1054
    goto :goto_0

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_1
    move v5, v3

    .line 1047
    goto :goto_1

    .line 1056
    .end local v7           #end:I
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1058
    .restart local v7       #end:I
    :goto_2
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    .line 1060
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ne p1, v0, :cond_4

    move v5, v9

    .line 1061
    .restart local v5       #selected:Z
    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 1062
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 1063
    if-eqz v5, :cond_3

    .line 1064
    move-object v8, v6

    .line 1066
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1067
    goto :goto_2

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_4
    move v5, v3

    .line 1060
    goto :goto_3

    .line 1071
    :cond_5
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 1073
    return-object v8
.end method

.method findMotionColumn(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 2054
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 2055
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2056
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2057
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 2058
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 2063
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 2055
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2061
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2063
    .end local v1           #i:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 2070
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 2071
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 2072
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2073
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2074
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 2075
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 2080
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 2072
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2078
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2080
    .end local v1           #i:I
    :cond_2
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
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4847
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4848
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4851
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4852
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 4854
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4855
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4857
    if-eqz v2, :cond_0

    .line 4863
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 4851
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4863
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 4893
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 4894
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4897
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4898
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    .line 4900
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4901
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 4903
    if-eqz v2, :cond_0

    .line 4909
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 4897
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4909
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
    .line 4828
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 4829
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4830
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4831
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4839
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 4834
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 4835
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4836
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4839
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    .line 4873
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4874
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1

    .line 4875
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4876
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 4885
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 4880
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 4881
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 4882
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 4885
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

    .line 3278
    const/4 v0, 0x0

    .line 3281
    .local v0, moved:Z
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3282
    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    .line 3283
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3284
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3285
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 3286
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3287
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3288
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3290
    :cond_0
    const/4 v0, 0x1

    .line 3330
    .end local v1           #position:I
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3331
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3334
    :cond_2
    return v0

    .line 3292
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    .line 3293
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3294
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3296
    .restart local v1       #position:I
    if-ltz v1, :cond_4

    .line 3297
    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3298
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3299
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3301
    :cond_4
    const/4 v0, 0x1

    .line 3302
    goto :goto_0

    .line 3305
    .end local v1           #position:I
    :cond_5
    const/16 v2, 0x21

    if-ne p1, v2, :cond_7

    .line 3306
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-eqz v2, :cond_1

    .line 3307
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3308
    .restart local v1       #position:I
    if-ltz v1, :cond_6

    .line 3309
    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3310
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3311
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3313
    :cond_6
    const/4 v0, 0x1

    .line 3314
    goto :goto_0

    .line 3315
    .end local v1           #position:I
    :cond_7
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    .line 3316
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 3317
    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 3319
    .restart local v1       #position:I
    if-ltz v1, :cond_8

    .line 3320
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3321
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3322
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3324
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5040
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5042
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 5045
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 5056
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 5057
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5059
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 4928
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 4692
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 4714
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 4451
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    return v0
.end method

.method public getListBottom()I
    .locals 2

    .prologue
    .line 5159
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5163
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScrollAmount()I
    .locals 4

    .prologue
    const v3, 0x3ea8f5c3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, amount:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    .line 236
    :goto_0
    return v0

    .line 234
    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getRoundedCornerGetView()Z
    .locals 1

    .prologue
    .line 5198
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    return v0
.end method

.method public isEndRound()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    return v0
.end method

.method public isFakeSelectorOn()Z
    .locals 1

    .prologue
    .line 5184
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 5023
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 5024
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 5027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparentWrap()Z
    .locals 1

    .prologue
    .line 5172
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    return v0
.end method

.method public isUseDivider()Z
    .locals 1

    .prologue
    .line 5191
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    return v0
.end method

.method public isWrappingHeader()Z
    .locals 1

    .prologue
    .line 5206
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 29

    .prologue
    .line 2341
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    .line 2342
    .local v14, blockLayoutRequests:Z
    if-nez v14, :cond_0

    .line 2343
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    .line 2349
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    .line 2351
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 2354
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 2355
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2665
    if-nez v14, :cond_0

    .line 2666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v8

    add-int v12, v2, v8

    .line 2360
    .local v12, childrenTop:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v8

    sub-int v13, v2, v8

    .line 2363
    .local v13, childrenBottom:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v8

    add-int v6, v2, v8

    .line 2364
    .local v6, childrenLeft:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mLeft:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v8

    sub-int v7, v2, v8

    .line 2367
    .local v7, childrenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v15

    .line 2369
    .local v15, childCount:I
    const/4 v5, 0x0

    .line 2372
    .local v5, delta:I
    const/4 v3, 0x0

    .line 2373
    .local v3, oldSel:Landroid/view/View;
    const/16 v25, 0x0

    .line 2374
    .local v25, oldFirst:Landroid/view/View;
    const/4 v4, 0x0

    .line 2376
    .local v4, newSel:Landroid/view/View;
    const/16 v19, 0x0

    .line 2379
    .local v19, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 2396
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v24, v2, v8

    .line 2397
    .local v24, index:I
    if-ltz v24, :cond_2

    move/from16 v0, v24

    if-ge v0, v15, :cond_2

    .line 2398
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2402
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 2404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    .line 2405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    sub-int v5, v2, v8

    .line 2409
    :cond_3
    add-int v2, v24, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2413
    .end local v24           #index:I
    :cond_4
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    move/from16 v16, v0

    .line 2414
    .local v16, dataChanged:Z
    if-eqz v16, :cond_5

    .line 2415
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->handleDataChanged()V

    .line 2420
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-nez v2, :cond_6

    .line 2421
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2665
    if-nez v14, :cond_0

    .line 2666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2381
    .end local v16           #dataChanged:Z
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    sub-int v24, v2, v8

    .line 2382
    .restart local v24       #index:I
    if-ltz v24, :cond_4

    move/from16 v0, v24

    if-ge v0, v15, :cond_4

    .line 2383
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 2426
    .end local v24           #index:I
    .restart local v16       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move/from16 v17, v0

    .line 2431
    .local v17, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    .line 2434
    .local v27, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    const/16 v18, 0x0

    .line 2439
    .local v18, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v16, :cond_7

    .line 2440
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v15, :cond_8

    .line 2441
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2440
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 2448
    .end local v23           #i:I
    :cond_7
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->fillActiveViews(II)V

    .line 2455
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v22

    .line 2456
    .local v22, focusedChild:Landroid/view/View;
    if-eqz v22, :cond_b

    .line 2461
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2462
    :cond_9
    move-object/from16 v18, v22

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->findFocus()Landroid/view/View;

    move-result-object v19

    .line 2465
    if-eqz v19, :cond_a

    .line 2467
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2470
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->requestFocus()Z

    .line 2475
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->detachAllViewsFromParent()V

    .line 2477
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    .line 2536
    if-nez v15, :cond_1c

    .line 2537
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-nez v2, :cond_1a

    .line 2538
    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2539
    .local v26, position:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2541
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2542
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2600
    .end local v6           #childrenLeft:I
    .end local v12           #childrenTop:I
    .end local v26           #position:I
    .local v28, sel:Landroid/view/View;
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->scrapActiveViews()V

    .line 2602
    if-eqz v28, :cond_29

    .line 2605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2606
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_d
    const/16 v20, 0x1

    .line 2608
    .local v20, focusWasTaken:Z
    :goto_4
    if-nez v20, :cond_27

    .line 2612
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v21

    .line 2613
    .local v21, focused:Landroid/view/View;
    if-eqz v21, :cond_e

    .line 2614
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->clearFocus()V

    .line 2616
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 2624
    .end local v20           #focusWasTaken:Z
    .end local v21           #focused:Landroid/view/View;
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedTop:I

    .line 2627
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedTop:I

    .line 2647
    :cond_f
    :goto_6
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 2649
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2652
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 2653
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    .line 2654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mNeedSync:Z

    .line 2655
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 2657
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->updateScrollIndicators()V

    .line 2659
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-lez v2, :cond_11

    .line 2660
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 2663
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2665
    if-nez v14, :cond_0

    .line 2666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 2480
    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    .restart local v12       #childrenTop:I
    :pswitch_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2481
    if-eqz v4, :cond_12

    .line 2482
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2484
    .end local v28           #sel:Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2487
    .end local v28           #sel:Landroid/view/View;
    :cond_13
    if-eqz v4, :cond_14

    .line 2488
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2490
    .end local v28           #sel:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    .line 2493
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2495
    .end local v28           #sel:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2496
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2498
    .end local v28           #sel:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .line 2499
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2665
    .end local v3           #oldSel:Landroid/view/View;
    .end local v4           #newSel:Landroid/view/View;
    .end local v5           #delta:I
    .end local v6           #childrenLeft:I
    .end local v7           #childrenRight:I
    .end local v12           #childrenTop:I
    .end local v13           #childrenBottom:I
    .end local v15           #childCount:I
    .end local v16           #dataChanged:Z
    .end local v17           #firstPosition:I
    .end local v18           #focusLayoutRestoreDirectChild:Landroid/view/View;
    .end local v19           #focusLayoutRestoreView:Landroid/view/View;
    .end local v22           #focusedChild:Landroid/view/View;
    .end local v25           #oldFirst:Landroid/view/View;
    .end local v27           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v28           #sel:Landroid/view/View;
    :catchall_0
    move-exception v2

    if-nez v14, :cond_15

    .line 2666
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    :cond_15
    throw v2

    .line 2502
    .restart local v3       #oldSel:Landroid/view/View;
    .restart local v4       #newSel:Landroid/view/View;
    .restart local v5       #delta:I
    .restart local v6       #childrenLeft:I
    .restart local v7       #childrenRight:I
    .restart local v12       #childrenTop:I
    .restart local v13       #childrenBottom:I
    .restart local v15       #childCount:I
    .restart local v16       #dataChanged:Z
    .restart local v17       #firstPosition:I
    .restart local v18       #focusLayoutRestoreDirectChild:Landroid/view/View;
    .restart local v19       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v22       #focusedChild:Landroid/view/View;
    .restart local v25       #oldFirst:Landroid/view/View;
    .restart local v27       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    :pswitch_6
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 2503
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2504
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2508
    .end local v28           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .line 2509
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2512
    .end local v28           #sel:Landroid/view/View;
    :pswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 2513
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .line 2514
    .restart local v28       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 2519
    .end local v28           #sel:Landroid/view/View;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2520
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mSpecificLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2522
    .end local v28           #sel:Landroid/view/View;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .line 2525
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2528
    .end local v28           #sel:Landroid/view/View;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v2, p0

    .line 2529
    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    .line 2531
    invoke-direct/range {v8 .. v13}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    .line 2534
    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2544
    .end local v28           #sel:Landroid/view/View;
    .restart local v26       #position:I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    const/4 v8, 0x1

    if-le v2, v8, :cond_19

    .line 2545
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2547
    .end local v28           #sel:Landroid/view/View;
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2552
    .end local v26           #position:I
    .end local v28           #sel:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    .line 2553
    .restart local v26       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 2555
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2556
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2558
    .end local v28           #sel:Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2563
    .end local v26           #position:I
    .end local v28           #sel:Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge v2, v8, :cond_20

    .line 2566
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2567
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-nez v3, :cond_1d

    .end local v6           #childrenLeft:I
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    :cond_1d
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_7

    .line 2570
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    if-nez v3, :cond_1f

    .end local v12           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v12       #childrenTop:I
    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_8

    .line 2574
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-ge v2, v8, :cond_24

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2578
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v25, :cond_21

    .end local v6           #childrenLeft:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v6       #childrenLeft:I
    :cond_21
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_9

    .line 2581
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    if-nez v25, :cond_23

    .end local v12           #childrenTop:I
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .end local v28           #sel:Landroid/view/View;
    .restart local v12       #childrenTop:I
    :cond_23
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_a

    .line 2588
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2591
    .end local v28           #sel:Landroid/view/View;
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    .restart local v28       #sel:Landroid/view/View;
    goto/16 :goto_3

    .line 2606
    .end local v6           #childrenLeft:I
    .end local v12           #childrenTop:I
    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 2618
    .restart local v20       #focusWasTaken:Z
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 2622
    .end local v20           #focusWasTaken:Z
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    .line 2630
    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedTop:I

    .line 2633
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedLeft:I

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2640
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v19, :cond_f

    .line 2641
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 2379
    nop

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

    .line 2477
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

    .line 2993
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 2994
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3020
    :cond_0
    :goto_0
    return v2

    .line 2998
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2999
    .local v1, count:I
    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 3000
    if-eqz p2, :cond_2

    .line 3001
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3002
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3003
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3006
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3007
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3008
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 3012
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3015
    goto :goto_0

    .line 3017
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 3020
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 1905
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1906
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v4, v8, v9

    .line 1958
    :cond_0
    :goto_0
    return v4

    .line 1910
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    .line 1911
    .local v7, returnedHeight:I
    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 1914
    .local v2, dividerHeight:I
    :goto_1
    const/4 v4, 0x0

    .line 1919
    .local v4, prevHeightWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 1920
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 1921
    .local v5, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    .line 1923
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 1924
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 1926
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 1928
    if-lez v3, :cond_3

    .line 1930
    add-int/2addr v7, v2

    .line 1934
    :cond_3
    if-eqz v6, :cond_4

    .line 1935
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1938
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 1940
    if-lt v7, p4, :cond_7

    .line 1943
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 1911
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerHeight:I
    .end local v3           #i:I
    .end local v4           #prevHeightWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v6           #recyle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 1951
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerHeight:I
    .restart local v3       #i:I
    .restart local v4       #prevHeightWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 1952
    move v4, v7

    .line 1923
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_9
    move v4, v7

    .line 1958
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
    .line 1994
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 1995
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1996
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v8, v9

    .line 2048
    :cond_0
    :goto_0
    return v4

    .line 2000
    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    .line 2001
    .local v7, returnedWidth:I
    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 2004
    .local v2, dividerWidth:I
    :goto_1
    const/4 v4, 0x0

    .line 2009
    .local v4, prevWidthWithoutPartialChild:I
    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 2010
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    .line 2011
    .local v5, recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    .line 2013
    .local v6, recyle:Z
    move v3, p2

    .local v3, i:I
    :goto_2
    if-gt v3, p3, :cond_9

    .line 2014
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 2016
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 2018
    if-lez v3, :cond_3

    .line 2020
    add-int/2addr v7, v2

    .line 2024
    :cond_3
    if-eqz v6, :cond_4

    .line 2025
    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2028
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 2030
    if-lt v7, p4, :cond_7

    .line 2033
    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    .line 2001
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dividerWidth:I
    .end local v3           #i:I
    .end local v4           #prevWidthWithoutPartialChild:I
    .end local v5           #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .end local v6           #recyle:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2041
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dividerWidth:I
    .restart local v3       #i:I
    .restart local v4       #prevWidthWithoutPartialChild:I
    .restart local v5       #recycleBin:Lcom/htc/widget/HtcAbsListView2$RecycleBin;
    .restart local v6       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    .line 2042
    move v4, v7

    .line 2013
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #child:Landroid/view/View;
    :cond_9
    move v4, v7

    .line 2048
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 4810
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onFinishInflate()V

    .line 4812
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    .line 4813
    .local v0, count:I
    if-lez v0, :cond_1

    .line 4814
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4815
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;)V

    .line 4814
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4817
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->removeAllViews()V

    .line 4819
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4762
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4764
    const/4 v2, -0x1

    .line 4765
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 4766
    iget v9, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 4770
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    .line 4771
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 4772
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    .line 4773
    .local v1, childCount:I
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    .line 4774
    .local v4, firstPosition:I
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 4776
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 4778
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4776
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4782
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4783
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4784
    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4785
    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore2;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 4787
    .local v3, distance:I
    if-ge v3, v6, :cond_0

    .line 4788
    move v6, v3

    .line 4789
    move v2, v5

    goto :goto_1

    .line 4794
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v2, :cond_3

    .line 4795
    iget v9, p0, Lcom/htc/widget/HtcListViewCore2;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    .line 4799
    :goto_2
    return-void

    .line 4797
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3062
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 3067
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3072
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1772
    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView2;->onMeasure(II)V

    .line 1774
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1775
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 1776
    .local v16, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1777
    .local v11, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1779
    .local v6, heightSize:I
    const/4 v15, 0x0

    .line 1780
    .local v15, childWidth:I
    const/4 v14, 0x0

    .line 1782
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    .line 1783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-lez v2, :cond_1

    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 1785
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v13

    .line 1787
    .local v13, child:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    .line 1789
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1790
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1797
    .end local v13           #child:Landroid/view/View;
    :cond_1
    if-nez v17, :cond_2

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalScrollbarWidth()I

    move-result v3

    add-int v11, v2, v3

    .line 1802
    :cond_2
    if-nez v16, :cond_3

    .line 1803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    .line 1807
    :cond_3
    const/high16 v2, -0x8000

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 1809
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->measureHeightOfChildren(IIIII)I

    move-result v6

    .line 1813
    :cond_4
    const/high16 v2, -0x8000

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 1815
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/htc/widget/HtcListViewCore2;->measureWidthOfChildren(IIIII)I

    move-result v11

    .line 1819
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Lcom/htc/widget/HtcListViewCore2;->setMeasuredDimension(II)V

    .line 1820
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore2;->mWidthMeasureSpec:I

    .line 1823
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore2;->mHeightMeasureSpec:I

    .line 1825
    return-void

    .line 1782
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 5123
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcListViewCore2$SavedState;

    .line 5125
    .local v0, ss:Lcom/htc/widget/HtcListViewCore2$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/HtcListViewCore2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5127
    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 5128
    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5131
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 5117
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5118
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/htc/widget/HtcListViewCore2$SavedState;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0, v2}, Lcom/htc/widget/HtcListViewCore2$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 4914
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4917
    const/4 v0, 0x0

    .line 4919
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3217
    const/4 v1, -0x1

    .line 3218
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 3220
    .local v0, down:Z
    const/16 v5, 0x21

    if-ne p1, v5, :cond_3

    .line 3221
    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3227
    :cond_0
    :goto_0
    if-ltz v1, :cond_6

    .line 3228
    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 3229
    .local v2, position:I
    if-ltz v2, :cond_6

    .line 3230
    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3233
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3234
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mSpecificLeft:I

    .line 3236
    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    .line 3237
    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3240
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3241
    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3256
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    .line 3257
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    .line 3258
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 3264
    .end local v2           #position:I
    :goto_2
    return v3

    .line 3222
    :cond_3
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    .line 3223
    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3224
    const/4 v0, 0x1

    goto :goto_0

    .line 3244
    .restart local v2       #position:I
    :cond_4
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mSpecificTop:I

    .line 3246
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_5

    .line 3247
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 3250
    :cond_5
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 3251
    iput v3, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    goto :goto_1

    .end local v2           #position:I
    :cond_6
    move v3, v4

    .line 3264
    goto :goto_2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4952
    const/4 v0, 0x0

    .line 4954
    .local v0, handled:Z
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v4, :cond_2

    .line 4955
    const/4 v0, 0x1

    .line 4957
    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 4958
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 4959
    .local v1, oldValue:Z
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4968
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    .line 4969
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    .line 4970
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    .line 4973
    .end local v1           #oldValue:Z
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 4975
    return v0

    .line 4961
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 4962
    .restart local v1       #oldValue:Z
    if-nez v1, :cond_1

    .line 4963
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4964
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 1869
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 495
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, result:Z
    const/4 v1, 0x0

    .line 498
    .local v1, tmpAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 499
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v1           #tmpAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 501
    const/4 v0, 0x1

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 506
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 383
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, result:Z
    const/4 v1, 0x0

    .line 386
    .local v1, tmpAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 388
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v1           #tmpAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 395
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
    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 670
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

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 673
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 675
    .local v16, rectLeftWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v23

    .line 676
    .local v23, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollX()I

    move-result v13

    .line 677
    .local v13, listUnfadedLeft:I
    add-int v14, v13, v23

    .line 678
    .local v14, listUnfadedRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v9

    .line 680
    .local v9, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingLeftFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_0

    move/from16 v0, v16

    if-le v0, v9, :cond_1

    .line 683
    :cond_0
    add-int/2addr v13, v9

    .line 687
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    .line 688
    .local v4, childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v18

    .line 690
    .local v18, rightOfRightChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingRightFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

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

    .line 694
    :cond_2
    sub-int v18, v18, v9

    .line 698
    :cond_3
    const/16 v20, 0x0

    .line 700
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

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 707
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int v20, v20, v24

    .line 714
    :goto_0
    sub-int v8, v18, v14

    .line 715
    .local v8, distanceToRight:I
    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 735
    .end local v8           #distanceToRight:I
    :cond_4
    :goto_1
    if-eqz v20, :cond_9

    const/16 v19, 0x1

    .line 736
    .local v19, scroll:Z
    :goto_2
    if-eqz v19, :cond_5

    .line 737
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 738
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore2;->mSelectedLeft:I

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 814
    .end local v13           #listUnfadedLeft:I
    .end local v14           #listUnfadedRight:I
    .end local v16           #rectLeftWithinChild:I
    .end local v18           #rightOfRightChild:I
    .end local v20           #scrollXDelta:I
    .end local v23           #width:I
    :cond_5
    :goto_3
    return v19

    .line 710
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

    .line 716
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

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 723
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v14, v24

    sub-int v20, v20, v24

    .line 730
    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 731
    .local v11, left:I
    sub-int v5, v11, v13

    .line 732
    .local v5, deltaToLeft:I
    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto :goto_1

    .line 726
    .end local v5           #deltaToLeft:I
    .end local v11           #left:I
    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    sub-int v20, v20, v24

    goto :goto_4

    .line 735
    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    .line 743
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

    .line 745
    .local v17, rectTopWithinChild:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v10

    .line 746
    .local v10, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollY()I

    move-result v15

    .line 747
    .local v15, listUnfadedTop:I
    add-int v12, v15, v10

    .line 748
    .local v12, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    .line 750
    .restart local v9       #fadingEdge:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingTopFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_b

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    .line 753
    :cond_b
    add-int/2addr v15, v9

    .line 757
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    .line 758
    .restart local v4       #childCount:I
    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 760
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingBottomFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

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

    .line 764
    :cond_d
    sub-int/2addr v12, v9

    .line 768
    :cond_e
    const/16 v21, 0x0

    .line 770
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

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_10

    .line 777
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    add-int v21, v21, v24

    .line 784
    :goto_5
    sub-int v7, v3, v12

    .line 785
    .local v7, distanceToBottom:I
    move/from16 v0, v21

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 805
    .end local v7           #distanceToBottom:I
    :cond_f
    :goto_6
    if-eqz v21, :cond_13

    const/16 v19, 0x1

    .line 806
    .restart local v19       #scroll:Z
    :goto_7
    if-eqz v19, :cond_5

    .line 807
    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    .line 808
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore2;->mSelectedTop:I

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    goto/16 :goto_3

    .line 780
    .end local v19           #scroll:Z
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    add-int v21, v21, v24

    goto :goto_5

    .line 786
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

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_12

    .line 793
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v12, v24

    sub-int v21, v21, v24

    .line 800
    :goto_8
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v22

    .line 801
    .local v22, top:I
    sub-int v6, v22, v15

    .line 802
    .local v6, deltaToTop:I
    move/from16 v0, v21

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_6

    .line 796
    .end local v6           #deltaToTop:I
    .end local v22           #top:I
    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v15, v24

    sub-int v21, v21, v24

    goto :goto_8

    .line 805
    :cond_13
    const/16 v19, 0x0

    goto :goto_7
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 611
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 613
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 541
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    .line 546
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    .line 548
    if-nez p1, :cond_3

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    .line 565
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mOldSelectedPosition:I

    .line 566
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcListViewCore2;->mOldSelectedRowId:J

    .line 567
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 568
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 569
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mOldItemCount:I

    .line 570
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    .line 571
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    .line 573
    new-instance v1, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    .line 574
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 576
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    .line 579
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 580
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 584
    .local v0, position:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    .line 585
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 587
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemCount:I

    if-nez v1, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    .line 599
    .end local v0           #position:I
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    .line 604
    return-void

    .line 561
    :cond_3
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 582
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_1

    .line 593
    .end local v0           #position:I
    :cond_5
    iput-boolean v4, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    .line 594
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    .line 596
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setBottomFirst(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5177
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    .line 5178
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .parameter "choiceMode"

    .prologue
    .line 4944
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    .line 4945
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 4946
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4948
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    const/4 v1, 0x0

    .line 4663
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4664
    if-eqz p1, :cond_1

    .line 4665
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4666
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    .line 4681
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 4682
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 4683
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 4684
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4685
    return-void

    .line 4668
    :cond_1
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4669
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    .line 4672
    :cond_2
    if-eqz p1, :cond_3

    .line 4673
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4674
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    .line 4676
    :cond_3
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4677
    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 4704
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    .line 4705
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4706
    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 4726
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    .line 4727
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    .line 4728
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 4756
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    .line 4757
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 4758
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 4742
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    .line 4743
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    .line 4744
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 4989
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-nez v1, :cond_1

    .line 5009
    :cond_0
    :goto_0
    return-void

    .line 4993
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 4994
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5004
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    .line 5005
    iput-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDataChanged:Z

    .line 5006
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    .line 5007
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 4996
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 4997
    .local v0, oldValue:Z
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 4998
    if-nez v0, :cond_2

    .line 4999
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 4440
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    .line 4441
    if-nez p1, :cond_0

    .line 4442
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setDescendantFocusability(I)V

    .line 4444
    :cond_0
    return-void
.end method

.method public setRoundedCornerGetView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5195
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    .line 5196
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 2885
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromLeft(II)V

    .line 2891
    :goto_0
    return-void

    .line 2888
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 3029
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3030
    .local v0, count:I
    if-lez v0, :cond_0

    .line 3031
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    .line 3042
    :goto_0
    return-void

    .line 3035
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 3036
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    goto :goto_0

    .line 3038
    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mNextSelectedPosition:I

    .line 3039
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2
    .parameter "position"
    .parameter "x"

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2948
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2950
    if-ltz p1, :cond_2

    .line 2951
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 2957
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2958
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 2959
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSpecificLeft:I

    .line 2961
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2962
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSyncPosition:I

    .line 2963
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSyncColumnId:J

    .line 2966
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 2954
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2929
    :cond_0
    :goto_0
    return-void

    .line 2909
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2910
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2911
    if-ltz p1, :cond_2

    .line 2912
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 2918
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2919
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mLayoutMode:I

    .line 2920
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSpecificTop:I

    .line 2922
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2923
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSyncPosition:I

    .line 2924
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSyncRowId:J

    .line 2927
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    .line 2915
    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 2979
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    .line 2980
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    .line 2981
    return-void
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 5155
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    .line 5156
    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 5167
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    .line 5168
    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-eqz v0, :cond_0

    .line 5169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5170
    :cond_0
    return-void
.end method

.method public setUseDivider(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 5188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    .line 5189
    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 5203
    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    .line 5204
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 5145
    const/4 v0, 0x1

    return v0
.end method

.method updateBackGround()V
    .locals 22

    .prologue
    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    .line 819
    .local v5, childCount:I
    const/16 v19, 0x0

    .line 820
    .local v19, use_separable_tag:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 821
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 822
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 823
    .local v12, tag:Ljava/lang/Object;
    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 824
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore2;->mSpeedUp:Z

    .line 925
    .end local v4           #child:Landroid/view/View;
    .end local v12           #tag:Ljava/lang/Object;
    :cond_0
    return-void

    .line 827
    .restart local v4       #child:Landroid/view/View;
    .restart local v12       #tag:Ljava/lang/Object;
    :cond_1
    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 828
    const/16 v19, 0x1

    .line 832
    .end local v4           #child:Landroid/view/View;
    .end local v12           #tag:Ljava/lang/Object;
    :cond_2
    if-eqz v19, :cond_0

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v21

    add-int v11, v20, v21

    .line 838
    .local v11, listBottom:I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_0

    .line 839
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 840
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 841
    .local v2, bottom:I
    const v20, 0x2020019

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 842
    .local v9, child_top_round:Landroid/view/View;
    const v20, 0x2020018

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 843
    .local v8, child_bottom_round:Landroid/view/View;
    const/16 v18, 0x0

    .line 844
    .local v18, top_round:Z
    const/4 v3, 0x0

    .line 846
    .local v3, bottom_round:Z
    if-eqz v4, :cond_0

    .line 849
    const v20, 0x2020085

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_3

    const v20, 0x20200f0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_3

    const v20, 0x20200f8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 838
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 820
    .end local v2           #bottom:I
    .end local v3           #bottom_round:Z
    .end local v8           #child_bottom_round:Landroid/view/View;
    .end local v9           #child_top_round:Landroid/view/View;
    .end local v11           #listBottom:I
    .end local v18           #top_round:Z
    .restart local v12       #tag:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 856
    .end local v12           #tag:Ljava/lang/Object;
    .restart local v2       #bottom:I
    .restart local v3       #bottom_round:Z
    .restart local v8       #child_bottom_round:Landroid/view/View;
    .restart local v9       #child_top_round:Landroid/view/View;
    .restart local v11       #listBottom:I
    .restart local v18       #top_round:Z
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 857
    .restart local v12       #tag:Ljava/lang/Object;
    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object v13, v12

    .line 859
    check-cast v13, Lcom/htc/widget/HtcListItemSeparable;

    .line 861
    .local v13, tagItem:Lcom/htc/widget/HtcListItemSeparable;
    if-nez v10, :cond_9

    .line 862
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    .line 878
    :cond_6
    :goto_3
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_c

    .line 879
    if-lt v2, v11, :cond_7

    .line 880
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    .line 898
    .end local v13           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_7
    :goto_4
    if-eqz v18, :cond_f

    if-eqz v3, :cond_f

    .line 899
    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    .line 900
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 901
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 903
    :cond_8
    const v20, 0x2080693

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 863
    .restart local v13       #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_9
    if-lez v10, :cond_6

    .line 864
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 865
    .local v7, childPre:Landroid/view/View;
    if-eqz v7, :cond_6

    .line 866
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 867
    .local v16, tagPre:Ljava/lang/Object;
    const/16 v17, 0x0

    .line 868
    .local v17, tagPreItem:Lcom/htc/widget/HtcListItemSeparable;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v17, v16

    .line 869
    check-cast v17, Lcom/htc/widget/HtcListItemSeparable;

    .line 870
    :cond_a
    if-nez v16, :cond_b

    .line 871
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    goto :goto_3

    .line 872
    :cond_b
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 874
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    goto :goto_3

    .line 881
    .end local v7           #childPre:Landroid/view/View;
    .end local v16           #tagPre:Ljava/lang/Object;
    .end local v17           #tagPreItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_c
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    .line 882
    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 883
    .local v6, childNext:Landroid/view/View;
    if-eqz v6, :cond_7

    .line 884
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 885
    .local v14, tagNext:Ljava/lang/Object;
    const/4 v15, 0x0

    .line 886
    .local v15, tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    instance-of v0, v14, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object v15, v14

    .line 887
    check-cast v15, Lcom/htc/widget/HtcListItemSeparable;

    .line 889
    :cond_d
    if-nez v14, :cond_e

    .line 890
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    goto :goto_4

    .line 891
    :cond_e
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    invoke-interface {v13, v14}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 893
    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    goto/16 :goto_4

    .line 904
    .end local v6           #childNext:Landroid/view/View;
    .end local v13           #tagItem:Lcom/htc/widget/HtcListItemSeparable;
    .end local v14           #tagNext:Ljava/lang/Object;
    .end local v15           #tagNextItem:Lcom/htc/widget/HtcListItemSeparable;
    :cond_f
    if-eqz v18, :cond_11

    .line 905
    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    .line 906
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 907
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :cond_10
    const v20, 0x2080696

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 910
    :cond_11
    if-eqz v3, :cond_13

    .line 911
    if-eqz v9, :cond_12

    if-eqz v8, :cond_12

    .line 912
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 913
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :cond_12
    const v20, 0x2080694

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 917
    :cond_13
    if-eqz v9, :cond_14

    if-eqz v8, :cond_14

    .line 918
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 919
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 922
    :cond_14
    const v20, 0x2080695

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method
