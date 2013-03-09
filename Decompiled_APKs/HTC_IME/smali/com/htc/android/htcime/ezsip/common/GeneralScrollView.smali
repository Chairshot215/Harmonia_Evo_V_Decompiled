.class public Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;
.super Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;
.source "GeneralScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field public static final SCROLL_HORIZONTAL:I = 0x1

.field public static final SCROLL_VERTICAL:I


# instance fields
.field private boundaryScrollX:I

.field private boundaryScrollY:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mOnScrollChangedListener:Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;

.field private mScrollOrientation:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private motionDownX:F

.field private motionDownY:F

.field private scrollBeginX:I

.field private scrollBeginY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 80
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsLayoutDirty:Z

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 94
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    .line 110
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    .line 123
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    .line 140
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->initScrollView()V

    .line 142
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 148
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 159
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 80
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsLayoutDirty:Z

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 94
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    .line 110
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    .line 123
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    .line 165
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->initScrollView()V

    .line 167
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setFillViewport(Z)V

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    return-void
.end method

.method private canScroll()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 321
    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-ne v5, v3, :cond_2

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 323
    .local v2, childWidth:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 331
    .end local v2           #childWidth:I
    :cond_0
    :goto_0
    return v3

    .restart local v2       #childWidth:I
    :cond_1
    move v3, v4

    .line 323
    goto :goto_0

    .line 326
    .end local v2           #childWidth:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 327
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    add-int/2addr v6, v1

    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .end local v1           #childHeight:I
    :cond_3
    move v3, v4

    .line 331
    goto :goto_0
.end method

