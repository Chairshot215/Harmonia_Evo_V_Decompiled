.class public Lcom/htc/widget/BouncingGridView;
.super Lcom/htc/widget/HtcGridViewCore;
.source "BouncingGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_OVER_BOUNDARY_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BouncingGridView"

.field private static localLOGV:Z


# instance fields
.field private mAutoRelayoutOnActionCancel:Z

.field protected mBouncingEnabled:Z

.field private mChildrenTotalHeight:I

.field private final mDeceleration:F

.field private mEnableScrollOverBottomBoundary:Z

.field private mEnableScrollOverTopBoundary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcGridViewCore;-><init>(Landroid/content/Context;)V

    .line 26
    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    .line 28
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    .line 30
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    .line 37
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mAutoRelayoutOnActionCancel:Z

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 79
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mDeceleration:F

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcGridViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    .line 28
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    .line 30
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    .line 37
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mAutoRelayoutOnActionCancel:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 70
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mDeceleration:F

    .line 74
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

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcGridViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    .line 28
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    .line 30
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    .line 37
    iput-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mAutoRelayoutOnActionCancel:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 61
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mDeceleration:F

    .line 65
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/BouncingGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/BouncingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/BouncingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/BouncingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/BouncingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/BouncingGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    return v0
.end method

.method private disableScrollOverBoundary()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingGridView;->enableScrollOverTopBoundary(Z)V

    .line 533
    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingGridView;->enableScrollOverBottomBoundary(Z)V

    .line 534
    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const v10, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 435
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 437
    .local v4, y:I
    iget v5, p0, Lcom/htc/widget/BouncingGridView;->mMotionY:I

    if-le v5, v4, :cond_5

    iget-boolean v5, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    if-eqz v5, :cond_5

    .line 438
    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->enableScrollOverTopBoundary(Z)V

    .line 482
    .end local v4           #y:I
    :cond_0
    :goto_0
    if-ne v0, v9, :cond_1

    .line 483
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 485
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 486
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 487
    sget-boolean v5, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v5, :cond_2

    const-string v5, "BouncingGridView"

    const-string v6, "dispatchTouchEvent(ACTION_CANCEL)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isAutoRelayoutOnActionCancel()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 489
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->requestLayout()V

    .line 493
    :cond_4
    invoke-super {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 439
    .restart local v4       #y:I
    :cond_5
    iget v5, p0, Lcom/htc/widget/BouncingGridView;->mMotionY:I

    if-ge v5, v4, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v5, :cond_0

    .line 440
    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->enableScrollOverBottomBoundary(Z)V

    goto :goto_0

    .line 442
    .end local v4           #y:I
    :cond_6
    if-nez v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 446
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_a

    .line 448
    iget-object v5, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 449
    .local v2, spaceAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 451
    .local v3, spaceBelow:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getFirstVisiblePosition()I

    move-result v5

    if-nez v5, :cond_7

    if-gtz v2, :cond_7

    .line 452
    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingGridView;->enableScrollOverTopBoundary(Z)V

    .line 454
    :cond_7
    sget-boolean v5, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v5, :cond_8

    const-string v5, "BouncingGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEnableScrollOverTopBoundary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spaceAbove = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_9

    if-gtz v3, :cond_9

    .line 456
    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingGridView;->enableScrollOverBottomBoundary(Z)V

    .line 458
    :cond_9
    sget-boolean v5, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v5, :cond_a

    const-string v5, "BouncingGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEnableScrollOverBottomBoundary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", spaceBelow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v2           #spaceAbove:I
    .end local v3           #spaceBelow:I
    :cond_a
    iget v5, p0, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    if-eqz v5, :cond_c

    .line 461
    iput v10, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    .line 477
    :goto_1
    sget-boolean v5, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v5, :cond_b

    .line 478
    const-string v5, "BouncingGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChildrenTotalHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", childrenCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_b
    sget-boolean v5, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "BouncingGridView"

    const-string v6, "dispatchTouchEvent(ACTION_DOWN)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 463
    :cond_c
    const/4 v1, 0x0

    .line 464
    .local v1, childrenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_d

    .line 465
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    .line 468
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 470
    iput v1, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    goto :goto_1

    .line 472
    :cond_e
    iput v10, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    goto :goto_1
.end method

.method private doTrackMotionScrollWithConstrain(II)Z
    .locals 2
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 112
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcGridViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcGridViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcGridViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method

.method private getEstimateDistance(F)I
    .locals 11
    .parameter "initialVelocity"

    .prologue
    .line 207
    sget-boolean v8, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v8, :cond_0

    const-string v8, "BouncingGridView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialVelocity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, largestRowHeight:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 211
    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 212
    .local v0, childHeight:I
    if-le v0, v5, :cond_1

    .line 213
    move v5, v0

    .line 210
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    .end local v0           #childHeight:I
    :cond_2
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getNumColumns()I

    move-result v9

    div-int v2, v8, v9

    .line 218
    .local v2, firstRowPosition:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v3

    .line 219
    .local v3, firstRowTop:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getVerticalSpacing()I

    move-result v8

    add-int/2addr v8, v5

    mul-int/2addr v8, v2

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    .line 233
    .end local v2           #firstRowPosition:I
    .end local v3           #firstRowTop:I
    .end local v4           #i:I
    .end local v5           #largestRowHeight:I
    :goto_1
    return v1

    .line 223
    .restart local v4       #i:I
    .restart local v5       #largestRowHeight:I
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getLastVisiblePosition()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getNumColumns()I

    move-result v9

    div-int v7, v8, v9

    .line 224
    .local v7, lastRowPosition:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    .line 226
    .local v6, lastChildBottom:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getNumColumns()I

    move-result v9

    div-int/2addr v8, v9

    sub-int/2addr v8, v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getVerticalSpacing()I

    move-result v9

    add-int/2addr v9, v5

    mul-int/2addr v8, v9

    add-int v1, v8, v6

    .line 227
    .local v1, estimateDistance:I
    goto :goto_1

    .line 233
    .end local v1           #estimateDistance:I
    .end local v4           #i:I
    .end local v5           #largestRowHeight:I
    .end local v6           #lastChildBottom:I
    .end local v7           #lastRowPosition:I
    :cond_4
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method private getTotalDistance(F)I
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 197
    mul-float v0, p1, p1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/widget/BouncingGridView;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingGridView;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 430
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected enableScrollOverBottomBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 527
    sget-boolean v0, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOberBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    .line 529
    return-void
.end method

.method protected enableScrollOverTopBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 522
    sget-boolean v0, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOberBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    .line 524
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->enableStopScrollNow()Z

    move-result v0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->getBottomBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingGridView;)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0
