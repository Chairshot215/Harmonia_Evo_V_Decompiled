.class public Lcom/htc/android/worldclock/widget/TouchInterceptor;
.super Lcom/htc/widget/HtcListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;,
        Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;,
        Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1


# instance fields
.field mColorFirst:Landroid/content/res/ColorStateList;

.field mColorSecond:Landroid/content/res/ColorStateList;

.field mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private final mItemHeight:I

.field private final mItemHeight_D:I

.field private mLimit:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveMode:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 61
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveMode:I

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTouchSlop:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLimit:I

    .line 70
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight_D:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mColorFirst:Landroid/content/res/ColorStateList;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mColorSecond:Landroid/content/res/ColorStateList;

    .line 73
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/widget/TouchInterceptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/widget/TouchInterceptor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/widget/TouchInterceptor;)Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/widget/TouchInterceptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 209
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 210
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 211
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mUpperBound:I

    .line 213
    :cond_0
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 214
    iget v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLowerBound:I

    .line 216
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 266
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 267
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 268
    .local v0, childnum:I
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    if-le v8, v9, :cond_0

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 272
    :cond_0
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 275
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 276
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 305
    return-void

    .line 279
    :cond_1
    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    .line 280
    .local v2, height:I
    const/4 v6, 0x0

    .line 281
    .local v6, visibility:I
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 283
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    if-ne v8, v9, :cond_4

    .line 285
    const/4 v6, 0x4

    .line 295
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 296
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    const v8, 0x7f0b0046

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 300
    .local v4, myItemGroup:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 301
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    sub-int v8, v2, v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v4, v10, v8, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 303
    :cond_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    .end local v4           #myItemGroup:Landroid/view/View;
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 290
    :cond_5
    if-ne v3, v0, :cond_2

    .line 291
    iget v8, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 292
    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight_D:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 425
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 426
    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 427
    const/high16 v0, 0x3f80

    .line 428
    .local v0, alpha:F
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 429
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 430
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 432
    :cond_0
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 434
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 435
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 195
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 196
    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 197
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 198
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 199
    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    if-gez v0, :cond_0

    .line 203
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 183
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 184
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 185
    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 191
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 184
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 191
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 383
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 384
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 385
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 386
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 387
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 389
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 390
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 391
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 395
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 396
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 398
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 399
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 405
    iput-object v5, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 408
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 410
    .local v0, v:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 414
    iput-object v5, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 416
    :cond_1
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 418
    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->setBouncingEnabled(Z)V

    .line 420
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iput-object v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 422
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 440
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 441
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 447
    iput-object v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    iput-object v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 454
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->setBouncingEnabled(Z)V

    .line 456
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 8
    .parameter "deletion"

    .prologue
    const/4 v7, 0x0

    .line 222
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 223
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v3

    .line 226
    .local v3, position:I
    invoke-virtual {p0, v7}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 227
    .local v5, y:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    invoke-virtual {p0, v3, v5}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->setSelectionFromTop(II)V

    .line 231
    .end local v3           #position:I
    .end local v5           #y:I
    :cond_0
    const/4 v0, 0x0

    .line 232
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 233
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->layoutChildren()V

    .line 235
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 236
    if-nez v4, :cond_1

    .line 250
    return-void

    .line 240
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 241
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v6, 0x7f0b0046

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 246
    .local v1, myItemGroup:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 79
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v15, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveMode:I

    if-nez v15, :cond_0

    .line 81
    new-instance v15, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v16

    new-instance v17, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;

    invoke-direct/range {v17 .. v18}, Lcom/htc/android/worldclock/widget/TouchInterceptor$1;-><init>(Lcom/htc/android/worldclock/widget/TouchInterceptor;)V

    invoke-direct/range {v15 .. v17}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

    if-eqz v15, :cond_2

    .line 106
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 173
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    :goto_1
    return v15

    .line 108
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 109
    .local v13, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 110
    .local v14, y:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->pointToPosition(II)I

    move-result v8

    .line 111
    .local v8, itemnum:I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_2

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v15

    sub-int v15, v8, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 115
    .local v7, item:Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v15

    sub-int v15, v14, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPoint:I

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v15, v15

    sub-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mCoordOffset:I

    .line 117
    const v15, 0x7f0b0081

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 120
    .local v4, dragger:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 121
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 123
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLimit:I

    if-le v13, v15, :cond_8

    .line 125
    const v15, 0x7f0b007f

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 126
    .local v10, tv1:Landroid/widget/TextView;
    const v15, 0x7f0b0080

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 127
    .local v11, tv2:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 128
    .local v2, clr1:Landroid/content/res/ColorStateList;
    invoke-virtual {v11}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 129
    .local v3, clr2:Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 130
    .local v5, dw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 132
    .local v6, dw2:Landroid/graphics/drawable/Drawable;
    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v16, 0x30

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 134
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 138
    .local v12, v:Landroid/view/View;
    :goto_2
    if-eqz v12, :cond_5

    .line 139
    sget-boolean v15, Lcom/htc/android/worldclock/Global;->HTC_SENSE_20_FLAG:Z

    if-nez v15, :cond_4

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 140
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/htc/android/worldclock/ResUtils;->get_common_rearrange_press(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getListSelectorPressed()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_5
    :goto_3
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 148
    const/4 v15, -0x1

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    const/4 v15, -0x1

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 152
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-static {v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 155
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 162
    move-object/from16 v0, p0

    iput v8, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    .line 163
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    .line 165
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTouchSlop:I

    sub-int v15, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mUpperBound:I

    .line 166
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTouchSlop:I

    add-int/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    div-int/lit8 v16, v16, 0x3

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLowerBound:I

    .line 167
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 136
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #v:Landroid/view/View;
    :cond_6
    move-object v12, v7

    .restart local v12       #v:Landroid/view/View;
    goto/16 :goto_2

    .line 143
    :cond_7
    invoke-virtual {v12, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 169
    .end local v2           #clr1:Landroid/content/res/ColorStateList;
    .end local v3           #clr2:Landroid/content/res/ColorStateList;
    .end local v5           #dw:Landroid/graphics/drawable/Drawable;
    .end local v6           #dw2:Landroid/graphics/drawable/Drawable;
    .end local v10           #tv1:Landroid/widget/TextView;
    .end local v11           #tv2:Landroid/widget/TextView;
    .end local v12           #v:Landroid/view/View;
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 309
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 310
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_0

    .line 311
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 313
    :cond_0
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

    if-eqz v10, :cond_e

    :cond_1
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v10, :cond_e

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 315
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 374
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v9

    .line 318
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 319
    .local v3, r:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 320
    invoke-direct {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->stopDragging()V

    .line 321
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveMode:I

    if-ne v10, v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 322
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    if-eqz v10, :cond_3

    .line 323
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    iget v11, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    invoke-interface {v10, v11}, Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;->remove(I)V

    .line 325
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 327
    :cond_4
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    if-ltz v10, :cond_5

    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 328
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

    iget v11, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mFirstDragPos:I

    iget v12, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v12}, Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;->drop(II)V

    .line 330
    :cond_5
    invoke-direct {p0, v9}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 336
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v7, v10

    .line 337
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v8, v10

    .line 338
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->dragView(II)V

    .line 339
    invoke-direct {p0, v8}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 340
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 341
    if-eqz v0, :cond_6

    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    if-eq v1, v10, :cond_8

    .line 342
    :cond_6
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

    if-eqz v10, :cond_7

    .line 343
    iget-object v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

    iget v11, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v1}, Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;->drag(II)V

    .line 345
    :cond_7
    iput v1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragPos:I

    .line 346
    invoke-direct {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->doExpansion()V

    .line 348
    :cond_8
    const/4 v5, 0x0

    .line 349
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->adjustScrollBounds(I)V

    .line 350
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLowerBound:I

    if-le v8, v10, :cond_c

    .line 352
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    iget v11, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLowerBound:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    if-le v8, v10, :cond_b

    const/16 v5, 0x18

    .line 357
    :cond_9
    :goto_1
    if-eqz v5, :cond_2

    .line 358
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0, v12, v10}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 359
    .local v4, ref:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_a

    .line 361
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mItemHeight:I

    add-int/2addr v10, v11

    invoke-virtual {p0, v12, v10}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 363
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 364
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 365
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 366
    .local v2, pos:I
    sub-int v10, v2, v5

    invoke-virtual {p0, v4, v10}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 352
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_b
    const/4 v5, 0x6

    goto :goto_1

    .line 353
    :cond_c
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mUpperBound:I

    if-ge v8, v10, :cond_9

    .line 355
    iget v10, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_d

    const/16 v5, -0xc

    :goto_2
    goto :goto_1

    :cond_d
    const/4 v5, -0x3

    goto :goto_2

    .line 374
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_e
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetLayout()V
    .locals 2

    .prologue
    .line 378
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 379
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mLimit:I

    .line 380
    return-void
.end method

.method public setDragListener(Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 459
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 460
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDragListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DragListener;

    .line 461
    return-void
.end method

.method public setDropListener(Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 464
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 465
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mDropListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$DropListener;

    .line 466
    return-void
.end method

.method public setRemoveListener(Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 469
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 470
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/TouchInterceptor;->mRemoveListener:Lcom/htc/android/worldclock/widget/TouchInterceptor$RemoveListener;

    .line 471
    return-void
.end method