.method private createScroller()Lcom/htc/android/htcime/ezsip/common/GeneralScroller;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1318
    if-eqz p1, :cond_0

    .line 1319
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1320
    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->smoothScrollBy(II)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1303
    if-eqz p1, :cond_0

    .line 1304
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1305
    invoke-virtual {p0, v1, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->smoothScrollBy(II)V

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->createScroller()Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setFocusable(Z)V

    .line 274
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setDescendantFocusability(I)V

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setWillNotDraw(Z)V

    .line 276
    return-void
.end method


# virtual methods
.method public GetScrollOrientation()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->addView(Landroid/view/View;I)V

    .line 294
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    .line 1162
    iget v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v9, :cond_7

    .line 1163
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1164
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1166
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1168
    .local v5, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getMaxScrollAmount()I

    move-result v4

    .line 1170
    .local v4, maxJump:I
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1171
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1172
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1173
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1174
    .local v8, scrollDelta:I
    invoke-direct {p0, v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollY(I)V

    .line 1175
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1198
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1206
    .local v3, descendantFocusability:I
    const/high16 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setDescendantFocusability(I)V

    .line 1207
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->requestFocus()Z

    .line 1208
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setDescendantFocusability(I)V

    .line 1210
    .end local v3           #descendantFocusability:I
    :cond_1
    const/4 v9, 0x1

    .line 1260
    :goto_1
    return v9

    .line 1178
    .end local v8           #scrollDelta:I
    :cond_2
    move v8, v4

    .line 1180
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x21

    if-ne p1, v9, :cond_4

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v9

    if-ge v9, v8, :cond_4

    .line 1181
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v8

    .line 1192
    :cond_3
    :goto_2
    if-nez v8, :cond_5

    .line 1193
    const/4 v9, 0x0

    goto :goto_1

    .line 1182
    :cond_4
    const/16 v9, 0x82

    if-ne p1, v9, :cond_3

    .line 1184
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1186
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v10

    add-int v6, v9, v10

    .line 1188
    .local v6, screenBottom:I
    sub-int v9, v1, v6

    if-ge v9, v4, :cond_3

    .line 1189
    sub-int v8, v1, v6

    goto :goto_2

    .line 1195
    .end local v1           #daBottom:I
    .end local v6           #screenBottom:I
    :cond_5
    const/16 v9, 0x82

    if-ne p1, v9, :cond_6

    move v9, v8

    :goto_3
    invoke-direct {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_6
    neg-int v9, v8

    goto :goto_3

    .line 1213
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v4           #maxJump:I
    .end local v5           #nextFocused:Landroid/view/View;
    .end local v8           #scrollDelta:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1214
    .restart local v0       #currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_8

    const/4 v0, 0x0

    .line 1216
    :cond_8
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v9

    invoke-virtual {v9, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1218
    .restart local v5       #nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getMaxScrollAmount()I

    move-result v4

    .line 1220
    .restart local v4       #maxJump:I
    if-eqz v5, :cond_a

    invoke-virtual {p0, v5, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1221
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1222
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1223
    iget-object v9, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v8

    .line 1224
    .restart local v8       #scrollDelta:I
    invoke-direct {p0, v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollX(I)V

    .line 1225
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1248
    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1255
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getDescendantFocusability()I

    move-result v3

    .line 1256
    .restart local v3       #descendantFocusability:I
    const/high16 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setDescendantFocusability(I)V

    .line 1257
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->requestFocus()Z

    .line 1258
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setDescendantFocusability(I)V

    .line 1260
    .end local v3           #descendantFocusability:I
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1228
    .end local v8           #scrollDelta:I
    :cond_a
    move v8, v4

    .line 1230
    .restart local v8       #scrollDelta:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_c

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v9

    if-ge v9, v8, :cond_c

    .line 1231
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v8

    .line 1242
    :cond_b
    :goto_5
    if-nez v8, :cond_d

    .line 1243
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1232
    :cond_c
    const/16 v9, 0x42

    if-ne p1, v9, :cond_b

    .line 1234
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1236
    .local v2, daRight:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v10

    add-int v7, v9, v10

    .line 1238
    .local v7, screenRight:I
    sub-int v9, v2, v7

    if-ge v9, v4, :cond_b

    .line 1239
    sub-int v8, v2, v7

    goto :goto_5

    .line 1245
    .end local v2           #daRight:I
    .end local v7           #screenRight:I
    :cond_d
    const/16 v9, 0x42

    if-ne p1, v9, :cond_e

    move v9, v8

    :goto_6
    invoke-direct {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollX(I)V

    goto :goto_4

    :cond_e
    neg-int v9, v8

    goto :goto_6
.end method

.method protected clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1869
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1885
    :cond_0
    const/4 p1, 0x0

    .line 1895
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 1887
    .restart local p1
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1893
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 1904
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1432
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1435
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    .line 1436
    .local v0, oldX:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    .line 1437
    .local v1, oldY:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    .line 1438
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    .line 1440
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->onScrollChanged(IIII)V

    .line 1441
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->postInvalidate()V

    .line 1444
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_0
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 16
    .parameter "rect"

    .prologue
    .line 1528
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v14, :cond_6

    .line 1529
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v5

    .line 1530
    .local v5, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v10

    .line 1531
    .local v10, screenTop:I
    add-int v7, v10, v5

    .line 1533
    .local v7, screenBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1536
    .local v4, fadingEdge:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    if-lez v14, :cond_0

    .line 1537
    add-int/2addr v10, v4

    .line 1541
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    if-ge v14, v15, :cond_1

    .line 1542
    sub-int/2addr v7, v4

    .line 1545
    :cond_1
    const/4 v12, 0x0

    .line 1547
    .local v12, scrollYDelta:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v7, :cond_4

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    if-le v14, v10, :cond_4

    .line 1552
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v14, v5, :cond_3

    .line 1554
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v10

    add-int/2addr v12, v14

    .line 1561
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1562
    .local v1, bottom:I
    sub-int v2, v1, v7

    .line 1563
    .local v2, distanceToBottom:I
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1636
    .end local v1           #bottom:I
    .end local v2           #distanceToBottom:I
    .end local v5           #height:I
    .end local v7           #screenBottom:I
    .end local v10           #screenTop:I
    .end local v12           #scrollYDelta:I
    :cond_2
    :goto_1
    return v12

    .line 1557
    .restart local v5       #height:I
    .restart local v7       #screenBottom:I
    .restart local v10       #screenTop:I
    .restart local v12       #scrollYDelta:I
    :cond_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v7

    add-int/2addr v12, v14

    goto :goto_0

    .line 1565
    :cond_4
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    if-ge v14, v10, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v14, v7, :cond_2

    .line 1570
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v14, v5, :cond_5

    .line 1572
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v7, v14

    sub-int/2addr v12, v14

    .line 1579
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v14

    neg-int v14, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1

    .line 1575
    :cond_5
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int v14, v10, v14

    sub-int/2addr v12, v14

    goto :goto_2

    .line 1584
    .end local v4           #fadingEdge:I
    .end local v5           #height:I
    .end local v7           #screenBottom:I
    .end local v10           #screenTop:I
    .end local v12           #scrollYDelta:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v13

    .line 1585
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v8

    .line 1586
    .local v8, screenLeft:I
    add-int v9, v8, v13

    .line 1588
    .local v9, screenRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 1591
    .restart local v4       #fadingEdge:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    if-lez v14, :cond_7

    .line 1592
    add-int/2addr v8, v4

    .line 1596
    :cond_7
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    if-ge v14, v15, :cond_8

    .line 1597
    sub-int/2addr v9, v4

    .line 1600
    :cond_8
    const/4 v11, 0x0

    .line 1602
    .local v11, scrollXDelta:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    if-le v14, v9, :cond_b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    if-le v14, v8, :cond_b

    .line 1607
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v14, v13, :cond_a

    .line 1609
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v8

    add-int/2addr v11, v14

    .line 1616
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v6

    .line 1617
    .local v6, right:I
    sub-int v3, v6, v9

    .line 1618
    .local v3, distanceToRight:I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .end local v3           #distanceToRight:I
    .end local v6           #right:I
    :cond_9
    :goto_4
    move v12, v11

    .line 1636
    goto/16 :goto_1

    .line 1612
    :cond_a
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v9

    add-int/2addr v11, v14

    goto :goto_3

    .line 1620
    :cond_b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    if-ge v14, v8, :cond_9

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    if-ge v14, v9, :cond_9

    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v14, v13, :cond_c

    .line 1627
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v14

    sub-int/2addr v11, v14

    .line 1634
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v14

    neg-int v14, v14

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_4

    .line 1630
    :cond_c
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->left:I

    sub-int v14, v8, v14

    sub-int/2addr v11, v14

    goto :goto_5
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 1364
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 466
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 467
    const/4 v1, 0x1

    .line 469
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v7, 0x42

    const/16 v4, 0x21

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/16 v5, 0x82

    .line 481
    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v8, :cond_7

    .line 483
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 486
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 487
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 489
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 551
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 496
    :cond_2
    const/4 v1, 0x0

    .line 497
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 519
    goto :goto_0

    .line 500
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 501
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 503
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fullScroll(I)Z

    move-result v1

    .line 505
    goto :goto_1

    .line 507
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 508
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 510
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fullScroll(I)Z

    move-result v1

    .line 512
    goto :goto_1

    .line 514
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 522
    .end local v1           #handled:Z
    :cond_7
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 524
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    const/4 v1, 0x0

    .line 529
    .restart local v1       #handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    .line 530
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_8
    :goto_3
    move v3, v1

    .line 551
    goto :goto_0

    .line 532
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 533
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 535
    :cond_9
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fullScroll(I)Z

    move-result v1

    .line 537
    goto :goto_3

    .line 539
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 540
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3

    .line 542
    :cond_a
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fullScroll(I)Z

    move-result v1

    .line 544
    goto :goto_3

    .line 546
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v6

    :goto_4
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->pageScroll(I)Z

    goto :goto_3

    :cond_b
    move v3, v7

    goto :goto_4

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    .line 530
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method protected findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 15
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 829
    iget v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v14, :cond_9

    .line 830
    const/4 v14, 0x2

    invoke-virtual {p0, v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 831
    .local v4, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 840
    .local v2, focusCandidate:Landroid/view/View;
    const/4 v5, 0x0

    .line 842
    .local v5, foundFullyContainedFocusable:Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 843
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 844
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 845
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    .line 846
    .local v13, viewTop:I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 848
    .local v8, viewBottom:I
    move/from16 v0, p2

    if-ge v0, v8, :cond_0

    move/from16 v0, p3

    if-ge v13, v0, :cond_0

    .line 854
    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    move/from16 v0, p3

    if-ge v8, v0, :cond_1

    const/4 v10, 0x1

    .line 857
    .local v10, viewIsFullyContained:Z
    :goto_1
    if-nez v2, :cond_2

    .line 859
    move-object v2, v7

    .line 860
    move v5, v10

    .line 843
    .end local v10           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 854
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 862
    .restart local v10       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v13, v14, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    if-le v8, v14, :cond_5

    :cond_4
    const/4 v9, 0x1

    .line 867
    .local v9, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v5, :cond_6

    .line 868
    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    .line 874
    move-object v2, v7

    goto :goto_2

    .line 862
    .end local v9           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 877
    .restart local v9       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v10, :cond_7

    .line 879
    move-object v2, v7

    .line 880
    const/4 v5, 0x1

    goto :goto_2

    .line 881
    :cond_7
    if-eqz v9, :cond_0

    .line 886
    move-object v2, v7

    goto :goto_2

    .end local v7           #view:Landroid/view/View;
    .end local v8           #viewBottom:I
    .end local v9           #viewIsCloserToBoundary:Z
    .end local v10           #viewIsFullyContained:Z
    .end local v13           #viewTop:I
    :cond_8
    move-object v3, v2

    .line 963
    .end local v2           #focusCandidate:Landroid/view/View;
    .local v3, focusCandidate:Landroid/view/View;
    :goto_4
    return-object v3

    .line 896
    .end local v1           #count:I
    .end local v3           #focusCandidate:Landroid/view/View;
    .end local v4           #focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v5           #foundFullyContainedFocusable:Z
    .end local v6           #i:I
    :cond_9
    const/4 v14, 0x2

    invoke-virtual {p0, v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 897
    .restart local v4       #focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 906
    .restart local v2       #focusCandidate:Landroid/view/View;
    const/4 v5, 0x0

    .line 908
    .restart local v5       #foundFullyContainedFocusable:Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 910
    .restart local v1       #count:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    if-ge v6, v1, :cond_12

    .line 911
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 912
    .restart local v7       #view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 913
    .local v11, viewLeft:I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 915
    .local v12, viewRight:I
    move/from16 v0, p2

    if-ge v0, v12, :cond_a

    move/from16 v0, p3

    if-ge v11, v0, :cond_a

    .line 922
    move/from16 v0, p2

    if-ge v0, v11, :cond_b

    move/from16 v0, p3

    if-ge v12, v0, :cond_b

    const/4 v10, 0x1

    .line 926
    .restart local v10       #viewIsFullyContained:Z
    :goto_6
    if-nez v2, :cond_c

    .line 928
    move-object v2, v7

    .line 929
    move v5, v10

    .line 910
    .end local v10           #viewIsFullyContained:Z
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 922
    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    .line 931
    .restart local v10       #viewIsFullyContained:Z
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v11, v14, :cond_e

    :cond_d
    if-nez p1, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v14

    if-le v12, v14, :cond_f

    :cond_e
    const/4 v9, 0x1

    .line 936
    .restart local v9       #viewIsCloserToBoundary:Z
    :goto_8
    if-eqz v5, :cond_10

    .line 937
    if-eqz v10, :cond_a

    if-eqz v9, :cond_a

    .line 943
    move-object v2, v7

    goto :goto_7

    .line 931
    .end local v9           #viewIsCloserToBoundary:Z
    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 946
    .restart local v9       #viewIsCloserToBoundary:Z
    :cond_10
    if-eqz v10, :cond_11

    .line 948
    move-object v2, v7

    .line 949
    const/4 v5, 0x1

    goto :goto_7

    .line 950
    :cond_11
    if-eqz v9, :cond_a

    .line 955
    move-object v2, v7

    goto :goto_7

    .end local v7           #view:Landroid/view/View;
    .end local v9           #viewIsCloserToBoundary:Z
    .end local v10           #viewIsFullyContained:Z
    .end local v11           #viewLeft:I
    .end local v12           #viewRight:I
    :cond_12
    move-object v3, v2

    .line 963
    .end local v2           #focusCandidate:Landroid/view/View;
    .restart local v3       #focusCandidate:Landroid/view/View;
    goto :goto_4
.end method

.method protected findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 770
    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v5, :cond_2

    .line 776
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getVerticalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 777
    .local v1, fadingEdgeLength:I
    add-int v4, p2, v1

    .line 778
    .local v4, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v0, v5, v1

    .line 780
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 805
    .end local v0           #bottomWithoutFadingEdge:I
    .end local v4           #topWithoutFadingEdge:I
    .end local p3
    :cond_0
    :goto_0
    return-object p3

    .line 786
    .restart local v0       #bottomWithoutFadingEdge:I
    .restart local v4       #topWithoutFadingEdge:I
    .restart local p3
    :cond_1
    invoke-virtual {p0, p1, v4, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 795
    .end local v0           #bottomWithoutFadingEdge:I
    .end local v1           #fadingEdgeLength:I
    .end local v4           #topWithoutFadingEdge:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHorizontalFadingEdgeLength()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 796
    .restart local v1       #fadingEdgeLength:I
    add-int v2, p2, v1

    .line 797
    .local v2, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v5

    add-int/2addr v5, p2

    sub-int v3, v5, v1

    .line 799
    .local v3, rightWithoutFadingEdge:I
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ge v5, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_0

    .line 805
    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public fling(I)V
    .locals 28
    .parameter "velocity"

    .prologue
    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v22

    .line 1796
    .local v22, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v27

    .line 1797
    .local v27, width:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1798
    .local v7, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v21

    .line 1799
    .local v21, bottom:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 1800
    .local v11, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v26

    .line 1802
    .local v26, right:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v2, :cond_6

    .line 1803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    if-lt v2, v7, :cond_0

    sub-int v2, v21, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    if-ge v2, v3, :cond_3

    .line 1804
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    const/4 v5, 0x0

    sub-int v6, v26, v27

    sub-int v8, v21, v22

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOverBack(IIIIII)V

    .line 1809
    .end local v11           #left:I
    :goto_0
    if-lez p1, :cond_4

    const/16 v23, 0x1

    .line 1811
    .local v23, movingDown:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->getFinalY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v25

    .line 1813
    .local v25, newFocused:Landroid/view/View;
    if-nez v25, :cond_1

    .line 1814
    move-object/from16 v25, p0

    .line 1817
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v25

    if-eq v0, v2, :cond_2

    if-eqz v23, :cond_5

    const/16 v2, 0x42

    :goto_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1819
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1820
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1823
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->invalidate()V

    .line 1848
    .end local v23           #movingDown:Z
    :goto_3
    return-void

    .line 1806
    .end local v25           #newFocused:Landroid/view/View;
    .restart local v11       #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    sub-int v14, v26, v27

    sub-int v16, v21, v22

    move/from16 v12, p1

    move v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1809
    .end local v11           #left:I
    :cond_4
    const/16 v23, 0x0

    goto :goto_1

    .line 1817
    .restart local v23       #movingDown:Z
    .restart local v25       #newFocused:Landroid/view/View;
    :cond_5
    const/16 v2, 0x11

    goto :goto_2

    .line 1825
    .end local v23           #movingDown:Z
    .end local v25           #newFocused:Landroid/view/View;
    .restart local v11       #left:I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    if-lt v2, v11, :cond_7

    sub-int v2, v26, v27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    if-ge v2, v3, :cond_a

    .line 1826
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    const/4 v10, 0x0

    sub-int v12, v26, v27

    const/4 v13, 0x0

    sub-int v14, v21, v22

    invoke-virtual/range {v8 .. v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->flingOverBack(IIIIII)V

    .line 1831
    :goto_4
    if-lez p1, :cond_b

    const/16 v24, 0x1

    .line 1833
    .local v24, movingRight:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->getFinalX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v25

    .line 1835
    .restart local v25       #newFocused:Landroid/view/View;
    if-nez v25, :cond_8

    .line 1836
    move-object/from16 v25, p0

    .line 1839
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v25

    if-eq v0, v2, :cond_9

    if-eqz v24, :cond_c

    const/16 v2, 0x42

    :goto_6
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1841
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1842
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1845
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->invalidate()V

    goto :goto_3

    .line 1828
    .end local v24           #movingRight:Z
    .end local v25           #newFocused:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    sub-int v18, v26, v27

    const/16 v19, 0x0

    sub-int v20, v21, v22

    move/from16 v15, p1

    move/from16 v17, v11

    invoke-virtual/range {v12 .. v20}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->fling(IIIIIIII)V

    goto :goto_4

    .line 1831
    :cond_b
    const/16 v24, 0x0

    goto :goto_5

    .line 1839
    .restart local v24       #movingRight:Z
    .restart local v25       #newFocused:Landroid/view/View;
    :cond_c
    const/16 v2, 0x11

    goto :goto_6
.end method

.method public fullScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/16 v7, 0x82

    const/4 v5, 0x0

    .line 1044
    if-eq p1, v7, :cond_0

    const/16 v6, 0x21

    if-ne p1, v6, :cond_3

    .line 1045
    :cond_0
    if-ne p1, v7, :cond_2

    const/4 v1, 0x1

    .line 1046
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v2

    .line 1048
    .local v2, height:I
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->top:I

    .line 1049
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 1051
    if-eqz v1, :cond_1

    .line 1052
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 1053
    .local v0, count:I
    if-lez v0, :cond_1

    .line 1054
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1055
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1056
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1060
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollAndFocus(III)Z

    move-result v5

    .line 1077
    .end local v1           #down:Z
    .end local v2           #height:I
    :goto_1
    return v5

    :cond_2
    move v1, v5

    .line 1045
    goto :goto_0

    .line 1063
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v4

    .line 1065
    .local v4, width:I
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 1066
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 1068
    const/16 v5, 0x42

    if-ne p1, v5, :cond_4

    .line 1069
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 1070
    .restart local v0       #count:I
    if-lez v0, :cond_4

    .line 1071
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1072
    .restart local v3       #view:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1073
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1077
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollAndFocus(III)Z

    move-result v5

    goto :goto_1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const/4 v3, 0x0

    .line 252
    :goto_0
    return v3

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 246
    .local v1, length:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 247
    .local v0, bottom:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 248
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 249
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 252
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 204
    :goto_0
    return v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 200
    .local v0, length:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 201
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 204
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f00

    .line 261
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mRight:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 265
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mBottom:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 220
    :goto_0
    return v3

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 214
    .local v0, length:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    .line 215
    .local v1, right:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 216
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 217
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 220
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 236
    :goto_0
    return v1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 232
    .local v0, length:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 233
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 236
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mFillViewport:Z

    return v0
.end method

.method protected isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1271
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1779
    if-ne p1, p2, :cond_1

    .line 1784
    :cond_0
    :goto_0
    return v1

    .line 1783
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1784
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-virtual {p0, v0, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 5
    .parameter "descendant"
    .parameter "delta"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1280
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v2, :cond_2

    .line 1281
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1282
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1284
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1284
    goto :goto_0

    .line 1288
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1289
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1291
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v3

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1370
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v3, :cond_0

    .line 1371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1376
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1379
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1381
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1398
    :goto_0
    return-void

    .line 1384
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1389
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1391
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v3, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1395
    .restart local v0       #childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x0

    .line 1403
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v3, :cond_0

    .line 1404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1406
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1409
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1412
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1428
    :goto_0
    return-void

    .line 1416
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1418
    .restart local v2       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1421
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1425
    .restart local v0       #childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 570
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_0

    .line 632
    :goto_0
    return v4

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_1

    .line 575
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    move v4, v5

    .line 576
    goto :goto_0

    .line 579
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 580
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 582
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 632
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 593
    :pswitch_0
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_2

    .line 594
    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-ne v5, v4, :cond_3

    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 597
    .local v1, diff:I
    :goto_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    if-le v1, v5, :cond_2

    .line 598
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 594
    .end local v1           #diff:I
    :cond_3
    iget v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    goto :goto_2

    .line 605
    :pswitch_1
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionX:F

    .line 606
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionY:F

    .line 608
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownX:F

    .line 609
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginX:I

    .line 610
    iput v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownY:F

    .line 611
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginY:I

    .line 618
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_3
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_3

    .line 624
    :pswitch_2
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1735
    invoke-super/range {p0 .. p5}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->onLayout(ZIIII)V

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsLayoutDirty:Z

    .line 1738
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v0, p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1741
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1744
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    .line 1747
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollY:I

    .line 1748
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollX:I

    .line 1749
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 374
    invoke-super/range {p0 .. p2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->onMeasure(II)V

    .line 376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v10

    .line 379
    .local v10, count:I
    const/16 v16, 0x0

    .line 380
    .local v16, maxHeight:I
    const/16 v17, 0x0

    .line 383
    .local v17, maxWidth:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v10, :cond_2

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 385
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mMeasureAllChildren:Z

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 386
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 387
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 388
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 383
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 393
    .end local v3           #child:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int v17, v17, v2

    .line 394
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    add-int/2addr v2, v4

    add-int v16, v16, v2

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 402
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_3

    .line 403
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 404
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 407
    :cond_3
    move/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->resolveSize(II)I

    move-result v2

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->setMeasuredDimension(II)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isFillViewport()Z

    move-result v2

    if-nez v2, :cond_5

    .line 460
    .end local v10           #count:I
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #i:I
    .end local v16           #maxHeight:I
    .end local v17           #maxWidth:I
    :cond_4
    :goto_1
    return-void

    .line 414
    .restart local v10       #count:I
    .restart local v11       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v14       #i:I
    .restart local v16       #maxHeight:I
    .restart local v17       #maxWidth:I
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 415
    .local v19, widthMode:I
    if-eqz v19, :cond_4

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 420
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getMeasuredWidth()I

    move-result v18

    .line 421
    .local v18, width:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_4

    .line 422
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .local v15, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v8

    .line 426
    .local v8, childHeightMeasureSpec:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    sub-int v18, v18, v2

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    sub-int v18, v18, v2

    .line 428
    const/high16 v2, 0x4000

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 430
    .local v9, childWidthMeasureSpec:I
    invoke-virtual {v3, v9, v8}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 434
    .end local v3           #child:Landroid/view/View;
    .end local v8           #childHeightMeasureSpec:I
    .end local v9           #childWidthMeasureSpec:I
    .end local v10           #count:I
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v14           #i:I
    .end local v15           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v16           #maxHeight:I
    .end local v17           #maxWidth:I
    .end local v18           #width:I
    .end local v19           #widthMode:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mFillViewport:Z

    if-eqz v2, :cond_4

    .line 438
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 439
    .local v13, heightMode:I
    if-eqz v13, :cond_4

    .line 443
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 444
    .restart local v3       #child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getMeasuredHeight()I

    move-result v12

    .line 445
    .local v12, height:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v12, :cond_4

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 448
    .restart local v15       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingRight:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildMeasureSpec(III)I

    move-result v9

    .line 450
    .restart local v9       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingTop:I

    sub-int/2addr v12, v2

    .line 451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mPaddingBottom:I

    sub-int/2addr v12, v2

    .line 452
    const/high16 v2, 0x4000

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 454
    .restart local v8       #childHeightMeasureSpec:I
    invoke-virtual {v3, v9, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 6
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1665
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v2, :cond_5

    .line 1668
    if-ne p1, v4, :cond_2

    .line 1669
    const/16 p1, 0x82

    .line 1674
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v5, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1679
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1711
    :cond_1
    :goto_2
    return v1

    .line 1670
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_2
    if-ne p1, v3, :cond_0

    .line 1671
    const/16 p1, 0x21

    goto :goto_0

    .line 1674
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1683
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1687
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    .line 1692
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_5
    if-ne p1, v4, :cond_7

    .line 1693
    const/16 p1, 0x42

    .line 1698
    :cond_6
    :goto_3
    if-nez p2, :cond_8

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v5, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1703
    .restart local v0       #nextFocus:Landroid/view/View;
    :goto_4
    if-eqz v0, :cond_1

    .line 1707
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1711
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2

    .line 1694
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_7
    if-ne p1, v3, :cond_6

    .line 1695
    const/16 p1, 0x11

    goto :goto_3

    .line 1698
    :cond_8
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_4
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 1910
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->onScrollChanged(IIII)V

    .line 1912
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mOnScrollChangedListener:Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mOnScrollChangedListener:Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;->onScrollChanged(IIII)V

    .line 1914
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1757
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->onSizeChanged(IIII)V

    .line 1759
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1760
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1763
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mBottom:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTop:I

    sub-int v1, v3, v4

    .line 1765
    .local v1, maxJump:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1767
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1768
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1769
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x3e8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 637
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    .line 638
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 640
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 644
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 645
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 647
    .local v6, y:F
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v7, :cond_6

    .line 648
    packed-switch v0, :pswitch_data_0

    .line 745
    :cond_1
    :goto_0
    return v10

    .line 654
    :pswitch_0
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2

    .line 655
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->abortAnimation()V

    .line 658
    :cond_2
    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionY:F

    .line 660
    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownY:F

    .line 661
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    iput v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginY:I

    goto :goto_0

    .line 664
    :pswitch_1
    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionY:F

    .line 666
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginY:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownY:F

    sub-float v8, v6, v8

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 668
    .local v3, newScrollY:I
    if-gez v3, :cond_3

    .line 669
    div-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v9, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto :goto_0

    .line 670
    :cond_3
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollY:I

    if-ge v7, v3, :cond_4

    .line 671
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollY:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollY:I

    sub-int v8, v3, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p0, v9, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto :goto_0

    .line 673
    :cond_4
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto :goto_0

    .line 679
    .end local v3           #newScrollY:I
    :pswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 680
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 681
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v1, v7

    .line 683
    .local v1, initialVelocity:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    if-le v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 685
    neg-int v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fling(I)V

    .line 690
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 691
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 692
    iput-object v11, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 687
    :cond_5
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fling(I)V

    goto :goto_1

    .line 697
    .end local v1           #initialVelocity:I
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_6
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 703
    :pswitch_3
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_7

    .line 704
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->abortAnimation()V

    .line 708
    :cond_7
    iput v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastMotionX:F

    .line 710
    iput v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownX:F

    .line 711
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iput v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginX:I

    goto/16 :goto_0

    .line 714
    :pswitch_4
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBeginX:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->motionDownX:F

    sub-float v8, v5, v8

    float-to-int v8, v8

    sub-int v2, v7, v8

    .line 716
    .local v2, newScrollX:I
    if-gez v2, :cond_8

    .line 717
    div-int/lit8 v7, v2, 0x2

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 718
    :cond_8
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollX:I

    if-ge v7, v2, :cond_9

    .line 719
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollX:I

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->boundaryScrollX:I

    sub-int v8, v2, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 721
    :cond_9
    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    goto/16 :goto_0

    .line 729
    .end local v2           #newScrollX:I
    :pswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 730
    .restart local v4       #velocityTracker:Landroid/view/VelocityTracker;
    invoke-virtual {v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 731
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v1, v7

    .line 733
    .restart local v1       #initialVelocity:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    if-le v7, v8, :cond_a

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_a

    .line 735
    neg-int v7, v1

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fling(I)V

    .line 740
    :goto_2
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_1

    .line 741
    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 742
    iput-object v11, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 737
    :cond_a
    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->fling(I)V

    goto :goto_2

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 697
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 981
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v6, :cond_3

    .line 982
    const/16 v6, 0x82

    if-ne p1, v6, :cond_1

    const/4 v1, 0x1

    .line 983
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v2

    .line 985
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 986
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 987
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 988
    .local v0, count:I
    if-lez v0, :cond_0

    .line 989
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 990
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 991
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1000
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1002
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollAndFocus(III)Z

    move-result v5

    .line 1026
    .end local v1           #down:Z
    .end local v2           #height:I
    :goto_2
    return v5

    :cond_1
    move v1, v5

    .line 982
    goto :goto_0

    .line 995
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v7

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 996
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_0

    .line 997
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 1005
    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v4

    .line 1007
    .local v4, width:I
    const/16 v6, 0x42

    if-ne p1, v6, :cond_5

    .line 1008
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1009
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildCount()I

    move-result v0

    .line 1010
    .restart local v0       #count:I
    if-lez v0, :cond_4

    .line 1011
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1012
    .restart local v3       #view:Landroid/view/View;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 1013
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1025
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1026
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v5, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollAndFocus(III)Z

    move-result v5

    goto :goto_2

    .line 1018
    :cond_5
    const/16 v6, 0x11

    if-ne p1, v6, :cond_4

    .line 1019
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1020
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_4

    .line 1021
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->left:I

    goto :goto_3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1643
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1644
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1645
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1651
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1652
    return-void

    .line 1648
    :cond_1
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1720
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1724
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mIsLayoutDirty:Z

    .line 1730
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;->requestLayout()V

    .line 1731
    return-void
.end method

.method protected scrollAndFocus(III)Z
    .locals 15
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1097
    iget v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v14, :cond_5

    .line 1098
    const/4 v8, 0x1

    .line 1100
    .local v8, handled:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getHeight()I

    move-result v10

    .line 1101
    .local v10, height:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollY()I

    move-result v5

    .line 1102
    .local v5, containerTop:I
    add-int v2, v5, v10

    .line 1103
    .local v2, containerBottom:I
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_2

    const/4 v12, 0x1

    .line 1105
    .local v12, up:Z
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v12, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v11

    .line 1106
    .local v11, newFocused:Landroid/view/View;
    if-nez v11, :cond_0

    .line 1107
    move-object v11, p0

    .line 1110
    :cond_0
    move/from16 v0, p2

    if-lt v0, v5, :cond_3

    move/from16 v0, p3

    if-gt v0, v2, :cond_3

    .line 1111
    const/4 v8, 0x0

    .line 1117
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v14

    if-eq v11, v14, :cond_1

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1118
    const/4 v14, 0x1

    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1119
    const/4 v14, 0x0

    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    :cond_1
    move v9, v8

    .line 1149
    .end local v2           #containerBottom:I
    .end local v5           #containerTop:I
    .end local v8           #handled:Z
    .end local v10           #height:I
    .end local v12           #up:Z
    .local v9, handled:Z
    :goto_2
    return v9

    .line 1103
    .end local v9           #handled:Z
    .end local v11           #newFocused:Landroid/view/View;
    .restart local v2       #containerBottom:I
    .restart local v5       #containerTop:I
    .restart local v8       #handled:Z
    .restart local v10       #height:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1113
    .restart local v11       #newFocused:Landroid/view/View;
    .restart local v12       #up:Z
    :cond_3
    if-eqz v12, :cond_4

    sub-int v6, p2, v5

    .line 1114
    .local v6, delta:I
    :goto_3
    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1113
    .end local v6           #delta:I
    :cond_4
    sub-int v6, p3, v2

    goto :goto_3

    .line 1125
    .end local v2           #containerBottom:I
    .end local v5           #containerTop:I
    .end local v8           #handled:Z
    .end local v10           #height:I
    .end local v11           #newFocused:Landroid/view/View;
    .end local v12           #up:Z
    :cond_5
    const/4 v8, 0x1

    .line 1127
    .restart local v8       #handled:Z
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getWidth()I

    move-result v13

    .line 1128
    .local v13, width:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->getScrollX()I

    move-result v3

    .line 1129
    .local v3, containerLeft:I
    add-int v4, v3, v13

    .line 1130
    .local v4, containerRight:I
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_8

    const/4 v7, 0x1

    .line 1132
    .local v7, focus_left:Z
    :goto_4
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v7, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v11

    .line 1133
    .restart local v11       #newFocused:Landroid/view/View;
    if-nez v11, :cond_6

    .line 1134
    move-object v11, p0

    .line 1137
    :cond_6
    move/from16 v0, p2

    if-lt v0, v3, :cond_9

    move/from16 v0, p3

    if-gt v0, v4, :cond_9

    .line 1138
    const/4 v8, 0x0

    .line 1144
    :goto_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->findFocus()Landroid/view/View;

    move-result-object v14

    if-eq v11, v14, :cond_7

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1145
    const/4 v14, 0x1

    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    .line 1146
    const/4 v14, 0x0

    iput-boolean v14, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollViewMovedFocus:Z

    :cond_7
    move v9, v8

    .line 1149
    .end local v8           #handled:Z
    .restart local v9       #handled:Z
    goto :goto_2

    .line 1130
    .end local v7           #focus_left:Z
    .end local v9           #handled:Z
    .end local v11           #newFocused:Landroid/view/View;
    .restart local v8       #handled:Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 1140
    .restart local v7       #focus_left:Z
    .restart local v11       #newFocused:Landroid/view/View;
    :cond_9
    if-eqz v7, :cond_a

    sub-int v6, p2, v3

    .line 1141
    .restart local v6       #delta:I
    :goto_6
    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->doScrollX(I)V

    goto :goto_5

    .line 1140
    .end local v6           #delta:I
    :cond_a
    sub-int v6, p3, v4

    goto :goto_6
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1856
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    if-eq p2, v2, :cond_1

    .line 1857
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    .line 1858
    .local v0, oldX:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    .line 1859
    .local v1, oldY:I
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    .line 1860
    iput p2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    .line 1861
    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->onScrollChanged(IIII)V

    .line 1863
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->invalidate()V

    .line 1865
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method protected scrollToChild(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 1453
    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v1, :cond_1

    .line 1454
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1457
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1459
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1461
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {p0, v2, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1466
    .end local v0           #scrollDelta:I
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1469
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1471
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1473
    .restart local v0       #scrollDelta:I
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p0, v0, v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method protected scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 5
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1490
    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    if-nez v4, :cond_3

    .line 1491
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1492
    .local v0, delta:I
    if-eqz v0, :cond_1

    .line 1493
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1494
    if-eqz p2, :cond_2

    .line 1495
    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    move v2, v1

    .line 1512
    .end local v1           #scroll:Z
    .local v2, scroll:I
    :goto_2
    return v2

    .end local v2           #scroll:I
    :cond_1
    move v1, v3

    .line 1492
    goto :goto_0

    .line 1497
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1503
    .end local v0           #delta:I
    .end local v1           #scroll:Z
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1504
    .restart local v0       #delta:I
    if-eqz v0, :cond_5

    .line 1505
    .restart local v1       #scroll:Z
    :goto_3
    if-eqz v1, :cond_4

    .line 1506
    if-eqz p2, :cond_6

    .line 1507
    invoke-virtual {p0, v0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    :cond_4
    :goto_4
    move v2, v1

    .line 1512
    .restart local v2       #scroll:I
    goto :goto_2

    .end local v1           #scroll:Z
    .end local v2           #scroll:I
    :cond_5
    move v1, v3

    .line 1504
    goto :goto_3

    .line 1509
    .restart local v1       #scroll:Z
    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->smoothScrollBy(II)V

    goto :goto_4
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 352
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mFillViewport:Z

    .line 353
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->requestLayout()V

    .line 355
    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mOnScrollChangedListener:Lcom/htc/android/htcime/ezsip/common/GeneralScrollView$onScrollChangedListener;

    .line 1927
    return-void
.end method

.method public setScrollOrientation(I)V
    .locals 1
    .parameter "scrollOrientation"

    .prologue
    const/4 v0, 0x0

    .line 181
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollOrientation:I

    .line 182
    invoke-virtual {p0, v0, v0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollTo(II)V

    .line 183
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mSmoothScrollingEnabled:Z

    .line 370
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1334
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1335
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    iget v4, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->startScroll(IIII)V

    .line 1337
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->invalidate()V

    .line 1344
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mLastScroll:J

    .line 1345
    return-void

    .line 1339
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1340
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScroller:Lcom/htc/android/htcime/ezsip/common/GeneralScroller;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/GeneralScroller;->abortAnimation()V

    .line 1342
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1354
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->smoothScrollBy(II)V

    .line 1355
    return-void
.end method