.end method

.method getTopBoundary()I
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mEnableScrollOverTopBoundary:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->getTopBoundary()I

    move-result v0

    goto :goto_0
.end method

.method public isAutoRelayoutOnActionCancel()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mAutoRelayoutOnActionCancel:Z

    return v0
.end method

.method protected isOverBottonBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/BouncingGridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isOverTopBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingGridView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFling(I)V
    .locals 5
    .parameter "initialVelocity"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->onUp()V

    .line 194
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v2, :cond_2

    .line 176
    new-instance v2, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    invoke-direct {v2, p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingGridView;)V

    iput-object v2, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 178
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/BouncingGridView;->reportScrollStateChange(I)V

    .line 179
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 180
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingGridView;->getTotalDistance(F)I

    move-result v1

    .line 181
    .local v1, totalDistance:I
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingGridView;->getEstimateDistance(F)I

    move-result v0

    .line 182
    .local v0, estimateDistance:I
    if-le v1, v0, :cond_4

    .line 183
    if-gtz p1, :cond_3

    .line 184
    iget-object v2, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    neg-int v3, v0

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 192
    .end local v0           #estimateDistance:I
    .end local v1           #totalDistance:I
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 545
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isAutoRelayoutOnActionCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->requestLayout()V

    .line 547
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->onFocusLost()V

    .line 548
    return-void
.end method

.method public onResumeRequestLayout()V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->requestLayout()V

    .line 51
    :cond_1
    return-void
.end method

.method onScrollToBoundary()V
    .locals 2

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->onScrollToBoundary()V

    .line 505
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/BouncingGridView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 507
    sget-boolean v0, Lcom/htc/widget/BouncingGridView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "BouncingGridView"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->onScrollToBoundary()V

    goto :goto_0
.end method

.method protected onUp()V
    .locals 6

    .prologue
    .line 140
    iget-boolean v3, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-nez v3, :cond_0

    .line 141
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->onUp()V

    .line 166
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-nez v3, :cond_1

    .line 145
    new-instance v3, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    invoke-direct {v3, p0}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingGridView;)V

    iput-object v3, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverTopBoundary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->isOverBottonBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v4

    sub-int v0, v3, v4

    .line 155
    .local v0, distanceToBottom:I
    iget v3, p0, Lcom/htc/widget/BouncingGridView;->mChildrenTotalHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/BouncingGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingGridView;->getTopBorderHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 158
    .local v1, distanceToTop:I
    if-ge v1, v0, :cond_3

    move v2, v1

    .line 160
    .local v2, scrollDistance:I
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/BouncingGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/htc/widget/BouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v2           #scrollDistance:I
    :cond_3
    move v2, v0

    .line 158
    goto :goto_1

    .line 163
    .end local v0           #distanceToBottom:I
    .end local v1           #distanceToTop:I
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 164
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->onUp()V

    goto/16 :goto_0
.end method

.method resurrectSelection()Z
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 539
    invoke-super {p0}, Lcom/htc/widget/HtcGridViewCore;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setAutoRelayoutOnActionCancel(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/widget/BouncingGridView;->mAutoRelayoutOnActionCancel:Z

    .line 41
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    .line 56
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/htc/widget/BouncingGridView;->disableScrollOverBoundary()V

    .line 518
    invoke-super {p0, p1}, Lcom/htc/widget/HtcGridViewCore;->setSelection(I)V

    .line 519
    return-void
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/widget/BouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingGridView;->doTrackMotionScrollWithConstrain(II)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcGridViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method
